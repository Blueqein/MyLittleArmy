package Game.System.Spell
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
      
      private var statSpell:* = new SPELLStat();
      
      private var atkDamage:* = new ATKDamageStat();
      
      private var type:String = "ally";
      
      private var friction:Number = 1.02;
      
      private var gravity:Number = 0.3;
      
      private var vx:Number = 0;
      
      private var vy:Number = 0;
      
      private var vr:Number = 0;
      
      private var lifeSpan:int = 120;
      
      public function Arrow()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.groundHandle);
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
      }
      
      public function init(_mGF:*, _bSys:*, _type:*, _LEVEL:int = 1, _X:int = 0) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contEFFECT;
         this.bSys = _bSys;
         this.type = _type;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = _X - 100 - this.bSys.bgMgr.getPointY(this.x);
         this.y = -50 - Math.random() * 100;
         this.vx = 10 + Math.random() * 10;
         this.vy = 10 + Math.random() * 10;
         this.lifeSpan = (20 + Math.random() * 20) * 24;
         this.statSpell.setByName("arrow");
         this.statSpell.setLevel(_LEVEL);
         this.atkDamage.power = this.statSpell.power;
         this.atkDamage.element = this.statSpell.getElementName();
         this.atkDamage.timerActive = this.statSpell.timerActive;
         this.atkDamage.addStun = this.statSpell.addStun;
         this.atkDamage.addCritical = this.statSpell.addCritical;
         this.atkDamage.addFreeze = this.statSpell.addFreeze;
         this.atkDamage.addFly = this.statSpell.addFly;
         this.atkDamage.addPoison = this.statSpell.addPoison;
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function ground() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.addEventListener(Event.ENTER_FRAME,this.groundHandle,false,0,true);
         this.lifeSpan = 50 + Math.random() * 50;
         this.y = this.bSys.bgMgr.getPointY(this.x);
      }
      
      private function groundHandle(event:Event) : void
      {
         if(this.mGF.isPaused)
         {
            return;
         }
         this.lifeSpan = Math.max(this.lifeSpan - 1,0);
         if(this.lifeSpan <= 0)
         {
            this.destroy();
         }
      }
      
      private function frameHandle(event:Event) : void
      {
         var child:* = undefined;
         var i:* = undefined;
         if(this.mGF.isPaused)
         {
            return;
         }
         if(this.y > this.bSys.bgMgr.getPointY(this.x) - 20)
         {
            this.ground();
            return;
         }
         this.vx *= this.friction;
         this.vy *= this.friction;
         this.x += this.vx;
         this.y += this.vy;
         this.rotation = Math.atan2(this.vy,this.vx) * 180 / Math.PI;
         var numChildren:int = int(this.mGF.contUNIT.numChildren);
         for(i = 0; i < numChildren; i++)
         {
            child = this.mGF.contUNIT.getChildAt(i);
            if(Boolean(child.isEnableHit(this.type)) && child.chrClass.isHero == false)
            {
               if(this.hitBox.hitTestObject(child.bodyBox))
               {
                  child.hitCalculate(this.atkDamage);
                  this.destroy();
                  return;
               }
            }
         }
      }
   }
}

