package Game.System.Spell
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class Shield extends MovieClip
   {
      
      public var hitBox:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      private var statSpell:* = new SPELLStat();
      
      private var atkDamage:* = new ATKDamageStat();
      
      private var type:String = "ally";
      
      public function Shield()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("shield destroy !!=");
      }
      
      public function init(_mGF:*, _bSys:*, _type:*, _LEVEL:int = 1, _X:int = 0) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contEFFECT;
         this.bSys = _bSys;
         this.type = _type;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = _X;
         this.y = 0;
         this.statSpell.setByName("shield");
         this.statSpell.setLevel(_LEVEL);
         this.atkDamage.power = this.statSpell.power;
         this.atkDamage.element = this.statSpell.getElementName();
         this.atkDamage.timerActive = this.statSpell.timerActive;
         this.atkDamage.addStun = this.statSpell.addStun;
         this.atkDamage.addCritical = this.statSpell.addCritical;
         this.atkDamage.addFreeze = this.statSpell.addFreeze;
         this.atkDamage.addFly = this.statSpell.addFly;
         this.atkDamage.addPoison = this.statSpell.addPoison;
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
         if(this.currentFrame == 30)
         {
            comboGroupHitMax = 99;
            numChildren = int(this.mGF.contUNIT.numChildren);
            totalHit = 0;
            for(i = 0; i < numChildren; i++)
            {
               child = this.mGF.contUNIT.getChildAt(i);
               if(this != child)
               {
                  if(child.isEnableUnitBoost(this.type))
                  {
                     if(this.hitBox.hitTestObject(child.bodyBox))
                     {
                        child.hitEffect("shield",1,this.atkDamage.timerActive);
                        if(++totalHit >= comboGroupHitMax)
                        {
                           break;
                        }
                     }
                  }
               }
            }
         }
         this.y = this.bSys.bgMgr.getPointY(this.x);
         if(this.currentFrame == this.totalFrames)
         {
            this.destroy();
         }
      }
   }
}

