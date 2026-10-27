package Game.System.Battle
{
   import Game.System.StatDef.*;
   
   public class BattleMission
   {
      
      private var mGF:*;
      
      private var bSys:*;
      
      public function BattleMission(_mGF:*, _bSys:*)
      {
         super();
         this.mGF = _mGF;
         this.bSys = _bSys;
      }
      
      public function destroy() : *
      {
      }
      
      public function init() : *
      {
      }
      
      public function initTutorial() : *
      {
         this.bSys.bgMgr.createBackground(2,1,1,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",500,false);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",1000,false);
         this.bSys.battleObjective = "tutorial";
         this.bSys.battleType = "tutorial";
      }
      
      public function initMission01() : *
      {
         this.bSys.bgMgr.createBackground(2,1,1,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyHero("snake",0,0,1300);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",1000,false);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",1050,false);
         this.bSys.charMgr.createEnemyUnit("archer","peasant",1100,false);
         this.bSys.charMgr.createEnemyUnit("warrior","hobbit",700,false);
         this.bSys.charMgr.createEnemyUnit("warrior","hobbit",750,false);
         this.bSys.battleEnemySpawnWaveDelay = 25;
         this.bSys.battleEnemySpawnWaveLv = 1;
         this.bSys.battleEnemyRevengeWaveCount = 1;
         this.bSys.battleEnemyRevengeWaveLv = 1;
         this.bSys.battleQuestLootUnlock = 3;
         this.bSys.battleQuestLootCommon = 82;
         this.bSys.battleQuestLootRare = 83;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
         this.bSys.battleCutSceneStartID = 1;
         this.bSys.battleCutSceneEndID = 1;
      }
      
      public function initMission02() : *
      {
         this.bSys.bgMgr.createBackground(2,2,2,0);
         this.bSys.bgMgr.setLengthArea(1400);
         if(this.mGF.datMgr.hero_type == 3)
         {
            this.bSys.charMgr.createEnemyHero("monkeyP",0,0,1300);
         }
         else
         {
            this.bSys.charMgr.createEnemyHero("monkey",0,0,1300);
         }
         this.bSys.charMgr.createEnemyUnit("archer","peasant",1000,false);
         this.bSys.charMgr.createEnemyUnit("mage","peasant",1100,false);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",700,false);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",750,false);
         this.bSys.charMgr.createEnemyTower("bird",800);
         this.bSys.charMgr.createEnemyUnit("swordmaster","samurai_ex",900,false,"",3000);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 1;
         this.bSys.battleEnemyRevengeWaveCount = 1;
         this.bSys.battleEnemyRevengeWaveLv = 1;
         this.bSys.battleQuestLootUnlock = 4;
         this.bSys.battleQuestLootCommon = 143;
         this.bSys.battleQuestLootRare = 24;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission03() : *
      {
         this.bSys.bgMgr.createBackground(3,1,1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyHero("snake",1,1,2900);
         this.bSys.charMgr.createEnemyUnit("thrower","mafia",800,false);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjaboy",1000,false);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjaboy",1050,false);
         this.bSys.charMgr.createEnemyPortal("zombie",1500);
         this.bSys.charMgr.createEnemyTower("bird",1600);
         this.bSys.charMgr.createEnemyTower("bird",1900);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",2000,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",2050,false,"",1500);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 1;
         this.bSys.battleEnemyRevengeWaveCount = 2;
         this.bSys.battleEnemyRevengeWaveLv = 1;
         this.bSys.battleQuestLootUnlock = 5;
         this.bSys.battleQuestLootCommon = 163;
         this.bSys.battleQuestLootRare = 86;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission04() : *
      {
         this.bSys.bgMgr.createBackground(4,2,2,2);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyPortal("zombie",500);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",600,false,"giant",10000,true);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 2;
         this.bSys.battleQuestLootUnlock = 0;
         this.bSys.battleQuestLootCommon = 144;
         this.bSys.battleQuestLootRare = 188;
         this.bSys.battleObjective = "time";
         this.bSys.battleType = "mission";
      }
      
      public function initMission05() : *
      {
         this.bSys.bgMgr.createBackground(1,1,1,1);
         this.bSys.bgMgr.setLengthArea(1400);
         if(this.mGF.datMgr.hero_type == 1 || this.mGF.datMgr.hero_type == 3)
         {
            this.bSys.charMgr.createEnemyHero("snowbearP",2,1,1300);
         }
         else
         {
            this.bSys.charMgr.createEnemyHero("snowbear",2,1,1300);
         }
         this.bSys.charMgr.createEnemyPortal("zombie",1200);
         this.bSys.charMgr.createEnemyTower("bird",950);
         this.bSys.charMgr.createEnemyUnit("mage","hermit",1050,false);
         this.bSys.charMgr.createEnemyUnit("mage","hermit",1000,false);
         this.bSys.charMgr.createEnemyTower("bird",650);
         this.bSys.charMgr.createEnemyPortal("zombie",700);
         this.bSys.charMgr.createEnemyUnit("warrior","viking",800,false,"",1800);
         this.bSys.charMgr.createEnemyUnit("warrior","viking",750,false,"",1800);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 1;
         this.bSys.battleEnemyRevengeWaveCount = 1;
         this.bSys.battleEnemyRevengeWaveLv = 1;
         this.bSys.battleQuestLootUnlock = 7;
         this.bSys.battleQuestLootCommon = 185;
         this.bSys.battleQuestLootRare = 105;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission06() : *
      {
         this.bSys.bgMgr.createBackground(3,3,1,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyHero("monkey",2,1,1300);
         this.bSys.charMgr.createEnemyPortal("zombie",1200);
         this.bSys.charMgr.createEnemyTower("bird",950);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman",1000,false,2000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman",1050,false,2000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman",1100,false,2000);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 2;
         this.bSys.battleEnemyRevengeWaveCount = 1;
         this.bSys.battleEnemyRevengeWaveLv = 1;
         this.bSys.battleQuestLootUnlock = 0;
         this.bSys.battleQuestLootCommon = 165;
         this.bSys.battleQuestLootRare = 106;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission07() : *
      {
         this.bSys.bgMgr.createBackground(2,3,1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyHero("snowbear",3,1,2900);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",2700,false,"giant",6000);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",2600,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",2550,false,"",1500);
         this.bSys.charMgr.createEnemyTower("snake",1800);
         this.bSys.charMgr.createEnemyTower("bird",1100);
         this.bSys.charMgr.createEnemyPortal("skeleton",1200);
         this.bSys.charMgr.createEnemyPortal("zombie",800);
         this.bSys.charMgr.createEnemyTower("bird",700);
         this.bSys.charMgr.createEnemyUnit("warrior","goblin",650,false);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 2;
         this.bSys.battleEnemyRevengeWaveCount = 1;
         this.bSys.battleEnemyRevengeWaveLv = 2;
         this.bSys.battleQuestLootUnlock = 6;
         this.bSys.battleQuestLootCommon = 104;
         this.bSys.battleQuestLootRare = 88;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission08() : *
      {
         this.bSys.bgMgr.createBackground(1,3,2,1);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyTower("turtle",1300);
         this.bSys.charMgr.createEnemyUnit("fighter","demon",1200,false,"",9000,true);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjagirl",1000,false,"",2500);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjagirl",950,false,"",2500);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjagirl",900,false,"",2500);
         this.bSys.charMgr.createEnemyTower("bird",800);
         this.bSys.charMgr.createEnemyPortal("skeleton",700);
         this.bSys.charMgr.createEnemyTower("bird",600);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 3;
         this.bSys.battleQuestLootUnlock = 0;
         this.bSys.battleQuestLootCommon = 125;
         this.bSys.battleQuestLootRare = 128;
         this.bSys.battleObjective = "time";
         this.bSys.battleType = "mission";
      }
      
      public function initMission09() : *
      {
         this.bSys.bgMgr.createBackground(3,4,2,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyTower("monkey",2700);
         this.bSys.charMgr.createEnemyTower("bird",1000);
         this.bSys.charMgr.createEnemyPortal("skeleton",2200);
         this.bSys.charMgr.createEnemyPortal("zombie",700);
         this.bSys.charMgr.createEnemyHero("clown",4,1,2900);
         this.bSys.charMgr.createEnemyUnit("warrior","chef",2500,false,"giant",8000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","boxer_ex",2420,false,"",4000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","boxer_ex",2400,false,"",4000);
         this.bSys.charMgr.createEnemyUnit("warrior","valkyrie",800,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("warrior","valkyrie",850,false,"",3000);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 3;
         this.bSys.battleEnemyRevengeWaveCount = 2;
         this.bSys.battleEnemyRevengeWaveLv = 2;
         this.bSys.battleQuestLootUnlock = 8;
         this.bSys.battleQuestLootCommon = 223;
         this.bSys.battleQuestLootRare = 228;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission10() : *
      {
         this.bSys.bgMgr.createBackground(3,5,1,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyHero("snake",4,2,1300);
         this.bSys.charMgr.createEnemyUnit("tanker","cyborg",1200,false,"",4000);
         this.bSys.charMgr.createEnemyUnit("tanker","cyborg",1100,false,"",4000);
         this.bSys.charMgr.createEnemyPortal("skeleton",1000);
         this.bSys.charMgr.createEnemyUnit("warrior","cyborg_ex",800,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("warrior","cyborg_ex",750,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("warrior","cyborg_ex",700,false,"",2000);
         this.bSys.charMgr.createEnemyPortal("skeleton",500);
         this.bSys.charMgr.createEnemyPortal("zombie",600);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 3;
         this.bSys.battleEnemyRevengeWaveCount = 2;
         this.bSys.battleEnemyRevengeWaveLv = 2;
         this.bSys.battleQuestLootUnlock = 42;
         this.bSys.battleQuestLootCommon = 26;
         this.bSys.battleQuestLootRare = 39;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission11() : *
      {
         this.bSys.bgMgr.createBackground(3,6,2,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyPortal("zombie",2200);
         this.bSys.charMgr.createEnemyPortal("skeleton",2100);
         this.bSys.charMgr.createEnemyPortal("ghost",2000);
         this.bSys.charMgr.createEnemyPortal("zombie",800);
         this.bSys.charMgr.createEnemyTower("monkey",2800);
         this.bSys.charMgr.createEnemyHero("snake",4,2,2900);
         this.bSys.charMgr.createEnemyUnit("warrior","elephant",2700,false,"giant",9000);
         this.bSys.charMgr.createEnemyUnit("cavalry","templar",1800,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("cavalry","templar",1750,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("cavalry","templar",1700,false,"",3000);
         this.bSys.charMgr.createEnemyTower("bird",1200);
         this.bSys.charMgr.createEnemyTower("bird",1100);
         this.bSys.charMgr.createEnemyTower("bird",1000);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 4;
         this.bSys.battleEnemyRevengeWaveCount = 2;
         this.bSys.battleEnemyRevengeWaveLv = 2;
         this.bSys.battleQuestLootUnlock = 9;
         this.bSys.battleQuestLootCommon = 204;
         this.bSys.battleQuestLootRare = 208;
         this.bSys.battleObjective = "normal";
         this.bSys.battleType = "mission";
      }
      
      public function initMission12() : *
      {
         this.bSys.bgMgr.createBackground(4,1,1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyUnit("warrior","",1050,false);
         this.bSys.charMgr.createEnemyUnit("warrior","",1100,false);
         this.bSys.charMgr.createEnemyUnit("archer","",1150,false);
         this.bSys.charMgr.createEnemyUnit("warrior","",700,false);
         this.bSys.charMgr.createEnemyUnit("warrior","",750,false);
         this.bSys.charMgr.createEnemyBoss("demon",2500);
         this.bSys.battleQuestLootUnlock = 90;
         this.bSys.battleQuestLootCommon = 129;
         this.bSys.battleQuestLootRare = 90;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "mission";
      }
      
      public function initQuest01() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",1200,false,"",1200,true);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",950,false);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",1000,false);
         this.bSys.charMgr.createEnemyUnit("archer","peasant",1050,false);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",700,false);
         this.bSys.charMgr.createEnemyUnit("warrior","peasant",750,false);
         this.bSys.battleQuestLootUnlock = 34;
         this.bSys.battleQuestLootCommon = 81;
         this.bSys.battleQuestLootRare = 83;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest02() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyUnit("mage","hermit",1200,false,"",1500,true);
         this.bSys.charMgr.createEnemyUnit("warrior","druid",950,false);
         this.bSys.charMgr.createEnemyUnit("mage","druid",1000,false);
         this.bSys.charMgr.createEnemyUnit("archer","druid",1050,false);
         this.bSys.charMgr.createEnemyUnit("archer","druid",800,false);
         this.bSys.charMgr.createEnemyUnit("warrior","druid",750,false);
         this.bSys.battleQuestLootUnlock = 61;
         this.bSys.battleQuestLootCommon = 161;
         this.bSys.battleQuestLootRare = 61;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest03() : *
      {
         this.bSys.bgMgr.createRandomBackground(3,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyPortal("zombie",1000);
         this.bSys.charMgr.createEnemyUnit("warrior","pirate",1200,false,"",1600,true);
         this.bSys.charMgr.createEnemyUnit("warrior","hobbit",700,false);
         this.bSys.charMgr.createEnemyUnit("warrior","hobbit",600,false);
         this.bSys.battleQuestLootUnlock = 48;
         this.bSys.battleQuestLootCommon = 45;
         this.bSys.battleQuestLootRare = 48;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest04() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyUnit("swordmaster","shinobi",600,false,"",2000,true);
         this.bSys.charMgr.createEnemyUnit("swordmaster","shinobi",500,false);
         this.bSys.charMgr.createEnemyUnit("swordmaster","shinobi",450,false);
         this.bSys.battleEnemySpawnWaveDelay = 25;
         this.bSys.battleEnemySpawnWaveLv = 1;
         this.bSys.battleEnemyRevengeWaveCount = 1;
         this.bSys.battleEnemyRevengeWaveLv = 1;
         this.bSys.battleQuestLootUnlock = 22;
         this.bSys.battleQuestLootCommon = 82;
         this.bSys.battleQuestLootRare = 22;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest05() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyPortal("zombie",1500);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",2500,false,"giant",3500,true);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",900,false);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",850,false);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",750,false);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",700,false);
         this.bSys.battleEnemySpawnWaveDelay = 40;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "warrior";
         this.bSys.battleEnemySpawnWaveSkin = "peasant";
         this.bSys.battleQuestLootUnlock = 83;
         this.bSys.battleQuestLootCommon = 34;
         this.bSys.battleQuestLootRare = 85;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest06() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyTower("bird",1200);
         this.bSys.charMgr.createEnemyTower("bird",600);
         this.bSys.charMgr.createEnemyUnit("archer","robin",1200,false,"",1500,true);
         this.bSys.charMgr.createEnemyUnit("archer","robin",900,false);
         this.bSys.charMgr.createEnemyUnit("archer","robin",850,false);
         this.bSys.charMgr.createEnemyUnit("archer","robin",750,false);
         this.bSys.charMgr.createEnemyUnit("archer","robin",700,false);
         this.bSys.battleQuestLootUnlock = 46;
         this.bSys.battleQuestLootCommon = 143;
         this.bSys.battleQuestLootRare = 144;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest07() : *
      {
         this.bSys.bgMgr.createRandomBackground(3,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyPortal("zombie",900);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",1200,false,"",1200,true);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",1100,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",1000,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",900,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",800,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("thrower","maid",700,false,"",1000);
         this.bSys.battleQuestLootUnlock = 59;
         this.bSys.battleQuestLootCommon = 222;
         this.bSys.battleQuestLootRare = 59;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest08() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,1);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyTower("bird",1000);
         this.bSys.charMgr.createEnemyTower("bird",800);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",1200,false,"",1500,true);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",1100,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",1000,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",900,false,"",1500);
         this.bSys.battleQuestLootUnlock = 33;
         this.bSys.battleQuestLootCommon = 221;
         this.bSys.battleQuestLootRare = 164;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest09() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyPortal("ghost",2000);
         this.bSys.charMgr.createEnemyPortal("zombie",1000);
         this.bSys.charMgr.createEnemyUnit("mage","phantom",2600,false,"giant",6000,true);
         this.bSys.charMgr.createEnemyUnit("mage","badgirl",1800,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("swordmaster","badgirl",1700,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("archer","badgirl",900,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("warrior","badgirl",800,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("warrior","badgirl",700,false,"",1500);
         this.bSys.battleQuestLootUnlock = 25;
         this.bSys.battleQuestLootCommon = 47;
         this.bSys.battleQuestLootRare = 25;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest10() : *
      {
         this.bSys.bgMgr.createRandomBackground(3,0);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyPortal("skeleton",900);
         this.bSys.charMgr.createEnemyUnit("warrior","slasher_ex",1200,false,"giant",5000,true);
         this.bSys.charMgr.createEnemyUnit("warrior","slasher_ex",1100,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("warrior","slasher_ex",1000,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("warrior","slasher_ex",900,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("warrior","slasher_ex",800,false,"",1000);
         this.bSys.charMgr.createEnemyUnit("warrior","slasher_ex",700,false,"",1000);
         this.bSys.battleQuestLootUnlock = 49;
         this.bSys.battleQuestLootCommon = 84;
         this.bSys.battleQuestLootRare = 86;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest11() : *
      {
         this.bSys.bgMgr.createBackground(4,2,2,2);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",600,false,"giant",10000,true);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",450,false);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",400,false);
         this.bSys.battleQuestLootUnlock = 27;
         this.bSys.battleQuestLootCommon = 188;
         this.bSys.battleQuestLootRare = 27;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest12() : *
      {
         this.bSys.bgMgr.createRandomBackground(3,0);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyPortal("ghost",550);
         this.bSys.charMgr.createEnemyPortal("skeleton",450);
         this.bSys.charMgr.createEnemyPortal("zombie",350);
         this.bSys.charMgr.createEnemyUnit("mage","tuxedo",600,false,"",3000,true);
         this.bSys.battleQuestLootUnlock = 51;
         this.bSys.battleQuestLootCommon = 165;
         this.bSys.battleQuestLootRare = 51;
         this.bSys.battleObjective = "time";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest13() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyPortal("skeleton",690);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjaboy",650,false,"",2000,true);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjaboy",600,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjaboy",550,false,"",1500);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "swordmaster";
         this.bSys.battleEnemySpawnWaveSkin = "ninjaboy";
         this.bSys.battleQuestLootUnlock = 50;
         this.bSys.battleQuestLootCommon = 103;
         this.bSys.battleQuestLootRare = 50;
         this.bSys.battleObjective = "time";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest14() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyTower("bird",1500);
         this.bSys.charMgr.createEnemyUnit("tanker","ntank",2600,false,"giant",14000,true);
         this.bSys.charMgr.createEnemyUnit("tanker","ntank",1800,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("fighter","ntank",1700,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("fighter","ntank",900,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("fighter","ntank",800,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("fighter","ntank",700,false,"",2000);
         this.bSys.battleEnemySpawnWaveDelay = 35;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "fighter";
         this.bSys.battleEnemySpawnWaveSkin = "ntank";
         this.bSys.battleQuestLootUnlock = 186;
         this.bSys.battleQuestLootCommon = 185;
         this.bSys.battleQuestLootRare = 31;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest15() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyPortal("skeleton",2500);
         this.bSys.charMgr.createEnemyTower("bird",2600);
         this.bSys.charMgr.createEnemyUnit("mage","handsome_ex",2600,false,"",4000,true);
         this.bSys.charMgr.createEnemyUnit("archer","scout",1800,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("archer","scout",1700,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("warrior","scout",900,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("warrior","scout",800,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("warrior","scout",700,false,"",2000);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "archer";
         this.bSys.battleEnemySpawnWaveSkin = "scout";
         this.bSys.battleQuestLootUnlock = 60;
         this.bSys.battleQuestLootCommon = 63;
         this.bSys.battleQuestLootRare = 60;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest16() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyUnit("fighter","kangroo_ex",600,false,"giant",12000,true);
         this.bSys.charMgr.createEnemyUnit("fighter","kangroo_ex",500,false,"",5000);
         this.bSys.charMgr.createEnemyUnit("fighter","kangroo_ex",450,false,"",5000);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "fighter";
         this.bSys.battleEnemySpawnWaveSkin = "kangroo";
         this.bSys.battleQuestLootUnlock = 53;
         this.bSys.battleQuestLootCommon = 63;
         this.bSys.battleQuestLootRare = 53;
         this.bSys.battleObjective = "time";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest17() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyPortal("skeleton",690);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjagirl",650,false,"",4000,true);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjagirl",600,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","ninjagirl",550,false,"",3000);
         this.bSys.battleEnemySpawnWaveDelay = 15;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "swordmaster";
         this.bSys.battleEnemySpawnWaveSkin = "ninjagirl";
         this.bSys.battleQuestLootUnlock = 52;
         this.bSys.battleQuestLootCommon = 105;
         this.bSys.battleQuestLootRare = 52;
         this.bSys.battleObjective = "time";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest18() : *
      {
         this.bSys.bgMgr.createBackground(4,2,2,2);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",600,false,"giant",10000,true);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",450,false,"giant",10000);
         this.bSys.battleQuestLootUnlock = 188;
         this.bSys.battleQuestLootCommon = 27;
         this.bSys.battleQuestLootRare = 27;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest19() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyTower("bird",1500);
         this.bSys.charMgr.createEnemyUnit("swordmaster","samurai_ex",2600,false,"giant",14000,true);
         this.bSys.charMgr.createEnemyUnit("cavalry","samurai",1800,false,"",4000);
         this.bSys.charMgr.createEnemyUnit("cavalry","samurai",1700,false,"",4000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","samurai",900,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","samurai",800,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","samurai",700,false,"",3000);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "swordmaster";
         this.bSys.battleEnemySpawnWaveSkin = "samurai";
         this.bSys.battleQuestLootUnlock = 37;
         this.bSys.battleQuestLootCommon = 105;
         this.bSys.battleQuestLootRare = 37;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest20() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman",2600,false,"giant",15000,true);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman_ex",1800,false,"",4000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman_ex",1700,false,"",4000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman_ex",900,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman_ex",800,false,"",3000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman_ex",700,false,"",3000);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "cavalry";
         this.bSys.battleEnemySpawnWaveSkin = "roman";
         this.bSys.battleQuestLootUnlock = 36;
         this.bSys.battleQuestLootCommon = 126;
         this.bSys.battleQuestLootRare = 36;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest21() : *
      {
         this.bSys.bgMgr.createRandomBackground(2,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyPortal("skeleton",700);
         this.bSys.charMgr.createEnemyPortal("skeleton",1400);
         this.bSys.charMgr.createEnemyPortal("skeleton",2100);
         this.bSys.charMgr.createEnemyUnit("warrior","elephant",2600,false,"super",30000,true);
         this.bSys.charMgr.createEnemyUnit("warrior","elephant",2200,false,"giant",8000);
         this.bSys.charMgr.createEnemyUnit("warrior","elephant",1500,false,"giant",8000);
         this.bSys.charMgr.createEnemyUnit("warrior","elephant",800,false,"giant",8000);
         this.bSys.battleEnemySpawnWaveDelay = 15;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "warrior";
         this.bSys.battleEnemySpawnWaveSkin = "peasant";
         this.bSys.battleQuestLootUnlock = 43;
         this.bSys.battleQuestLootCommon = 88;
         this.bSys.battleQuestLootRare = 43;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest22() : *
      {
         this.bSys.bgMgr.createBackground(4,2,2,2);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",1000,false,"super",20000,true);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",800,false,"giant",9000);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",700,false,"giant",9000);
         this.bSys.battleQuestLootUnlock = 189;
         this.bSys.battleQuestLootCommon = 191;
         this.bSys.battleQuestLootRare = 27;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest23() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(700);
         this.bSys.charMgr.createEnemyPortal("skeleton",690);
         this.bSys.charMgr.createEnemyUnit("swordmaster","mochi",650,false,"",3000,true);
         this.bSys.charMgr.createEnemyUnit("swordmaster","mochi",600,false,"",2000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","mochi",550,false,"",2000);
         this.bSys.battleEnemySpawnWaveDelay = 15;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "swordmaster";
         this.bSys.battleEnemySpawnWaveSkin = "mochi";
         this.bSys.battleQuestLootUnlock = 55;
         this.bSys.battleQuestLootCommon = 109;
         this.bSys.battleQuestLootRare = 55;
         this.bSys.battleObjective = "time";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest24() : *
      {
         this.bSys.bgMgr.createBackground(4,2,2,2);
         this.bSys.bgMgr.setLengthArea(1400);
         this.bSys.charMgr.createEnemyUnit("warrior","demon_ex",1200,false,"giant",20000,true);
         this.bSys.battleQuestLootUnlock = 28;
         this.bSys.battleQuestLootCommon = 92;
         this.bSys.battleQuestLootRare = 28;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest25() : *
      {
         this.bSys.bgMgr.createBackground(4,0,0,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyUnit("fighter","superhero_ex3",2000,false,"super",250000,true);
         this.bSys.charMgr.createEnemyUnit("fighter","superhero_ex",1400,false,"giant",40000);
         this.bSys.charMgr.createEnemyUnit("fighter","superhero_ex",1200,false,"",10000);
         this.bSys.charMgr.createEnemyUnit("fighter","superhero_ex",1000,false,"mini",1000);
         this.bSys.battleQuestLootUnlock = 32;
         this.bSys.battleQuestLootCommon = 185;
         this.bSys.battleQuestLootRare = 190;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest26() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyTower("bird",1500);
         this.bSys.charMgr.createEnemyUnit("tanker","p-bot",2600,false,"giant",90000,true);
         this.bSys.charMgr.createEnemyUnit("tanker","ntank",1800,false,"",9000);
         this.bSys.charMgr.createEnemyUnit("tanker","ntank",1700,false,"",9000);
         this.bSys.charMgr.createEnemyUnit("tanker","ntank",900,false,"",9000);
         this.bSys.charMgr.createEnemyUnit("tanker","ntank",800,false,"",9000);
         this.bSys.charMgr.createEnemyUnit("tanker","ntank",700,false,"",9000);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "fighter";
         this.bSys.battleEnemySpawnWaveSkin = "ntank";
         this.bSys.battleQuestLootUnlock = 212;
         this.bSys.battleQuestLootCommon = 44;
         this.bSys.battleQuestLootRare = 211;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest27() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyTower("bird",1500);
         this.bSys.charMgr.createEnemyUnit("archer","angel_ex",2600,false,"",30000,true);
         this.bSys.charMgr.createEnemyUnit("mage","badgirl_ex",2500,false,"",12000);
         this.bSys.charMgr.createEnemyUnit("thrower","maid_ex",2000,false,"",12000);
         this.bSys.charMgr.createEnemyUnit("tanker","pirate_ex",1900,false,"",25000);
         this.bSys.charMgr.createEnemyUnit("archer","merman",1200,false,"",12000);
         this.bSys.charMgr.createEnemyUnit("fighter","valkyrie_ex",1000,false,"",18000);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "swordmaster";
         this.bSys.battleEnemySpawnWaveSkin = "ninjagirl";
         this.bSys.battleQuestLootUnlock = 40;
         this.bSys.battleQuestLootCommon = 151;
         this.bSys.battleQuestLootRare = 152;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest28() : *
      {
         this.bSys.bgMgr.createBackground(4,2,2,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","gatotkaca_ex",2000,false,"giant",170000,true);
         this.bSys.battleEnemySpawnWaveDelay = 30;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "warrior";
         this.bSys.battleEnemySpawnWaveSkin = "scout";
         this.bSys.battleQuestLootUnlock = 29;
         this.bSys.battleQuestLootCommon = 107;
         this.bSys.battleQuestLootRare = 111;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest29() : *
      {
         this.bSys.bgMgr.createBackground(4,1,1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyBoss("snow",2500);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",1200,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",1100,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",1000,false,"",1500);
         this.bSys.charMgr.createEnemyUnit("thrower","cubbyboy",900,false,"",1500);
         this.bSys.battleEnemySpawnWaveDelay = 20;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "thrower";
         this.bSys.battleEnemySpawnWaveSkin = "cubbyboy";
         this.bSys.battleQuestLootUnlock = 131;
         this.bSys.battleQuestLootCommon = 110;
         this.bSys.battleQuestLootRare = 111;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function initQuest30() : *
      {
         this.bSys.bgMgr.createRandomBackground(1,0);
         this.bSys.bgMgr.setLengthArea(3000);
         this.bSys.charMgr.createEnemyUnit("swordmaster","greg_boss",2600,false,"giant",650000,true);
         this.bSys.charMgr.createEnemyUnit("swordmaster","superhero_ex2",2100,false,"giant",50000);
         this.bSys.charMgr.createEnemyUnit("warrior","demon_ex",1800,false,"giant",30000);
         this.bSys.charMgr.createEnemyUnit("warrior","elephant",1500,false,"giant",25000);
         this.bSys.charMgr.createEnemyUnit("figther","mike_ex",1300,false,"giant",18000);
         this.bSys.charMgr.createEnemyUnit("cavalry","roman_ex",1000,false,"giant",15000);
         this.bSys.charMgr.createEnemyUnit("warrior","totem",700,false,"giant",12000);
         this.bSys.battleEnemySpawnWaveDelay = 25;
         this.bSys.battleEnemySpawnWaveLv = 0;
         this.bSys.battleEnemySpawnWaveClass = "fighter";
         this.bSys.battleEnemySpawnWaveSkin = "flash";
         this.bSys.battleQuestLootUnlock = 56;
         this.bSys.battleQuestLootCommon = 171;
         this.bSys.battleQuestLootRare = 231;
         this.bSys.battleObjective = "boss";
         this.bSys.battleType = "quest";
      }
      
      public function update() : *
      {
      }
   }
}

