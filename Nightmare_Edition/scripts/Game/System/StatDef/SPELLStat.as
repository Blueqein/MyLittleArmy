package Game.System.StatDef
{
   public class SPELLStat
   {
      
      public var id:int = 0;
      
      public var name:String = "";
      
      public var desc:String = "";
      
      public var power:int = 0;
      
      public var costMana:int = 0;
      
      public var costUpgrade:int = 0;
      
      public var element:int = 0;
      
      public var addStun:Number = 0.5;
      
      public var addCritical:Number = 0.2;
      
      public var addFreeze:Number = 0;
      
      public var addFly:Number = 0;
      
      public var addPoison:Number = 0;
      
      public var timerActive:int = 360;
      
      public function SPELLStat(ID:int = 1, LEVEL:int = 1)
      {
         super();
         this.init(ID,LEVEL);
      }
      
      public function getElementName() : String
      {
         if(this.element == 1)
         {
            return String("melee");
         }
         if(this.element == 2)
         {
            return String("slash");
         }
         if(this.element == 3)
         {
            return String("pierce");
         }
         if(this.element == 4)
         {
            return String("fire");
         }
         if(this.element == 5)
         {
            return String("ice");
         }
         if(this.element == 6)
         {
            return String("thunder");
         }
         return String("void");
      }
      
      public function setByName(STRNAME:String = "") : *
      {
         var valID:int = 0;
         var valLEVEL:int = 1;
         if(STRNAME == "arrow")
         {
            valID = 1;
            valLEVEL = 1;
         }
         else if(STRNAME == "arrowLv2")
         {
            valID = 1;
            valLEVEL = 2;
         }
         else if(STRNAME == "arrowLv3")
         {
            valID = 1;
            valLEVEL = 3;
         }
         if(STRNAME == "fire")
         {
            valID = 2;
            valLEVEL = 1;
         }
         else if(STRNAME == "fireLv2")
         {
            valID = 2;
            valLEVEL = 2;
         }
         else if(STRNAME == "fireLv3")
         {
            valID = 2;
            valLEVEL = 3;
         }
         if(STRNAME == "ice")
         {
            valID = 3;
            valLEVEL = 1;
         }
         else if(STRNAME == "iceLv2")
         {
            valID = 3;
            valLEVEL = 2;
         }
         else if(STRNAME == "iceLv3")
         {
            valID = 3;
            valLEVEL = 3;
         }
         if(STRNAME == "tornado")
         {
            valID = 4;
            valLEVEL = 1;
         }
         else if(STRNAME == "tornadoLv2")
         {
            valID = 4;
            valLEVEL = 2;
         }
         else if(STRNAME == "tornadoLv3")
         {
            valID = 4;
            valLEVEL = 3;
         }
         if(STRNAME == "thunder")
         {
            valID = 5;
            valLEVEL = 1;
         }
         else if(STRNAME == "thunderLv2")
         {
            valID = 5;
            valLEVEL = 2;
         }
         else if(STRNAME == "thunderLv3")
         {
            valID = 5;
            valLEVEL = 3;
         }
         if(STRNAME == "meteor")
         {
            valID = 6;
            valLEVEL = 1;
         }
         else if(STRNAME == "meteorLv2")
         {
            valID = 6;
            valLEVEL = 2;
         }
         else if(STRNAME == "meteorLv3")
         {
            valID = 6;
            valLEVEL = 3;
         }
         if(STRNAME == "poison")
         {
            valID = 7;
            valLEVEL = 1;
         }
         else if(STRNAME == "poisonLv2")
         {
            valID = 7;
            valLEVEL = 2;
         }
         else if(STRNAME == "poisonLv3")
         {
            valID = 7;
            valLEVEL = 3;
         }
         if(STRNAME == "heal")
         {
            valID = 8;
            valLEVEL = 1;
         }
         else if(STRNAME == "healLv2")
         {
            valID = 8;
            valLEVEL = 2;
         }
         else if(STRNAME == "healLv3")
         {
            valID = 8;
            valLEVEL = 3;
         }
         if(STRNAME == "regen")
         {
            valID = 9;
            valLEVEL = 1;
         }
         else if(STRNAME == "regenLv2")
         {
            valID = 9;
            valLEVEL = 2;
         }
         else if(STRNAME == "regenLv3")
         {
            valID = 9;
            valLEVEL = 3;
         }
         if(STRNAME == "resurrect")
         {
            valID = 10;
            valLEVEL = 1;
         }
         else if(STRNAME == "resurrectLv2")
         {
            valID = 10;
            valLEVEL = 2;
         }
         else if(STRNAME == "resurrectLv3")
         {
            valID = 10;
            valLEVEL = 3;
         }
         if(STRNAME == "haste")
         {
            valID = 11;
            valLEVEL = 1;
         }
         else if(STRNAME == "hasteLv2")
         {
            valID = 11;
            valLEVEL = 2;
         }
         else if(STRNAME == "hasteLv3")
         {
            valID = 11;
            valLEVEL = 3;
         }
         if(STRNAME == "slow")
         {
            valID = 12;
            valLEVEL = 1;
         }
         else if(STRNAME == "slowLv2")
         {
            valID = 12;
            valLEVEL = 2;
         }
         else if(STRNAME == "slowLv3")
         {
            valID = 12;
            valLEVEL = 3;
         }
         if(STRNAME == "stop")
         {
            valID = 13;
            valLEVEL = 1;
         }
         else if(STRNAME == "stopLv2")
         {
            valID = 13;
            valLEVEL = 2;
         }
         else if(STRNAME == "stopLv3")
         {
            valID = 13;
            valLEVEL = 3;
         }
         if(STRNAME == "rage")
         {
            valID = 14;
            valLEVEL = 1;
         }
         else if(STRNAME == "rageLv2")
         {
            valID = 14;
            valLEVEL = 2;
         }
         else if(STRNAME == "rageLv3")
         {
            valID = 14;
            valLEVEL = 3;
         }
         if(STRNAME == "shield")
         {
            valID = 15;
            valLEVEL = 1;
         }
         else if(STRNAME == "shieldLv2")
         {
            valID = 15;
            valLEVEL = 2;
         }
         else if(STRNAME == "shieldLv3")
         {
            valID = 15;
            valLEVEL = 3;
         }
         if(STRNAME == "mini")
         {
            valID = 16;
            valLEVEL = 1;
         }
         else if(STRNAME == "miniLv2")
         {
            valID = 16;
            valLEVEL = 2;
         }
         else if(STRNAME == "miniLv3")
         {
            valID = 16;
            valLEVEL = 3;
         }
         if(STRNAME == "giant")
         {
            valID = 17;
            valLEVEL = 1;
         }
         else if(STRNAME == "giantLv2")
         {
            valID = 17;
            valLEVEL = 2;
         }
         else if(STRNAME == "giantLv3")
         {
            valID = 17;
            valLEVEL = 3;
         }
         if(STRNAME == "super")
         {
            valID = 18;
            valLEVEL = 1;
         }
         else if(STRNAME == "superLv2")
         {
            valID = 18;
            valLEVEL = 2;
         }
         else if(STRNAME == "superLv3")
         {
            valID = 18;
            valLEVEL = 3;
         }
         this.init(valID,valLEVEL);
      }
      
      public function setLevel(LEVEL:int = 1) : *
      {
         this.init(this.id,LEVEL);
      }
      
      public function init(ID:int = 1, LEVEL:int = 1) : *
      {
         this.id = ID;
         this.power = 0;
         this.costMana = 0;
         this.costUpgrade = 0;
         this.element = 0;
         this.addStun = 1;
         this.addCritical = 0.2;
         this.addFreeze = 0;
         this.addFly = 0;
         this.addPoison = 0;
         if(ID == 1)
         {
            this.name = "Rain of Arrow";
            this.desc = "Order your Little Army to shoot a volley of arrow at target location.";
            this.power = 25;
            this.costMana = 32;
            this.costUpgrade = 2000;
            this.element = 3;
            if(LEVEL == 2)
            {
               this.power = 50;
               this.costMana = 36;
               this.costUpgrade = 6000;
            }
            if(LEVEL >= 3)
            {
               this.power = 80;
               this.costMana = 42;
               this.costUpgrade = 12000;
            }
         }
         if(ID == 2)
         {
            this.name = "Hell Fire";
            this.desc = "Summon a little volcano at target location";
            this.power = 100;
            this.costMana = 10;
            this.costUpgrade = 3000;
            this.addFly = 1;
            this.element = 4;
            if(LEVEL == 2)
            {
               this.power = 200;
               this.costMana = 15;
               this.costUpgrade = 9000;
            }
            if(LEVEL >= 3)
            {
               this.power = 320;
               this.costMana = 20;
               this.costUpgrade = 18000;
            }
         }
         if(ID == 3)
         {
            this.name = "Freezing Storm";
            this.desc = "Summon ice crystal and freeze your enemy.";
            this.power = 120;
            this.costMana = 56;
            this.costUpgrade = 4000;
            this.addFreeze = 0.5;
            this.element = 5;
            if(LEVEL == 2)
            {
               this.power = 160;
               this.costMana = 58;
               this.costUpgrade = 12000;
            }
            if(LEVEL >= 3)
            {
               this.power = 210;
               this.costMana = 62;
               this.costUpgrade = 24000;
            }
         }
         if(ID == 4)
         {
            this.name = "Tornado";
            this.desc = "Summon slow moving deadly tornado.";
            this.power = 210;
            this.costMana = 22;
            this.costUpgrade = 3500;
            this.addFly = 1;
            this.element = 2;
            if(LEVEL == 2)
            {
               this.power = 330;
               this.costMana = 27;
               this.costUpgrade = 11500;
            }
            if(LEVEL >= 3)
            {
               this.power = 450;
               this.costMana = 32;
               this.costUpgrade = 23000;
            }
         }
         if(ID == 5)
         {
            this.name = "Lighting Blast";
            this.desc = "Summon the wrath of heaven in form of a single lightning bolt.";
            this.power = 250;
            this.costMana = 25;
            this.costUpgrade = 3000;
            this.addCritical = 0.5;
            this.element = 6;
            if(LEVEL == 2)
            {
               this.power = 400;
               this.costMana = 30;
               this.costUpgrade = 9000;
            }
            if(LEVEL >= 3)
            {
               this.power = 600;
               this.costMana = 35;
               this.costUpgrade = 18000;
            }
         }
         if(ID == 6)
         {
            this.name = "Meteor";
            this.desc = "Summon falling meteors from faraway stars.";
            this.power = 800;
            this.costMana = 70;
            this.costUpgrade = 6000;
            this.addFly = 1;
            this.element = 1;
            if(LEVEL == 2)
            {
               this.power = 1000;
               this.costMana = 74;
               this.costUpgrade = 18000;
            }
            if(LEVEL >= 3)
            {
               this.power = 1200;
               this.costMana = 78;
               this.costUpgrade = 36000;
            }
         }
         if(ID == 7)
         {
            this.name = "Poison";
            this.desc = "Poison enamy with distinguse gas.";
            this.power = 120;
            this.costMana = 25;
            this.costUpgrade = 4000;
            this.addPoison = 1;
            this.element = 0;
            this.timerActive = 24 * 10;
            if(LEVEL == 2)
            {
               this.power = 160;
               this.costMana = 22;
               this.costUpgrade = 12000;
               this.timerActive = 24 * 15;
            }
            if(LEVEL >= 3)
            {
               this.power = 180;
               this.costMana = 24;
               this.costUpgrade = 24000;
               this.timerActive = 24 * 20;
            }
         }
         if(ID == 8)
         {
            this.name = "Healing Pray";
            this.desc = "Heal your Little Army.";
            this.power = 60;
            this.costMana = 16;
            this.costUpgrade = 2000;
            this.element = 0;
            if(LEVEL == 2)
            {
               this.power = 90;
               this.costMana = 18;
               this.costUpgrade = 6000;
            }
            if(LEVEL >= 3)
            {
               this.power = 120;
               this.costMana = 20;
               this.costUpgrade = 12000;
            }
         }
         if(ID == 9)
         {
            this.name = "Regenerate";
            this.desc = "Slowly heal ally.";
            this.power = 0;
            this.costMana = 20;
            this.costUpgrade = 2500;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 10;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 25;
               this.costUpgrade = 7500;
               this.timerActive = 24 * 20;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 30;
               this.costUpgrade = 15000;
               this.timerActive = 24 * 30;
            }
         }
         if(ID == 10)
         {
            this.name = "Resurrection";
            this.desc = "Raise fallen army.";
            this.power = 85;
            this.costMana = 35;
            this.costUpgrade = 3000;
            this.addFly = 1;
            this.element = 0;
            if(LEVEL == 2)
            {
               this.power = 140;
               this.costMana = 40;
               this.costUpgrade = 9000;
            }
            if(LEVEL >= 3)
            {
               this.power = 210;
               this.costMana = 45;
               this.costUpgrade = 18000;
            }
         }
         if(ID == 11)
         {
            this.name = "Haste";
            this.desc = "Increase your Little Army\'s speed.";
            this.power = 0;
            this.costMana = 8;
            this.costUpgrade = 1000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 20;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 12;
               this.costUpgrade = 5000;
               this.timerActive = 24 * 40;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 16;
               this.costUpgrade = 10000;
               this.timerActive = 24 * 60;
            }
         }
         if(ID == 12)
         {
            this.name = "Slow";
            this.desc = "Slower unit movement.";
            this.power = 0;
            this.costMana = 12;
            this.costUpgrade = 2000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 20;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 14;
               this.costUpgrade = 6000;
               this.timerActive = 24 * 40;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 16;
               this.costUpgrade = 12000;
               this.timerActive = 24 * 60;
            }
         }
         if(ID == 13)
         {
            this.name = "Stop";
            this.desc = "Stop unit movement.";
            this.power = 0;
            this.costMana = 32;
            this.costUpgrade = 5000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 15;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 34;
               this.costUpgrade = 15000;
               this.timerActive = 24 * 20;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 38;
               this.costUpgrade = 30000;
               this.timerActive = 24 * 30;
            }
         }
         if(ID == 14)
         {
            this.name = "Rage";
            this.desc = "Increase your Little Army\'s power.";
            this.power = 0;
            this.costMana = 25;
            this.costUpgrade = 3000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 15;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 27;
               this.costUpgrade = 9000;
               this.timerActive = 24 * 20;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 29;
               this.costUpgrade = 18000;
               this.timerActive = 24 * 30;
            }
         }
         if(ID == 15)
         {
            this.name = "Shield";
            this.desc = "Stronger unit defense.";
            this.power = 0;
            this.costMana = 25;
            this.costUpgrade = 3000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 15;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 27;
               this.costUpgrade = 9000;
               this.timerActive = 24 * 20;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 29;
               this.costUpgrade = 18000;
               this.timerActive = 24 * 30;
            }
         }
         if(ID == 16)
         {
            this.name = "Mini";
            this.desc = "Convert unit to mini size.";
            this.power = 0;
            this.costMana = 40;
            this.costUpgrade = 4000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 15;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 42;
               this.costUpgrade = 12000;
               this.timerActive = 24 * 20;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 44;
               this.costUpgrade = 24000;
               this.timerActive = 24 * 30;
            }
         }
         if(ID == 17)
         {
            this.name = "Giant";
            this.desc = "Convert unit to giant size.";
            this.power = 0;
            this.costMana = 60;
            this.costUpgrade = 10000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 20;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 70;
               this.costUpgrade = 20000;
               this.timerActive = 24 * 40;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 80;
               this.costUpgrade = 40000;
               this.timerActive = 24 * 60;
            }
         }
         if(ID == 18)
         {
            this.name = "Super";
            this.desc = "Convert unit to super size.";
            this.power = 0;
            this.costMana = 160;
            this.costUpgrade = 9000;
            this.addFly = 1;
            this.element = 0;
            this.timerActive = 24 * 20;
            if(LEVEL == 2)
            {
               this.power = 0;
               this.costMana = 170;
               this.costUpgrade = 27000;
               this.timerActive = 24 * 40;
            }
            if(LEVEL >= 3)
            {
               this.power = 0;
               this.costMana = 180;
               this.costUpgrade = 54000;
               this.timerActive = 24 * 60;
            }
         }
      }
      
      public function isValidName(NAME:String = "") : Boolean
      {
         if(NAME == "arrow" || NAME == "arrowLv2" || NAME == "arrowLv3" || NAME == "fire" || NAME == "fireLv2" || NAME == "fireLv3" || NAME == "ice" || NAME == "iceLv2" || NAME == "iceLv3" || NAME == "tornado" || NAME == "tornadoLv2" || NAME == "tornadoLv3" || NAME == "thunder" || NAME == "thunderLv2" || NAME == "thunderLv3" || NAME == "meteor" || NAME == "meteorLv2" || NAME == "meteorLv3" || NAME == "poison" || NAME == "poisonLv2" || NAME == "poisonLv3" || NAME == "heal" || NAME == "healLv2" || NAME == "healLv3" || NAME == "regen" || NAME == "regenLv2" || NAME == "regenLv3" || NAME == "resurrect" || NAME == "resurrectLv2" || NAME == "resurrectLv3" || NAME == "haste" || NAME == "hasteLv2" || NAME == "hasteLv3" || NAME == "slow" || NAME == "slowLv2" || NAME == "slowLv3" || NAME == "stop" || NAME == "stopLv2" || NAME == "stopLv3" || NAME == "rage" || NAME == "regenLv2" || NAME == "regenLv3" || NAME == "shield" || NAME == "resurrectLv2" || NAME == "resurrectLv3" || NAME == "mini" || NAME == "miniLv2" || NAME == "miniLv3" || NAME == "giant" || NAME == "giantLv2" || NAME == "giantLv3" || NAME == "super" || NAME == "superLv2" || NAME == "superLv3")
         {
            return true;
         }
         return false;
      }
      
      public function getPlayerHeroSpellName(mGF:*, SLOT:int = 1) : String
      {
         var spellName:String = "";
         if(mGF.datMgr.hero_type == 1)
         {
            if(SLOT == 1)
            {
               spellName = "arrow";
            }
            if(SLOT == 2)
            {
               spellName = "heal";
            }
            if(SLOT == 3)
            {
               spellName = "haste";
            }
            if(SLOT == 4)
            {
               spellName = "rage";
            }
            if(SLOT == 5)
            {
               spellName = "fire";
            }
            if(SLOT == 6)
            {
               spellName = "giant";
            }
            if(SLOT == 7)
            {
               spellName = "meteor";
            }
         }
         else if(mGF.datMgr.hero_type == 2)
         {
            if(SLOT == 1)
            {
               spellName = "heal";
            }
            if(SLOT == 2)
            {
               spellName = "shield";
            }
            if(SLOT == 3)
            {
               spellName = "regen";
            }
            if(SLOT == 4)
            {
               spellName = "ice";
            }
            if(SLOT == 5)
            {
               spellName = "haste";
            }
            if(SLOT == 6)
            {
               spellName = "slow";
            }
            if(SLOT == 7)
            {
               spellName = "resurrect";
            }
         }
         else if(mGF.datMgr.hero_type == 3)
         {
            if(SLOT == 1)
            {
               spellName = "poison";
            }
            if(SLOT == 2)
            {
               spellName = "haste";
            }
            if(SLOT == 3)
            {
               spellName = "thunder";
            }
            if(SLOT == 4)
            {
               spellName = "stop";
            }
            if(SLOT == 5)
            {
               spellName = "mini";
            }
            if(SLOT == 6)
            {
               spellName = "rage";
            }
            if(SLOT == 7)
            {
               spellName = "tornado";
            }
         }
         return spellName;
      }
      
      public function getPlayerHeroSpellLevel(mGF:*, SLOT:int = 1) : int
      {
         var spellLevel:int = 0;
         if(mGF.datMgr.hero_type == 1)
         {
            if(SLOT == 1)
            {
               spellLevel = int(mGF.datMgr.hero_spell_arrow);
            }
            if(SLOT == 2)
            {
               spellLevel = int(mGF.datMgr.hero_spell_heal);
            }
            if(SLOT == 3)
            {
               spellLevel = int(mGF.datMgr.hero_spell_haste);
            }
            if(SLOT == 4)
            {
               spellLevel = int(mGF.datMgr.hero_spell_rage);
            }
            if(SLOT == 5)
            {
               spellLevel = int(mGF.datMgr.hero_spell_fire);
            }
            if(SLOT == 6)
            {
               spellLevel = int(mGF.datMgr.hero_spell_giant);
            }
            if(SLOT == 7)
            {
               spellLevel = int(mGF.datMgr.hero_spell_meteor);
            }
         }
         else if(mGF.datMgr.hero_type == 2)
         {
            if(SLOT == 1)
            {
               spellLevel = int(mGF.datMgr.hero_spell_heal);
            }
            if(SLOT == 2)
            {
               spellLevel = int(mGF.datMgr.hero_spell_shield);
            }
            if(SLOT == 3)
            {
               spellLevel = int(mGF.datMgr.hero_spell_regen);
            }
            if(SLOT == 4)
            {
               spellLevel = int(mGF.datMgr.hero_spell_ice);
            }
            if(SLOT == 5)
            {
               spellLevel = int(mGF.datMgr.hero_spell_haste);
            }
            if(SLOT == 6)
            {
               spellLevel = int(mGF.datMgr.hero_spell_slow);
            }
            if(SLOT == 7)
            {
               spellLevel = int(mGF.datMgr.hero_spell_resurrect);
            }
         }
         else if(mGF.datMgr.hero_type == 3)
         {
            if(SLOT == 1)
            {
               spellLevel = int(mGF.datMgr.hero_spell_poison);
            }
            if(SLOT == 2)
            {
               spellLevel = int(mGF.datMgr.hero_spell_haste);
            }
            if(SLOT == 3)
            {
               spellLevel = int(mGF.datMgr.hero_spell_thunder);
            }
            if(SLOT == 4)
            {
               spellLevel = int(mGF.datMgr.hero_spell_stop);
            }
            if(SLOT == 5)
            {
               spellLevel = int(mGF.datMgr.hero_spell_mini);
            }
            if(SLOT == 6)
            {
               spellLevel = int(mGF.datMgr.hero_spell_rage);
            }
            if(SLOT == 7)
            {
               spellLevel = int(mGF.datMgr.hero_spell_tornado);
            }
         }
         return spellLevel;
      }
   }
}

