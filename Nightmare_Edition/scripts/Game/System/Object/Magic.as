package Game.System.Object
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class Magic extends MovieClip
   {
      
      public var hitBox:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      private var atkDamage:* = new ATKDamageStat();
      
      private var type:String = "ally";
      
      private var vx:Number = 0;
      
      private var vy:Number = 0;
      
      private var speed:Number = 10;
      
      private var timeOut:int = 240;
      
      public function Magic()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
      }
      
      public function init(_mGF:*, _bSys:*, _type:*, _atkDamage:*, _X:int = 0, _Y:int = 0, _TX:int = 0, _TY:int = 0, _SCALE:Number = 0.25) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contEFFECT;
         this.bSys = _bSys;
         this.type = _type;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = _X;
         this.y = _Y;
         this.scaleX = this.scaleY = _SCALE;
         this.atkDamage = _atkDamage;
         var dx:Number = _TX - _X;
         var dy:Number = _TY - _Y;
         this.speed = 8;
         var angle:Number = Math.atan2(dy,dx);
         this.vx = Math.cos(angle) * this.speed;
         this.vy = Math.sin(angle) * this.speed;
         this.gotoAndPlay("shoot");
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function frameHandle(event:Event) : void
      {
         var numChildren:int = 0;
         var child:* = undefined;
         var i:* = undefined;
         var totalDmg:int = 0;
         if(this.mGF.isPaused)
         {
            return;
         }
         this.timeOut = Math.max(this.timeOut - 1,0);
         if(this.timeOut <= 0 || this.y < 0 || this.y > this.bSys.bgMgr.getPointY(this.x) || this.x > this.mGF.areaWidth || this.x < 0)
         {
            if(this.currentLabel != "explode")
            {
               this.gotoAndPlay("explode");
            }
         }
         else if(this.currentLabel == "shoot")
         {
            this.rotation = Math.atan2(this.vy,this.vx) * 180 / Math.PI;
            this.x += this.vx;
            this.y += this.vy;
            numChildren = int(this.mGF.contUNIT.numChildren);
            totalDmg = 0;
            for(i = 0; i < numChildren; i++)
            {
               child = this.mGF.contUNIT.getChildAt(i);
               if(this != child)
               {
                  if(child.isEnableHit(this.type))
                  {
                     if(this.hitBox.hitTestObject(child.bodyBox))
                     {
                        totalDmg += child.hitCalculate(this.atkDamage);
                        if(Math.random() < this.atkDamage.addMini)
                        {
                           child.hitEffect("mini",1,360);
                        }
                        if(Math.random() < this.atkDamage.addSlow)
                        {
                           child.hitEffect("slow",1,360);
                        }
                        if(Math.random() < this.atkDamage.addStop)
                        {
                           child.hitEffect("stop",1,360);
                        }
                        this.mGF.soundMgr.playSoundEffect(this.atkDamage.soundHit);
                        this.gotoAndPlay("explode");
                        return;
                     }
                  }
               }
            }
         }
         if(this.currentFrame == this.totalFrames)
         {
            this.destroy();
         }
      }
   }
}

