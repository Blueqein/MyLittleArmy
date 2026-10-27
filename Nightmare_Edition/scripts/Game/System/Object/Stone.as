package Game.System.Object
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class Stone extends MovieClip
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
      
      private var hit:int = 0;
      
      private var hitDelay:int = 0;
      
      private var hitMax:* = 2;
      
      public function Stone()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("stone destroy !!=");
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
         this.gotoAndPlay(1);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function frameHandle(event:Event) : void
      {
         var numChildren:int = 0;
         var child:* = undefined;
         var i:* = undefined;
         if(this.mGF.isPaused)
         {
            return;
         }
         if(this.hit < this.hitMax && this.y > this.bSys.bgMgr.getPointY(this.x))
         {
            if(this.hitDelay <= 0)
            {
               ++this.hit;
               this.hitDelay = 5;
               this.vx *= 0.8;
               this.vy = -Math.abs(this.vy * 0.8);
               if(this.hit >= this.hitMax)
               {
                  this.vy *= 0.5;
               }
               this.vr *= 0.8;
               this.y = this.bSys.bgMgr.getPointY(this.x);
            }
            else
            {
               this.hit = 3;
            }
         }
         else
         {
            if(this.y < 0 || this.y > 525 || this.x > this.mGF.areaWidth || this.x < 0)
            {
               this.destroy();
               return;
            }
            this.rotation += this.vr;
            this.x += this.vx;
            this.y += this.vy;
            this.vx *= this.friction;
            this.vy += this.gravity;
         }
         this.hitDelay = Math.max(this.hitDelay - 1,0);
         if(this.hit < this.hitMax && this.hitDelay <= 0)
         {
            numChildren = int(this.mGF.contUNIT.numChildren);
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
                        ++this.hit;
                        this.hitDelay = 30;
                        this.vx *= 0.8;
                        this.vy = -Math.abs(this.vy * 0.8);
                        this.vr *= 0.8;
                        this.mGF.soundMgr.playSoundEffect(this.atkDamage.soundHit);
                        break;
                     }
                  }
               }
            }
         }
      }
   }
}

