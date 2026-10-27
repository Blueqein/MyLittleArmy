package Game.System.Spell
{
   import Game.System.Character.*;
   import Game.System.StatDef.*;
   
   public class SpellMgr
   {
      
      private var mGF:*;
      
      private var bSys:*;
      
      public function SpellMgr(_mGF:*, _bSys:*)
      {
         super();
         this.mGF = _mGF;
         this.bSys = _bSys;
      }
      
      public function destroy() : *
      {
         this.mGF.destroyObjectInContainer(this.mGF.contEFFECT);
         this.bSys = null;
         this.mGF = null;
      }
      
      public function init() : *
      {
      }
      
      public function getRequirmentManaSpell(SLOT:int = 1) : int
      {
         var manaCost:int = 0;
         var spellName:String = "";
         var spellLevel:int = 1;
         var spellStat:* = new SPELLStat();
         spellName = spellStat.getPlayerHeroSpellName(this.mGF,SLOT);
         spellLevel = int(spellStat.getPlayerHeroSpellLevel(this.mGF,SLOT));
         if(spellLevel <= 0)
         {
            return 0;
         }
         spellStat.setByName(spellName);
         spellStat.setLevel(spellLevel);
         return int(spellStat.costMana);
      }
      
      public function createPlayerSpell(SLOT:int = 1, manaSupply:int = 999, XPOS:int = 0) : int
      {
         var manaCost:int = 0;
         var spellName:String = "";
         var spellLevel:int = 1;
         var spellStat:* = new SPELLStat();
         spellName = spellStat.getPlayerHeroSpellName(this.mGF,SLOT);
         spellLevel = int(spellStat.getPlayerHeroSpellLevel(this.mGF,SLOT));
         spellStat.setByName(spellName);
         spellStat.setLevel(spellLevel);
         manaCost = int(spellStat.costMana);
         if(manaCost <= manaSupply)
         {
            this.summonSpell(spellName,"ally",spellLevel,XPOS);
            return manaCost;
         }
         return -1;
      }
      
      public function summonSpell(SPELLNAME:String = "", TYPE:String = "ally", LEVEL:int = 1, XPOS:int = 0) : *
      {
         if(SPELLNAME == "arrow")
         {
            this.createRainOfArrow(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "tornado")
         {
            this.createTornado(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "thunder")
         {
            this.createThunder(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "poison")
         {
            this.createPoison(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "fire")
         {
            this.createFire(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "ice")
         {
            this.createIce(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "meteor")
         {
            this.createMeteor(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "heal")
         {
            this.createHeal(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "regen")
         {
            this.createRegen(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "resurrect")
         {
            this.createResurrect(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "rage")
         {
            this.createRage(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "shield")
         {
            this.createShield(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "haste")
         {
            this.createHaste(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "slow")
         {
            this.createSlow(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "stop")
         {
            this.createStop(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "mini")
         {
            this.createMini(TYPE,LEVEL,XPOS);
         }
         else if(SPELLNAME == "giant")
         {
            this.createGiant(TYPE,LEVEL,XPOS);
         }
      }
      
      private function createRainOfArrow(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var i:int = 0;
         for(i = 0; i <= 50; i++)
         {
            this.createArrow(type,LEVEL,X - 50 + Math.random() * 100);
         }
         this.mGF.soundMgr.playSoundEffect("spell_arrow");
      }
      
      private function createArrow(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new ARROW();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
      }
      
      private function createTornado(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new TORNADO();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_tornado");
      }
      
      private function createThunder(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new THUNDER();
         clip.init(this.mGF,this.bSys,type,LEVEL,X,0);
         var clip2:* = new THUNDER();
         clip2.init(this.mGF,this.bSys,type,LEVEL,X + (-200 + Math.random() * 400),20);
         var clip3:* = new THUNDER();
         clip3.init(this.mGF,this.bSys,type,LEVEL,X + (-200 + Math.random() * 400),40);
         this.mGF.soundMgr.playSoundEffect("spell_thunder");
      }
      
      private function createPoison(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new POISON();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_poison");
      }
      
      private function createFire(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new FIRE();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_fire");
      }
      
      private function createIce(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new ICE();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_ice");
      }
      
      private function createMeteor(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new METEOR();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_meteorfall");
      }
      
      private function createHeal(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new HEAL();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_heal");
      }
      
      private function createRegen(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new REGEN();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_regen");
      }
      
      private function createResurrect(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new RESURRECT();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_resurrect");
      }
      
      private function createRage(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new RAGE();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_rage");
      }
      
      private function createShield(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new SHIELD();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_shield");
      }
      
      private function createHaste(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new HASTE();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_haste");
      }
      
      private function createSlow(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new SLOW();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_slow");
      }
      
      private function createStop(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new STOP();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_stop");
      }
      
      private function createMini(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new MINI();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_mini");
      }
      
      private function createGiant(type:String = "ally", LEVEL:int = 1, X:int = 0) : *
      {
         var clip:* = new GIANT();
         clip.init(this.mGF,this.bSys,type,LEVEL,X);
         this.mGF.soundMgr.playSoundEffect("spell_giant");
      }
      
      public function update() : *
      {
      }
   }
}

