package Game
{
   import Game.Manager.*;
   import Game.Manager.KeyControl.*;
   import flash.display.Sprite;
   
   public class GameFramework
   {
      
      public var isPaused:Boolean = false;
      
      public var screenWidth:int = 700;
      
      public var screenHeight:int = 470;
      
      public var areaWidth:int = 3000;
      
      public var areaHeight:int = this.screenHeight;
      
      public var keyMgr:*;
      
      public var datMgr:*;
      
      public var soundMgr:*;
      
      public var effectMgr:*;
      
      public var hostMgr:*;
      
      public var utilMgr:*;
      
      public var stageRoot:*;
      
      public var contBSCREEN:Sprite;
      
      public var contSCROLLS:Sprite;
      
      public var contSCROLLZ:Sprite;
      
      public var contSCROLL:Sprite;
      
      public var contBG:Sprite;
      
      public var contOBJECT:Sprite;
      
      public var contBLOODSPLAT:Sprite;
      
      public var contTURRET:Sprite;
      
      public var contBUILDING:Sprite;
      
      public var contPATH:Sprite;
      
      public var contUNIT:Sprite;
      
      public var contUNITDEAD:Sprite;
      
      public var contEFFECT:Sprite;
      
      public var contFOG:Sprite;
      
      public var contFILTER:Sprite;
      
      public var contMENU:Sprite;
      
      public var contMENU2:Sprite;
      
      public var stageWidth:int = 700;
      
      public var stageHeight:int = 525;
      
      public var frameSkip:int = 1;
      
      public function GameFramework()
      {
         super();
      }
      
      public function initialise(_stageRoot:*) : *
      {
         this.stageRoot = _stageRoot;
         this.contBSCREEN = new Sprite();
         this.stageRoot.addChild(this.contBSCREEN);
         this.contSCROLLS = new Sprite();
         this.stageRoot.addChild(this.contSCROLLS);
         this.contSCROLLZ = new Sprite();
         this.contSCROLLS.addChild(this.contSCROLLZ);
         this.contSCROLL = new Sprite();
         this.contSCROLLZ.addChild(this.contSCROLL);
         this.contBG = new Sprite();
         this.contSCROLL.addChild(this.contBG);
         this.contOBJECT = new Sprite();
         this.contSCROLL.addChild(this.contOBJECT);
         this.contBLOODSPLAT = new Sprite();
         this.contSCROLL.addChild(this.contBLOODSPLAT);
         this.contTURRET = new Sprite();
         this.contSCROLL.addChild(this.contTURRET);
         this.contBUILDING = new Sprite();
         this.contSCROLL.addChild(this.contBUILDING);
         this.contPATH = new Sprite();
         this.contSCROLL.addChild(this.contPATH);
         this.contUNIT = new Sprite();
         this.contSCROLL.addChild(this.contUNIT);
         this.contUNITDEAD = new Sprite();
         this.contSCROLL.addChild(this.contUNITDEAD);
         this.contEFFECT = new Sprite();
         this.contSCROLL.addChild(this.contEFFECT);
         this.contFOG = new Sprite();
         this.contSCROLL.addChild(this.contFOG);
         this.contFILTER = new Sprite();
         this.stageRoot.addChild(this.contFILTER);
         this.contMENU = new Sprite();
         this.stageRoot.addChild(this.contMENU);
         this.contMENU2 = new Sprite();
         this.stageRoot.addChild(this.contMENU2);
         this.keyMgr = new KeyInputManager(this.stageRoot);
         this.datMgr = new DataManager();
         this.hostMgr = new HostManager(this.stageRoot);
         this.soundMgr = new SoundManager(this.datMgr);
         this.effectMgr = new EffectManager(this);
         this.utilMgr = new UtilityManager(this);
      }
      
      public function destroyObjectInContainer(container:*) : *
      {
         var numChild:int = int(container.numChildren);
         var children:Array = new Array(numChild);
         var i:int = 0;
         for(i = 0; i < numChild; i++)
         {
            children[i] = container.getChildAt(i);
         }
         for(i = 0; i < numChild; i++)
         {
            children[i].destroy();
         }
      }
      
      public function getFrameKeep() : int
      {
         var FPS:int = 24;
         ++this.frameSkip;
         if(this.frameSkip >= FPS)
         {
            this.frameSkip = 0;
         }
         return this.frameSkip;
      }
      
      public function achievementCheck() : *
      {
         var val:int = int(this.datMgr.achievementUpdate());
         if(val == 1)
         {
            this.utilMgr.messagePop("Achievement 1 [Rookie Little Army] Unlocked!");
         }
         if(val == 2)
         {
            this.utilMgr.messagePop("Achievement 2 [Strong Little Army] Unlocked!");
         }
         if(val == 3)
         {
            this.utilMgr.messagePop("Achievement 3 [Ballsy Little Army] Unlocked!");
         }
         if(val == 4)
         {
            this.utilMgr.messagePop("Achievement 4 [My Mythical Heroes] Unlocked!");
         }
         if(val == 5)
         {
            this.utilMgr.messagePop("Achievement 5 [Seasoned Little Army] Unlocked!");
         }
         if(val == 6)
         {
            this.utilMgr.messagePop("Achievement 6 [Veteran Little Army] Unlocked!");
         }
         if(val == 7)
         {
            this.utilMgr.messagePop("Achievement 7 [Mythical Little Army] Unlocked!");
         }
         if(val == 8)
         {
            this.utilMgr.messagePop("Achievement 8 [My Multiracial Army] Unlocked!");
         }
         if(val == 9)
         {
            this.utilMgr.messagePop("Achievement 9 [My Little Military] Unlocked!");
         }
         if(val == 10)
         {
            this.utilMgr.messagePop("Achievement 10 [Rich Little Army] Unlocked!");
         }
      }
      
      public function submitKongAPI() : *
      {
         var TOTAL_MONEY:int = 0;
         var TOTAL_BATTLE_WON:int = 0;
         var TOTAL_CLEAR_GAME:int = 0;
         var TOTAL_SKIN_COLLECTION:int = 0;
         var TOTAL_WEAPON_COLLECTION:int = 0;
         var TOTAL_HERO3_CLEAR:int = 0;
         if(this.hostMgr.kongAPI)
         {
            TOTAL_MONEY = int(this.datMgr.stat_money);
            TOTAL_BATTLE_WON = int(this.datMgr.stat_total_battle);
            TOTAL_CLEAR_GAME = int(this.datMgr.getTotalPlaythrough());
            TOTAL_SKIN_COLLECTION = int(this.datMgr.getTotalSkin());
            TOTAL_WEAPON_COLLECTION = int(this.datMgr.getTotalWeapon());
            TOTAL_HERO3_CLEAR = int(this.datMgr.hero_3_competed);
            this.hostMgr.kongAPI.submitData("TOTAL_MONEY",TOTAL_MONEY);
            this.hostMgr.kongAPI.submitData("TOTAL_BATTLE_WON",TOTAL_BATTLE_WON);
            this.hostMgr.kongAPI.submitData("TOTAL_CLEAR_GAME",TOTAL_CLEAR_GAME);
            this.hostMgr.kongAPI.submitData("TOTAL_SKIN_COLLECTION",TOTAL_SKIN_COLLECTION);
            this.hostMgr.kongAPI.submitData("TOTAL_WEAPON_COLLECTION",TOTAL_WEAPON_COLLECTION);
            this.hostMgr.kongAPI.submitData("TOTAL_HERO3_CLEAR",TOTAL_HERO3_CLEAR);
         }
      }
      
      public function requestSave() : *
      {
         this.datMgr.saveData();
         this.submitKongAPI();
      }
   }
}

