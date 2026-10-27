package Game.System.Object
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class Arrow extends Sprite
   {
      
      public var hitBox:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      private var atkDamage:* = new ATKDamageStat();
      
      private var type:String = "ally";
      
      private var vx:Number = 0;
      
      private var vy:Number = 0;
      
      private var vr:Number = 0;
      
      private var speed:Number = 10;
      
      private var friction:Number = 0.98;
      
      private var gravity:Number = 0.3;
      
      private var isDeflect:Boolean = false;
      
      public function Arrow()
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
         this.speed = 8 + Math.abs(dx / 20);
         var angle:Number = Math.atan2(dy,dx);
         this.vx = Math.cos(angle) * this.speed;
         this.vy = Math.sin(angle) * this.speed;
         this.isDeflect = false;
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
         if(this.isDeflect)
         {
            if(this.y >= 525)
            {
               this.destroy();
               return;
            }
            this.vx *= this.friction;
            this.vy += this.gravity;
            this.x += this.vx;
            this.y += this.vy;
            this.rotation += this.vr;
         }
         else
         {
            if(this.y < 0 || this.y > this.bSys.bgMgr.getPointY(this.x) || this.x > this.mGF.areaWidth || this.x < 0)
            {
               if(this.y > this.bSys.bgMgr.getPointY(this.x))
               {
                  this.isDeflect = true;
                  if(Math.random() < 0.5)
                  {
                     this.vr = 10 + Math.random() * 10;
                  }
                  else
                  {
                     this.vr = (10 + Math.random() * 10) * -1;
                  }
                  this.vy = -4 + Math.random() * -4;
                  this.vx = -2 + Math.random() * 4;
               }
               else
               {
                  this.destroy();
               }
               return;
            }
            this.rotation = Math.atan2(this.vy,this.vx) * 180 / Math.PI;
            this.x += this.vx;
            this.y += this.vy;
            this.vx *= this.friction;
            this.vy += this.gravity;
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
                        this.destroy();
                        return;
                     }
                  }
               }
            }
         }
      }
   }
}

