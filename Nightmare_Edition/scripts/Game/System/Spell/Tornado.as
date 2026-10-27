package Game.System.Spell
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class Tornado extends MovieClip
   {
      
      public var hitBox:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      private var statSpell:* = new SPELLStat();
      
      private var atkDamage:* = new ATKDamageStat();
      
      private var type:String = "ally";
      
      private var vx:Number = 0;
      
      private var lifeSpan:int = 120;
      
      public function Tornado()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("tornado destroy !!=");
      }
      
      public function init(_mGF:*, _bSys:*, _type:String = "ally", _LEVEL:int = 1, _X:int = 0) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contEFFECT;
         this.bSys = _bSys;
         this.type = _type;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = _X;
         this.y = this.bSys.bgMgr.getPointY(this.x);
         this.scaleX = 0;
         this.statSpell.setByName("tornado");
         this.statSpell.setLevel(_LEVEL);
         this.atkDamage.power = this.statSpell.power;
         this.atkDamage.element = this.statSpell.getElementName();
         this.atkDamage.timerActive = this.statSpell.timerActive;
         this.atkDamage.addStun = this.statSpell.addStun;
         this.atkDamage.addCritical = this.statSpell.addCritical;
         this.atkDamage.addFreeze = this.statSpell.addFreeze;
         this.atkDamage.addFly = this.statSpell.addFly;
         this.atkDamage.addPoison = this.statSpell.addPoison;
         if(this.type == "ally")
         {
            this.vx = 5;
         }
         else
         {
            this.vx = -5;
         }
         this.gotoAndPlay(1);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
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
         if(this.lifeSpan > 0 && this.scaleX >= 1)
         {
            if(this.currentFrame == 1 || this.currentFrame == 7)
            {
               comboGroupHitMax = 3;
               numChildren = int(this.mGF.contUNIT.numChildren);
               totalHit = 0;
               for(i = 0; i < numChildren; i++)
               {
                  child = this.mGF.contUNIT.getChildAt(i);
                  if(this != child)
                  {
                     if(Boolean(child.isEnableHit(this.type)) && child.chrClass.isHero == false)
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
            }
            this.x += this.vx;
            this.y = this.bSys.bgMgr.getPointY(this.x);
            this.vx *= 0.98;
         }
         this.lifeSpan = Math.max(this.lifeSpan - 1,0);
         if(this.lifeSpan > 0)
         {
            if(this.scaleX < 1)
            {
               this.scaleX = Math.min(this.scaleX + 0.1,1);
            }
         }
         if(this.lifeSpan <= 0)
         {
            if(this.scaleX > 0)
            {
               this.scaleX = Math.max(this.scaleX - 0.1,0);
            }
            if(this.scaleX <= 0)
            {
               this.destroy();
            }
         }
      }
   }
}

