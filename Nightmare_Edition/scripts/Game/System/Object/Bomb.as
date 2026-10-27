package Game.System.Object
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class Bomb extends MovieClip
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
      
      public function Bomb()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("arro destroy !!=");
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
         this.speed = 8 + Math.random() * 6;
         var angle:Number = Math.atan2(dy,dx);
         this.vx = Math.cos(angle) * this.speed;
         this.vy = Math.sin(angle) * this.speed;
         this.vr = 10 + Math.random() * 10;
         if(this.vx < 0)
         {
            this.vr = -this.vr;
         }
         this.gotoAndPlay("shoot");
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function isHitTest() : Boolean
      {
         var child:* = undefined;
         var i:* = undefined;
         var numChildren:int = int(this.mGF.contUNIT.numChildren);
         for(i = 0; i < numChildren; i++)
         {
            child = this.mGF.contUNIT.getChildAt(i);
            if(this != child)
            {
               if(child.isEnableHit(this.type))
               {
                  if(this.hitBox.hitTestObject(child.bodyBox))
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      private function frameHandle(event:Event) : void
      {
         var comboGroupHitMax:int = 0;
         var numChildren:int = 0;
         var child:* = undefined;
         var i:* = undefined;
         var totalHit:int = 0;
         if(this.mGF.isPaused)
         {
            return;
         }
         if(this.currentLabel == "shoot")
         {
            if(this.isHitTest())
            {
               this.gotoAndPlay("explode");
            }
            else if(this.y < 0 || this.y > this.bSys.bgMgr.getPointY(this.x) || this.x > this.mGF.areaWidth || this.x < 0)
            {
               if(this.y <= this.bSys.bgMgr.getPointY(this.x))
               {
                  this.destroy();
                  return;
               }
               this.gotoAndPlay("explode");
               this.rotation = 0;
               this.y = this.bSys.bgMgr.getPointY(this.x);
            }
            else
            {
               this.rotation += this.vr;
               this.x += this.vx;
               this.y += this.vy;
               this.vx *= this.friction;
               this.vy += this.gravity;
            }
         }
         if(this.currentLabel == "explode")
         {
            if(this.currentFrame == 13)
            {
               comboGroupHitMax = 3;
               numChildren = int(this.mGF.contUNIT.numChildren);
               totalHit = 0;
               for(i = 0; i < numChildren; i++)
               {
                  child = this.mGF.contUNIT.getChildAt(i);
                  if(this != child)
                  {
                     if(child.isEnableHit(this.type))
                     {
                        if(this.hitBox.hitTestObject(child.bodyBox))
                        {
                           child.hitCalculate(this.atkDamage);
                           if(++totalHit >= comboGroupHitMax)
                           {
                              break;
                           }
                        }
                     }
                  }
               }
               if(totalHit > 0)
               {
                  this.mGF.soundMgr.playSoundEffect(this.atkDamage.soundHit);
               }
            }
         }
         if(this.currentFrame >= this.totalFrames)
         {
            this.destroy();
         }
      }
   }
}

