package Game.System.Battle
{
   import Game.System.Background.*;
   import Game.System.Character.*;
   import Game.System.Spell.*;
   
   public class BattleSystem
   {
      
      private var mGF:*;
      
      public var ui:*;
      
      public var cmd:*;
      
      public var mission:*;
      
      public var bgMgr:*;
      
      public var charMgr:*;
      
      public var spellMgr:*;
      
      public var walkOpenAreaX:int = 0;
      
      public var frameNumberPerSec:int = 0;
      
      public var frameNumberPerHalfSec:int = 0;
      
      public var frameNumberGenerate:int = 0;
      
      public var battleMana:Number = 0;
      
      public var battleManaMax:int = 200;
      
      public var battleManaRegen:Number = 5;
      
      public var battleTimerCtrDelay:int = 0;
      
      public var battleTimeSec:int = 0;
      
      public var battleTimeLimitSec:int = 300;
      
      public var battleType:String = "mission";
      
      public var battleQuestReward:int = 0;
      
      public var battleQuestLootUnlock:int = 0;
      
      public var battleQuestLootRare:int = 0;
      
      public var battleQuestLootCommon:int = 0;
      
      public var battleObjective:String = "normal";
      
      public var battleQuestName:String = "blah bla";
      
      public var battleEvent:String = "init";
      
      public var battleResult:String = "quit";
      
      public var battleCutSceneStartID:int = 0;
      
      public var battleCutSceneEndID:int = 0;
      
      public var battleAllySoldierKill:int = 0;
      
      public var battleAllyHeroKill:int = 0;
      
      public var battleEnemySoldierKill:int = 0;
      
      public var battleEnemyBossKill:int = 0;
      
      public var battleEnemyHeroKill:int = 0;
      
      public var battleAllySoldierOnScreen:int = 0;
      
      public var battleEnemySoldierOnScreen:int = 0;
      
      public var battleEnemyUndeadOnScreen:int = 0;
      
      public var battleEnemyRevengeWaveCount:int = 0;
      
      public var battleEnemyRevengeWaveLv:int = 0;
      
      public var battleEnemySpawnWaveDelay:int = 20;
      
      public var battleEnemySpawnWaveDelayTimerSec:int = 0;
      
      public var battleEnemySpawnWaveLv:int = 0;
      
      public var battleEnemySpawnWaveClass:String = "";
      
      public var battleEnemySpawnWaveSkin:String = "";
      
      public const PLAYER_UNIT_CAP:* = 8;
      
      public const ENEMY_UNIT_CAP:* = 16;
      
      public function BattleSystem(_mGF:*, _UI:*)
      {
         super();
         this.mGF = _mGF;
         this.ui = _UI;
         this.ui.mana.bar.scaleX = 0;
         this.ui.mana.value.htmlText = String(this.battleMana + " / " + this.battleManaMax);
         this.ui.info.htmlText = String("Battle Start !!");
         this.ui.total.htmlText = String(0 + " / " + this.PLAYER_UNIT_CAP);
      }
      
      public function destroy() : *
      {
         if(this.mission)
         {
            this.mission.destroy();
            this.mission = null;
         }
         if(this.cmd)
         {
            this.cmd.destroy();
            this.cmd = null;
         }
         if(this.spellMgr)
         {
            this.spellMgr.destroy();
            this.spellMgr = null;
         }
         if(this.charMgr)
         {
            this.charMgr.destroy();
            this.charMgr = null;
         }
         if(this.bgMgr)
         {
            this.bgMgr.destroy();
            this.bgMgr = null;
         }
      }
      
      public function init() : *
      {
         this.charMgr = new CharacterMgr(this.mGF,this);
         this.charMgr.init();
         this.bgMgr = new BackgroundMgr(this.mGF,this);
         this.bgMgr.init();
         this.spellMgr = new SpellMgr(this.mGF,this);
         this.spellMgr.init();
         this.cmd = new BattleCommand(this.mGF,this);
         this.cmd.init();
         this.mission = new BattleMission(this.mGF,this);
         this.mission.init();
         this.mGF.isPaused = false;
      }
      
      public function startTutorial() : *
      {
         this.charMgr.createPlayerHero();
         this.battleManaMax = 200;
         this.battleMana = this.battleManaMax * 0.4;
         this.battleManaRegen = 1.5;
         this.mission.initTutorial();
         this.mGF.soundMgr.playBgmBattleNormal();
      }
      
      public function startMission(ID:int = 1, QUESTNAME:String = "", REWARD:int = 0) : *
      {
         this.charMgr.createPlayerHero();
         this.battleManaMax = 200;
         this.battleMana = this.battleManaMax * 0.4;
         this.battleManaRegen = 1.5;
         if(this.mGF.datMgr.hero_boost_mana == 1)
         {
            this.battleManaMax = 250;
            this.battleMana = this.battleManaMax * 0.4;
            this.battleManaRegen = 2;
         }
         if(this.mGF.datMgr.hero_boost_mana == 2)
         {
            this.battleManaMax = 300;
            this.battleMana = this.battleManaMax * 0.4;
            this.battleManaRegen = 2.5;
         }
         if(this.mGF.datMgr.hero_boost_mana == 3)
         {
            this.battleManaMax = 400;
            this.battleMana = this.battleManaMax * 0.4;
            this.battleManaRegen = 3;
         }
         if(ID == 1)
         {
            this.mission.initMission01();
         }
         else if(ID == 2)
         {
            this.mission.initMission02();
         }
         else if(ID == 3)
         {
            this.mission.initMission03();
         }
         else if(ID == 4)
         {
            this.mission.initMission04();
         }
         else if(ID == 5)
         {
            this.mission.initMission05();
         }
         else if(ID == 6)
         {
            this.mission.initMission06();
         }
         else if(ID == 7)
         {
            this.mission.initMission07();
         }
         else if(ID == 8)
         {
            this.mission.initMission08();
         }
         else if(ID == 9)
         {
            this.mission.initMission09();
         }
         else if(ID == 10)
         {
            this.mission.initMission10();
         }
         else if(ID == 11)
         {
            this.mission.initMission11();
         }
         else if(ID == 12)
         {
            this.mission.initMission12();
         }
         if(ID == 21)
         {
            this.mission.initQuest01();
         }
         else if(ID == 22)
         {
            this.mission.initQuest02();
         }
         else if(ID == 23)
         {
            this.mission.initQuest03();
         }
         else if(ID == 24)
         {
            this.mission.initQuest04();
         }
         else if(ID == 25)
         {
            this.mission.initQuest05();
         }
         else if(ID == 26)
         {
            this.mission.initQuest06();
         }
         else if(ID == 27)
         {
            this.mission.initQuest07();
         }
         else if(ID == 28)
         {
            this.mission.initQuest08();
         }
         else if(ID == 29)
         {
            this.mission.initQuest09();
         }
         else if(ID == 30)
         {
            this.mission.initQuest10();
         }
         else if(ID == 31)
         {
            this.mission.initQuest11();
         }
         else if(ID == 32)
         {
            this.mission.initQuest12();
         }
         else if(ID == 33)
         {
            this.mission.initQuest13();
         }
         else if(ID == 34)
         {
            this.mission.initQuest14();
         }
         else if(ID == 35)
         {
            this.mission.initQuest15();
         }
         else if(ID == 36)
         {
            this.mission.initQuest16();
         }
         else if(ID == 37)
         {
            this.mission.initQuest17();
         }
         else if(ID == 38)
         {
            this.mission.initQuest18();
         }
         else if(ID == 39)
         {
            this.mission.initQuest19();
         }
         else if(ID == 40)
         {
            this.mission.initQuest20();
         }
         else if(ID == 41)
         {
            this.mission.initQuest21();
         }
         else if(ID == 42)
         {
            this.mission.initQuest22();
         }
         else if(ID == 43)
         {
            this.mission.initQuest23();
         }
         else if(ID == 44)
         {
            this.mission.initQuest24();
         }
         else if(ID == 45)
         {
            this.mission.initQuest25();
         }
         else if(ID == 46)
         {
            this.mission.initQuest26();
         }
         else if(ID == 47)
         {
            this.mission.initQuest27();
         }
         else if(ID == 48)
         {
            this.mission.initQuest28();
         }
         else if(ID == 49)
         {
            this.mission.initQuest29();
         }
         else if(ID == 50)
         {
            this.mission.initQuest30();
         }
         if(this.battleObjective == "normal")
         {
            this.mGF.soundMgr.playBgmBattleNormal();
         }
         else if(this.battleObjective == "time")
         {
            this.mGF.soundMgr.playBgmBattleDefend();
         }
         else if(this.battleObjective == "boss")
         {
            this.mGF.soundMgr.playBgmBattleBoss();
         }
         this.battleQuestName = QUESTNAME;
         this.battleQuestReward = REWARD;
      }
      
      public function getFrameNumberGenerator() : int
      {
         ++this.frameNumberGenerate;
         if(this.frameNumberGenerate >= 12)
         {
            this.frameNumberGenerate = 0;
         }
         return this.frameNumberGenerate;
      }
      
      public function setMana(VAL:int = 0) : *
      {
         if(this.ui)
         {
            this.battleMana = Math.min(Math.max(VAL,0),this.battleManaMax);
            this.ui.mana.bar.scaleX = Math.min(Math.max(Math.floor(this.battleMana) / this.battleManaMax,0),1);
            this.ui.mana.value.htmlText = String(Math.floor(this.battleMana) + " / " + this.battleManaMax);
         }
      }
      
      private function totalUnitOnScreenUpdate() : *
      {
         var child:* = undefined;
         var i:* = undefined;
         this.battleAllySoldierOnScreen = 0;
         this.battleEnemySoldierOnScreen = 0;
         this.battleEnemyUndeadOnScreen = 0;
         var numChildren:int = int(this.mGF.contUNIT.numChildren);
         for(i = 0; i < numChildren; i++)
         {
            child = this.mGF.contUNIT.getChildAt(i);
            if(child.type == "ally")
            {
               if(child.chrClass.isSoldier)
               {
                  ++this.battleAllySoldierOnScreen;
               }
            }
            else if(child.type == "enemy")
            {
               if(child.chrClass.isSoldier)
               {
                  ++this.battleEnemySoldierOnScreen;
               }
               if(child.chrClass.isUndead)
               {
                  ++this.battleEnemyUndeadOnScreen;
               }
            }
         }
      }
      
      private function getEnemyHeroState() : Number
      {
         var child:* = undefined;
         var i:* = undefined;
         var hpState:Number = 1;
         var numChildren:int = int(this.mGF.contUNIT.numChildren);
         for(i = 0; i < numChildren; i++)
         {
            child = this.mGF.contUNIT.getChildAt(i);
            if(child.type == "enemy")
            {
               if(child.chrClass.isHero)
               {
                  hpState = Math.min(Math.max(child.health / child.healthMax,0),1);
                  break;
               }
            }
         }
         return hpState;
      }
      
      private function spawnEnemyWave(LV:int = 1, TOTAL:int = 1, CLASS:String = "", SKIN:String = "") : *
      {
         var i:int = 0;
         var randVal:Number = Math.random();
         for(i = 0; i < TOTAL; i++)
         {
            if(this.battleEnemySoldierOnScreen >= this.ENEMY_UNIT_CAP)
            {
               return;
            }
            if(LV == 1)
            {
               if(randVal <= 0.25)
               {
                  this.charMgr.createEnemyUnit("warrior","peasant",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.25 && randVal <= 0.5)
               {
                  this.charMgr.createEnemyUnit("archer","hobbit",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.5 && randVal <= 0.75)
               {
                  this.charMgr.createEnemyUnit("fighter","cubbyboy",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else
               {
                  this.charMgr.createEnemyUnit("warrior","druid",this.mGF.areaWidth + Math.random() * 100,true);
               }
            }
            else if(LV == 2)
            {
               if(randVal <= 0.25)
               {
                  this.charMgr.createEnemyUnit("warrior","totem",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.25 && randVal <= 0.5)
               {
                  this.charMgr.createEnemyUnit("archer","robin",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.5 && randVal <= 0.75)
               {
                  this.charMgr.createEnemyUnit("swordmaster","shinobi",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else
               {
                  this.charMgr.createEnemyUnit("fighter","maid",this.mGF.areaWidth + Math.random() * 100,true);
               }
            }
            else if(LV == 3)
            {
               if(randVal <= 0.25)
               {
                  this.charMgr.createEnemyUnit("thrower","killer",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.25 && randVal <= 0.5)
               {
                  this.charMgr.createEnemyUnit("archer","ninjagirl",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.5 && randVal <= 0.75)
               {
                  this.charMgr.createEnemyUnit("swordmaster","ninjaboy",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else
               {
                  this.charMgr.createEnemyUnit("mage","phantom",this.mGF.areaWidth + Math.random() * 100,true);
               }
            }
            else if(LV == 4)
            {
               if(randVal <= 0.25)
               {
                  this.charMgr.createEnemyUnit("fighter","mike",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.25 && randVal <= 0.5)
               {
                  this.charMgr.createEnemyUnit("warrior","boxer",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.5 && randVal <= 0.75)
               {
                  this.charMgr.createEnemyUnit("swordmaster","samurai",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else
               {
                  this.charMgr.createEnemyUnit("cavalry","roman",this.mGF.areaWidth + Math.random() * 100,true);
               }
            }
            else if(LV == 5)
            {
               if(randVal <= 0.25)
               {
                  this.charMgr.createEnemyUnit("fighter","demon",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.25 && randVal <= 0.5)
               {
                  this.charMgr.createEnemyUnit("archer","valkyrie",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.5 && randVal <= 0.75)
               {
                  this.charMgr.createEnemyUnit("swordmaster","knight",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else
               {
                  this.charMgr.createEnemyUnit("cavalry","templar_ex",this.mGF.areaWidth + Math.random() * 100,true);
               }
            }
            else if(LV == 6)
            {
               if(randVal <= 0.25)
               {
                  this.charMgr.createEnemyUnit("warrior","elephant_ex",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.25 && randVal <= 0.5)
               {
                  this.charMgr.createEnemyUnit("archer","angel_ex",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else if(randVal > 0.5 && randVal <= 0.75)
               {
                  this.charMgr.createEnemyUnit("swordmaster","superhero_ex",this.mGF.areaWidth + Math.random() * 100,true);
               }
               else
               {
                  this.charMgr.createEnemyUnit("cavalry","knight_ex",this.mGF.areaWidth + Math.random() * 100,true);
               }
            }
            else if(CLASS != "" && SKIN != "")
            {
               this.charMgr.createEnemyUnit(CLASS,SKIN,this.mGF.areaWidth + Math.random() * 100,true);
            }
         }
      }
      
      private function enemyWaveUpdate() : *
      {
         this.battleEnemySpawnWaveDelayTimerSec = Math.max(this.battleEnemySpawnWaveDelayTimerSec - 1,0);
         if(this.battleEnemySpawnWaveDelayTimerSec <= 0)
         {
            this.battleEnemySpawnWaveDelayTimerSec = this.battleEnemySpawnWaveDelay + Math.random() * this.battleEnemySpawnWaveDelay * 0.5;
            this.spawnEnemyWave(this.battleEnemySpawnWaveLv,1,this.battleEnemySpawnWaveClass,this.battleEnemySpawnWaveSkin);
         }
         if(this.battleEnemyRevengeWaveCount == 3 && this.getEnemyHeroState() <= 0.7)
         {
            this.battleEnemyRevengeWaveCount = 2;
            this.spawnEnemyWave(this.battleEnemyRevengeWaveLv,3);
            trace("COUNTER 70%!!");
         }
         else if(this.battleEnemyRevengeWaveCount == 2 && this.getEnemyHeroState() <= 0.5)
         {
            this.battleEnemyRevengeWaveCount = 1;
            this.spawnEnemyWave(this.battleEnemyRevengeWaveLv,3);
            trace("COUNTER 50%!!");
         }
         else if(this.battleEnemyRevengeWaveCount == 1 && this.getEnemyHeroState() <= 0.3)
         {
            this.battleEnemyRevengeWaveCount = 0;
            this.spawnEnemyWave(this.battleEnemyRevengeWaveLv,3);
            trace("COUNTER 30%!!");
         }
      }
      
      private function createCutSceneStart() : Boolean
      {
         var clip:* = null;
         if(this.mGF.datMgr.hero_type == 1)
         {
            if(this.mGF.datMgr.mission_stage == 1)
            {
               clip = new hero1_start_01();
            }
            else if(this.mGF.datMgr.mission_stage == 2)
            {
               clip = new hero1_start_02();
            }
            else if(this.mGF.datMgr.mission_stage == 3)
            {
               clip = new hero1_start_03();
            }
            else if(this.mGF.datMgr.mission_stage == 4)
            {
               clip = new hero1_start_04();
            }
            else if(this.mGF.datMgr.mission_stage == 5)
            {
               clip = new hero1_start_05();
            }
            else if(this.mGF.datMgr.mission_stage == 6)
            {
               clip = new hero1_start_06();
            }
            else if(this.mGF.datMgr.mission_stage == 7)
            {
               clip = new hero1_start_07();
            }
            else if(this.mGF.datMgr.mission_stage == 8)
            {
               clip = new hero1_start_08();
            }
            else if(this.mGF.datMgr.mission_stage == 9)
            {
               clip = new hero1_start_09();
            }
            else if(this.mGF.datMgr.mission_stage == 10)
            {
               clip = new hero1_start_10();
            }
            else if(this.mGF.datMgr.mission_stage == 11)
            {
               clip = new hero1_start_11();
            }
            else if(this.mGF.datMgr.mission_stage == 12)
            {
               clip = new hero1_start_12();
            }
         }
         else if(this.mGF.datMgr.hero_type == 2)
         {
            if(this.mGF.datMgr.mission_stage == 1)
            {
               clip = new hero2_start_01();
            }
            else if(this.mGF.datMgr.mission_stage == 2)
            {
               clip = new hero2_start_02();
            }
            else if(this.mGF.datMgr.mission_stage == 3)
            {
               clip = new hero2_start_03();
            }
            else if(this.mGF.datMgr.mission_stage == 5)
            {
               clip = new hero2_start_05();
            }
            else if(this.mGF.datMgr.mission_stage == 6)
            {
               clip = new hero2_start_06();
            }
            else if(this.mGF.datMgr.mission_stage == 7)
            {
               clip = new hero2_start_07();
            }
            else if(this.mGF.datMgr.mission_stage == 9)
            {
               clip = new hero2_start_09();
            }
            else if(this.mGF.datMgr.mission_stage == 10)
            {
               clip = new hero2_start_10();
            }
            else if(this.mGF.datMgr.mission_stage == 12)
            {
               clip = new hero2_start_12();
            }
         }
         else if(this.mGF.datMgr.hero_type == 3)
         {
            if(this.mGF.datMgr.mission_stage == 1)
            {
               clip = new hero3_start_01();
            }
            else if(this.mGF.datMgr.mission_stage == 2)
            {
               clip = new hero3_start_02();
            }
            else if(this.mGF.datMgr.mission_stage == 3)
            {
               clip = new hero3_start_03();
            }
            else if(this.mGF.datMgr.mission_stage == 5)
            {
               clip = new hero3_start_05();
            }
            else if(this.mGF.datMgr.mission_stage == 6)
            {
               clip = new hero3_start_06();
            }
            else if(this.mGF.datMgr.mission_stage == 7)
            {
               clip = new hero3_start_07();
            }
            else if(this.mGF.datMgr.mission_stage == 8)
            {
               clip = new hero3_start_08();
            }
            else if(this.mGF.datMgr.mission_stage == 9)
            {
               clip = new hero3_start_09();
            }
            else if(this.mGF.datMgr.mission_stage == 10)
            {
               clip = new hero3_start_10();
            }
            else if(this.mGF.datMgr.mission_stage == 11)
            {
               clip = new hero3_start_11();
            }
            else if(this.mGF.datMgr.mission_stage == 12)
            {
               clip = new hero3_start_12();
            }
         }
         if(clip)
         {
            clip.init(this.mGF,this,0);
         }
         if(clip)
         {
            return true;
         }
         return false;
      }
      
      private function createCutSceneAfter() : Boolean
      {
         var clip:* = null;
         if(this.mGF.datMgr.hero_type == 1)
         {
            if(this.mGF.datMgr.mission_stage == 1)
            {
               clip = new hero1_after_01();
            }
            else if(this.mGF.datMgr.mission_stage == 2)
            {
               clip = new hero1_after_02();
            }
            else if(this.mGF.datMgr.mission_stage == 3)
            {
               clip = new hero1_after_03();
            }
            else if(this.mGF.datMgr.mission_stage == 4)
            {
               clip = new hero1_after_04();
            }
            else if(this.mGF.datMgr.mission_stage == 5)
            {
               clip = new hero1_after_05();
            }
            else if(this.mGF.datMgr.mission_stage == 6)
            {
               clip = new hero1_after_06();
            }
            else if(this.mGF.datMgr.mission_stage == 7)
            {
               clip = new hero1_after_07();
            }
            else if(this.mGF.datMgr.mission_stage == 8)
            {
               clip = new hero1_after_08();
            }
            else if(this.mGF.datMgr.mission_stage == 9)
            {
               clip = new hero1_after_09();
            }
            else if(this.mGF.datMgr.mission_stage == 10)
            {
               clip = new hero1_after_10();
            }
            else if(this.mGF.datMgr.mission_stage == 11)
            {
               clip = new hero1_after_11();
            }
         }
         else if(this.mGF.datMgr.hero_type == 2)
         {
            if(this.mGF.datMgr.mission_stage == 1)
            {
               clip = new hero2_after_01();
            }
            else if(this.mGF.datMgr.mission_stage == 2)
            {
               clip = new hero2_after_02();
            }
            else if(this.mGF.datMgr.mission_stage == 3)
            {
               clip = new hero2_after_03();
            }
            else if(this.mGF.datMgr.mission_stage == 4)
            {
               clip = new hero2_after_04();
            }
            else if(this.mGF.datMgr.mission_stage == 5)
            {
               clip = new hero2_after_05();
            }
            else if(this.mGF.datMgr.mission_stage == 6)
            {
               clip = new hero2_after_06();
            }
            else if(this.mGF.datMgr.mission_stage == 7)
            {
               clip = new hero2_after_07();
            }
            else if(this.mGF.datMgr.mission_stage == 8)
            {
               clip = new hero2_after_08();
            }
            else if(this.mGF.datMgr.mission_stage == 9)
            {
               clip = new hero2_after_09();
            }
            else if(this.mGF.datMgr.mission_stage == 10)
            {
               clip = new hero2_after_10();
            }
            else if(this.mGF.datMgr.mission_stage == 11)
            {
               clip = new hero2_after_11();
            }
         }
         else if(this.mGF.datMgr.hero_type == 3)
         {
            if(this.mGF.datMgr.mission_stage == 1)
            {
               clip = new hero3_after_01();
            }
            else if(this.mGF.datMgr.mission_stage == 2)
            {
               clip = new hero3_after_02();
            }
            else if(this.mGF.datMgr.mission_stage == 3)
            {
               clip = new hero3_after_03();
            }
            else if(this.mGF.datMgr.mission_stage == 4)
            {
               clip = new hero3_after_04();
            }
            else if(this.mGF.datMgr.mission_stage == 5)
            {
               clip = new hero3_after_05();
            }
            else if(this.mGF.datMgr.mission_stage == 6)
            {
               clip = new hero3_after_06();
            }
            else if(this.mGF.datMgr.mission_stage == 7)
            {
               clip = new hero3_after_07();
            }
            else if(this.mGF.datMgr.mission_stage == 8)
            {
               clip = new hero3_after_08();
            }
            else if(this.mGF.datMgr.mission_stage == 9)
            {
               clip = new hero3_after_09();
            }
            else if(this.mGF.datMgr.mission_stage == 10)
            {
               clip = new hero3_after_10();
            }
            else if(this.mGF.datMgr.mission_stage == 11)
            {
               clip = new hero3_after_11();
            }
         }
         if(clip)
         {
            clip.init(this.mGF,this,1);
         }
         if(clip)
         {
            return true;
         }
         return false;
      }
      
      public function update() : *
      {
         if(this.mGF.isPaused)
         {
            return;
         }
         if(this.bgMgr)
         {
            this.bgMgr.update();
         }
         if(this.charMgr)
         {
            this.charMgr.update();
         }
         if(this.spellMgr)
         {
            this.spellMgr.update();
         }
         if(this.cmd)
         {
            this.cmd.update();
         }
         if(this.mission)
         {
            this.mission.update();
         }
         ++this.frameNumberPerHalfSec;
         if(this.frameNumberPerHalfSec >= 12)
         {
            this.frameNumberPerHalfSec = 0;
         }
         ++this.frameNumberPerSec;
         if(this.frameNumberPerSec >= 24)
         {
            this.frameNumberPerSec = 0;
         }
         if(this.battleEvent == "init")
         {
            if(this.battleType == "mission" && this.createCutSceneStart())
            {
               this.battleEvent = "cutscene";
            }
            else
            {
               this.battleEvent = "engage_init";
            }
         }
         else if(this.battleEvent != "cutscene")
         {
            if(this.battleEvent == "engage_init")
            {
               this.battleEvent = "engage";
               if(this.cmd)
               {
                  this.cmd.showCommand();
               }
            }
            else if(this.battleEvent == "engage")
            {
               if(this.frameNumberPerHalfSec == 0)
               {
                  this.setMana(this.battleMana + this.battleManaRegen);
               }
               if(this.frameNumberPerSec == 0)
               {
                  if(this.battleObjective == "time")
                  {
                     this.battleTimeSec = Math.min(this.battleTimeSec + 1,99999999);
                     this.ui.info.htmlText = String("Survive! \t\t[ " + this.mGF.utilMgr.formatTime(Math.max(this.battleTimeLimitSec - this.battleTimeSec,0),1) + " ]");
                  }
                  else if(this.battleObjective == "boss")
                  {
                     this.ui.info.htmlText = String("Slay target enemy!");
                  }
                  else
                  {
                     this.ui.info.htmlText = String("Defeat enemy hero!");
                  }
                  this.totalUnitOnScreenUpdate();
                  this.ui.total.htmlText = String(Math.min(this.battleAllySoldierOnScreen,this.PLAYER_UNIT_CAP) + " / " + this.PLAYER_UNIT_CAP);
                  this.enemyWaveUpdate();
               }
               if(this.battleAllyHeroKill > 0)
               {
                  this.battleEvent = "lose";
               }
               if(this.battleObjective == "boss")
               {
                  if(this.battleEnemyBossKill > 0)
                  {
                     this.battleEvent = "win";
                  }
               }
               else if(this.battleObjective == "time")
               {
                  if(this.battleTimeSec >= this.battleTimeLimitSec || this.battleEnemyBossKill > 0 || this.battleEnemyHeroKill > 0)
                  {
                     this.battleEvent = "win";
                  }
               }
               else if(this.battleEnemyHeroKill > 0)
               {
                  this.battleEvent = "win";
               }
            }
            else if(this.battleEvent == "win")
            {
               this.charMgr.setPlayerWin();
               this.battleTimerCtrDelay = 24 * 5;
               this.battleResult = "win";
               this.battleEvent = "result_delay";
               if(this.cmd)
               {
                  this.cmd.hideCommand();
               }
               trace("win state");
               trace("battleEnemyHeroKill=" + this.battleEnemyHeroKill);
            }
            else if(this.battleEvent == "lose")
            {
               this.charMgr.setEnemyWin();
               this.battleTimerCtrDelay = 24 * 5;
               this.battleResult = "lose";
               this.battleEvent = "result_delay";
               if(this.cmd)
               {
                  this.cmd.hideCommand();
               }
               trace("lose state");
            }
            else if(this.battleEvent == "result_delay")
            {
               this.battleTimerCtrDelay = Math.max(this.battleTimerCtrDelay - 1,0);
               if(this.battleTimerCtrDelay <= 0)
               {
                  if(this.battleResult == "win")
                  {
                     if(this.battleType == "mission" && this.createCutSceneAfter())
                     {
                        this.battleEvent = "cutscene";
                     }
                     else
                     {
                        this.battleEvent = "result";
                     }
                  }
                  else
                  {
                     this.battleEvent = "result";
                  }
               }
            }
            else if(this.battleEvent == "result")
            {
               if(this.battleResult == "win")
               {
                  if(this.battleType == "mission")
                  {
                     this.mGF.datMgr.mission_stage += 1;
                     if(this.mGF.datMgr.mission_stage > 12)
                     {
                        if(this.mGF.datMgr.hero_type == 1)
                        {
                           this.mGF.datMgr.hero_1_competed += 1;
                        }
                        if(this.mGF.datMgr.hero_type == 2)
                        {
                           this.mGF.datMgr.hero_2_competed += 1;
                        }
                        if(this.mGF.datMgr.hero_type == 3)
                        {
                           this.mGF.datMgr.hero_3_competed += 1;
                        }
                     }
                  }
                  this.mGF.datMgr.stat_total_battle += 1;
               }
               this.battleEvent = "";
               this.ui.endBattle();
            }
         }
      }
      
      public function updateTutorial() : *
      {
         this.battleEvent = "engage";
         if(this.bgMgr)
         {
            this.bgMgr.update();
         }
         if(this.charMgr)
         {
            this.charMgr.update();
         }
         if(this.spellMgr)
         {
            this.spellMgr.update();
         }
         if(this.cmd)
         {
            this.cmd.update();
         }
         ++this.frameNumberPerHalfSec;
         if(this.frameNumberPerHalfSec >= 12)
         {
            this.frameNumberPerHalfSec = 0;
         }
         ++this.frameNumberPerSec;
         if(this.frameNumberPerSec >= 24)
         {
            this.frameNumberPerSec = 0;
         }
         if(this.frameNumberPerHalfSec == 0)
         {
            this.setMana(this.battleMana + this.battleManaRegen);
         }
         if(this.frameNumberPerSec == 0)
         {
            this.ui.info.htmlText = String("Defeat enemy hero!");
            this.totalUnitOnScreenUpdate();
            this.ui.total.htmlText = String(Math.min(this.battleAllySoldierOnScreen,this.PLAYER_UNIT_CAP) + " / " + this.PLAYER_UNIT_CAP);
         }
      }
   }
}

