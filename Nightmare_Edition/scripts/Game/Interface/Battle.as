package Game.Interface
{
   import Game.System.Battle.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class Battle extends MovieClip
   {
      
      public var btn_pause:SimpleButton;
      
      public var scrollmap:MovieClip;
      
      public var speedboost:MovieClip;
      
      public var total:TextField;
      
      public var mana:MovieClip;
      
      public var areaclick:MovieClip;
      
      public var btn_quit:SimpleButton;
      
      public var switch_cmd:SimpleButton;
      
      public var spell_cmd:MovieClip;
      
      public var unit_cmd:MovieClip;
      
      public var info:TextField;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      public var isRequestQuit:Boolean = false;
      
      private var delay:int = 0;
      
      private var isEndBattle:Boolean = false;
      
      public function Battle()
      {
         super();
      }
      
      public function init(_mGF:*) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.btn_quit.addEventListener(MouseEvent.CLICK,this.quitClick,false,0,true);
         this.btn_pause.addEventListener(MouseEvent.CLICK,this.pauseClick,false,0,true);
         this.mGF.stageRoot.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         this.bSys = new BattleSystem(this.mGF,this);
         this.bSys.init();
         this.isRequestQuit = false;
         this.isEndBattle = false;
         var clip:* = new transisi_start_mc();
         clip.init(this.mGF);
         trace("init battle ... ok !");
      }
      
      public function startMissionInit(ID:int = 1, QUESTNAME:String = "", REWARD:int = 0) : *
      {
         if(this.bSys)
         {
            this.bSys.startMission(ID,QUESTNAME,REWARD);
         }
      }
      
      public function destroy() : *
      {
         if(this.bSys)
         {
            this.bSys.destroy();
            this.bSys = null;
         }
         this.btn_quit.removeEventListener(MouseEvent.CLICK,this.quitClick);
         this.btn_pause.removeEventListener(MouseEvent.CLICK,this.pauseClick);
         this.mGF.stageRoot.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy battle ... ok !");
      }
      
      public function endBattle() : *
      {
         var clip:* = new transisi_end_mc();
         clip.init(this.mGF);
         this.delay = 25;
         this.isEndBattle = true;
      }
      
      private function battleResult() : *
      {
         var clip:* = new result_mc();
         clip.init(this.mGF);
         var killBonus:int = this.bSys.battleEnemySoldierKill * 10 + this.bSys.battleEnemyHeroKill * 100 + this.bSys.battleEnemyBossKill * 1000;
         var questReward:int = int(this.bSys.battleQuestReward);
         var questLootUnlock:int = int(this.bSys.battleQuestLootUnlock);
         var questLootCommon:int = int(this.bSys.battleQuestLootCommon);
         var questLootRare:int = int(this.bSys.battleQuestLootRare);
         if(this.mGF.datMgr.getItemClipID(questLootUnlock) >= 1)
         {
            questLootUnlock = 0;
         }
         if(Math.random() > 0.5)
         {
            questLootCommon = 0;
         }
         if(Math.random() > 0.1)
         {
            questLootRare = 0;
         }
         clip.setObjectiveName(this.bSys.battleQuestName);
         if(this.bSys.battleResult == "win")
         {
            clip.setResult("Success!");
            clip.setKillBonus(String(killBonus));
            clip.setQuestReward(String(questReward));
            clip.setQuestLoot(questLootUnlock,questLootCommon,questLootRare);
            clip.setHeroWin();
            this.mGF.datMgr.stat_money = Math.min(this.mGF.datMgr.stat_money + killBonus + questReward,999999);
            if(questLootUnlock == 3 && this.mGF.datMgr.unlock_class02 <= 0)
            {
               this.mGF.utilMgr.messagePop("Unlocked Archer Class!");
            }
            if(questLootUnlock == 4 && this.mGF.datMgr.unlock_class03 <= 0)
            {
               this.mGF.utilMgr.messagePop("Unlocked Mage Class!");
            }
            if(questLootUnlock == 5 && this.mGF.datMgr.unlock_class04 <= 0)
            {
               this.mGF.utilMgr.messagePop("Unlocked Fighter Class!");
            }
            if(questLootUnlock == 6 && this.mGF.datMgr.unlock_class05 <= 0)
            {
               this.mGF.utilMgr.messagePop("Unlocked Cavalry Class!");
            }
            if(questLootUnlock == 7 && this.mGF.datMgr.unlock_class06 <= 0)
            {
               this.mGF.utilMgr.messagePop("Unlocked Swordmaster Class!");
            }
            if(questLootUnlock == 8 && this.mGF.datMgr.unlock_class07 <= 0)
            {
               this.mGF.utilMgr.messagePop("Unlocked Thrower Class!");
            }
            if(questLootUnlock == 9 && this.mGF.datMgr.unlock_class08 <= 0)
            {
               this.mGF.utilMgr.messagePop("Unlocked Tanker Class!");
            }
            this.mGF.datMgr.addItemClipID(questLootUnlock);
            this.mGF.datMgr.addItemClipID(questLootCommon);
            this.mGF.datMgr.addItemClipID(questLootRare);
            this.mGF.soundMgr.playBgmWin();
            if(this.bSys.battleType == "mission")
            {
               if(this.mGF.datMgr.mission_stage > 12)
               {
                  clip.setEnding();
               }
            }
            trace("UNLOCK LOOT = " + questLootUnlock);
         }
         else
         {
            clip.setResult("Fail!");
            clip.setKillBonus(String(killBonus));
            clip.setQuestReward(String("-"));
            clip.setHeroLose();
            this.mGF.datMgr.stat_money = Math.min(this.mGF.datMgr.stat_money + killBonus,999999);
            this.mGF.soundMgr.playBgmLose();
         }
         this.destroy();
      }
      
      private function quitClick(event:MouseEvent) : void
      {
         var clip:* = new worldmap_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function pauseClick(event:MouseEvent) : void
      {
         var clip:* = undefined;
         if(this.mGF.isPaused == false)
         {
            clip = new pause_mc();
            clip.init(this.mGF,this);
         }
      }
      
      private function frameHandle(event:Event) : void
      {
         var clip:* = undefined;
         if(this.bSys)
         {
            this.bSys.update();
         }
         if(this.isRequestQuit)
         {
            clip = new worldmap_mc();
            clip.init(this.mGF);
            this.destroy();
            return;
         }
         if(this.isEndBattle)
         {
            this.delay = Math.max(this.delay - 1,0);
            if(this.delay <= 0)
            {
               this.battleResult();
               return;
            }
         }
      }
   }
}

