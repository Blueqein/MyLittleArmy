package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.*;
   import flash.text.TextField;
   
   public class Guild extends MovieClip
   {
      
      public var quest1:MovieClip;
      
      public var btn_close:SimpleButton;
      
      public var quest2:MovieClip;
      
      public var ads:MovieClip;
      
      public var quest3:MovieClip;
      
      public var quest4:MovieClip;
      
      public var promo:MovieClip;
      
      public var mission:MovieClip;
      
      public var money:TextField;
      
      public var rank:MovieClip;
      
      public var promo2:MovieClip;
      
      public var info:TextField;
      
      public var promo3:MovieClip;
      
      public var btn_go:SimpleButton;
      
      public var promo4:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var questMainID:int = 0;
      
      private var questSlot1ID:int = 0;
      
      private var questSlot2ID:int = 0;
      
      private var questSlot3ID:int = 0;
      
      private var questSlot4ID:int = 0;
      
      private var questName:String = "";
      
      private var questDesc:String = "";
      
      private var questReward:int = 0;
      
      private var questRank:int = 0;
      
      public function Guild()
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
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         this.btn_go.addEventListener(MouseEvent.CLICK,this.goClick,false,0,true);
         this.mission.select.visible = false;
         this.quest1.select.visible = false;
         this.quest2.select.visible = false;
         this.quest3.select.visible = false;
         this.quest4.select.visible = false;
         this.quest1.addEventListener(MouseEvent.CLICK,this.quest1Click,false,0,true);
         this.quest2.addEventListener(MouseEvent.CLICK,this.quest2Click,false,0,true);
         this.quest3.addEventListener(MouseEvent.CLICK,this.quest3Click,false,0,true);
         this.quest4.addEventListener(MouseEvent.CLICK,this.quest4Click,false,0,true);
         this.btn_go.visible = false;
         this.promo.addEventListener(MouseEvent.CLICK,this.promoClick);
         this.promo.buttonMode = true;
         this.promo2.addEventListener(MouseEvent.CLICK,this.promo2Click);
         this.promo2.buttonMode = true;
         this.promo3.addEventListener(MouseEvent.CLICK,this.promo3Click);
         this.promo3.buttonMode = true;
         this.promo4.addEventListener(MouseEvent.CLICK,this.promo4Click);
         this.promo4.buttonMode = true;
         if(this.mGF.datMgr.mission_stage > 0 && this.mGF.datMgr.mission_stage < 13)
         {
            if(this.mGF.datMgr.mission_stage == 1)
            {
               this.questMainID = 1;
            }
            else if(this.mGF.datMgr.mission_stage == 2)
            {
               this.questMainID = 2;
            }
            else if(this.mGF.datMgr.mission_stage == 3)
            {
               this.questMainID = 3;
            }
            else if(this.mGF.datMgr.mission_stage == 4)
            {
               this.questMainID = 4;
            }
            else if(this.mGF.datMgr.mission_stage == 5)
            {
               this.questMainID = 5;
            }
            else if(this.mGF.datMgr.mission_stage == 6)
            {
               this.questMainID = 6;
            }
            else if(this.mGF.datMgr.mission_stage == 7)
            {
               this.questMainID = 7;
            }
            else if(this.mGF.datMgr.mission_stage == 8)
            {
               this.questMainID = 8;
            }
            else if(this.mGF.datMgr.mission_stage == 9)
            {
               this.questMainID = 9;
            }
            else if(this.mGF.datMgr.mission_stage == 10)
            {
               this.questMainID = 10;
            }
            else if(this.mGF.datMgr.mission_stage == 11)
            {
               this.questMainID = 11;
            }
            else if(this.mGF.datMgr.mission_stage == 12)
            {
               this.questMainID = 12;
            }
            this.getQuestInfo(this.questMainID);
            this.mission.info.htmlText = this.questName;
            this.mission.btn.addEventListener(MouseEvent.CLICK,this.missionClick,false,0,true);
         }
         else
         {
            this.mission.btn.visible = false;
            this.mission.info.htmlText = "------";
         }
         this.generateRandomQuest();
         this.getQuestInfo(this.questSlot1ID);
         this.quest1.info.htmlText = this.questName;
         this.getQuestInfo(this.questSlot2ID);
         this.quest2.info.htmlText = this.questName;
         this.getQuestInfo(this.questSlot3ID);
         this.quest3.info.htmlText = this.questName;
         this.getQuestInfo(this.questSlot4ID);
         this.quest4.info.htmlText = this.questName;
         this.money.htmlText = "-";
         this.info.htmlText = "-";
         this.rank.gotoAndStop(1);
         trace("init mission ... ok !");
         var randVal:Number = Math.random();
         this.ads.visible = false;
         this.promo.visible = false;
         this.promo2.visible = false;
         this.promo3.visible = false;
         this.promo4.visible = false;
         if(this.mGF.hostMgr._host_name == "kongregate")
         {
            if(randVal <= 0.5)
            {
               this.promo4.visible = true;
            }
            else
            {
               this.ads.visible = true;
               this.mGF.hostMgr.adsShowKong(this.ads);
            }
         }
         else if(this.mGF.hostMgr._host_name != "armorgames")
         {
            if(this.mGF.hostMgr._host_name != "andkon")
            {
               if(randVal <= 0.4)
               {
                  this.ads.visible = true;
                  this.mGF.hostMgr.adsShowInGame(this.ads);
               }
               else if(randVal > 0.4 && randVal <= 0.7)
               {
                  this.promo4.visible = true;
               }
               else
               {
                  this.ads.visible = true;
                  this.mGF.hostMgr.adsShowKong(this.ads);
               }
            }
         }
      }
      
      public function destroy() : *
      {
         this.mGF.hostMgr.adRemove();
         this.promo.removeEventListener(MouseEvent.CLICK,this.promoClick);
         this.promo2.removeEventListener(MouseEvent.CLICK,this.promo2Click);
         this.promo3.removeEventListener(MouseEvent.CLICK,this.promo3Click);
         this.promo4.removeEventListener(MouseEvent.CLICK,this.promo4Click);
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.mission.btn.removeEventListener(MouseEvent.CLICK,this.missionClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy mission ... ok !");
      }
      
      public function generateRandomQuest() : *
      {
         var randVal:Number = Math.random();
         if(this.mGF.datMgr.mission_stage == 1)
         {
            this.questSlot1ID = 21;
            this.questSlot2ID = 22;
            this.questSlot3ID = 23;
            this.questSlot4ID = 24;
         }
         else if(this.mGF.datMgr.mission_stage == 2)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 22;
               this.questSlot3ID = 25;
               this.questSlot4ID = 26;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 23;
               this.questSlot3ID = 26;
               this.questSlot4ID = 27;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 22;
               this.questSlot2ID = 24;
               this.questSlot3ID = 25;
               this.questSlot4ID = 28;
            }
            else
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 22;
               this.questSlot3ID = 27;
               this.questSlot4ID = 28;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 3)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 22;
               this.questSlot3ID = 25;
               this.questSlot4ID = 30;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 23;
               this.questSlot3ID = 26;
               this.questSlot4ID = 29;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 22;
               this.questSlot2ID = 24;
               this.questSlot3ID = 27;
               this.questSlot4ID = 28;
            }
            else
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 22;
               this.questSlot3ID = 27;
               this.questSlot4ID = 32;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 4)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 22;
               this.questSlot3ID = 23;
               this.questSlot4ID = 24;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 26;
               this.questSlot3ID = 27;
               this.questSlot4ID = 28;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 29;
               this.questSlot3ID = 30;
               this.questSlot4ID = 32;
            }
            else
            {
               this.questSlot1ID = 24;
               this.questSlot2ID = 25;
               this.questSlot3ID = 27;
               this.questSlot4ID = 32;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 5)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 22;
               this.questSlot3ID = 23;
               this.questSlot4ID = 24;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 26;
               this.questSlot3ID = 27;
               this.questSlot4ID = 28;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 30;
               this.questSlot3ID = 31;
               this.questSlot4ID = 32;
            }
            else
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 31;
               this.questSlot3ID = 32;
               this.questSlot4ID = 33;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 6)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 22;
               this.questSlot3ID = 25;
               this.questSlot4ID = 26;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 23;
               this.questSlot2ID = 24;
               this.questSlot3ID = 27;
               this.questSlot4ID = 28;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 30;
               this.questSlot3ID = 31;
               this.questSlot4ID = 32;
            }
            else
            {
               this.questSlot1ID = 31;
               this.questSlot2ID = 32;
               this.questSlot3ID = 33;
               this.questSlot4ID = 34;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 7)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 21;
               this.questSlot2ID = 28;
               this.questSlot3ID = 31;
               this.questSlot4ID = 35;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 23;
               this.questSlot2ID = 24;
               this.questSlot3ID = 27;
               this.questSlot4ID = 36;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 30;
               this.questSlot3ID = 31;
               this.questSlot4ID = 32;
            }
            else
            {
               this.questSlot1ID = 31;
               this.questSlot2ID = 32;
               this.questSlot3ID = 33;
               this.questSlot4ID = 34;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 8)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 27;
               this.questSlot2ID = 28;
               this.questSlot3ID = 31;
               this.questSlot4ID = 35;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 30;
               this.questSlot3ID = 34;
               this.questSlot4ID = 36;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 32;
               this.questSlot3ID = 31;
               this.questSlot4ID = 38;
            }
            else
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 32;
               this.questSlot3ID = 33;
               this.questSlot4ID = 37;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 9)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 27;
               this.questSlot2ID = 28;
               this.questSlot3ID = 31;
               this.questSlot4ID = 35;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 34;
               this.questSlot2ID = 36;
               this.questSlot3ID = 39;
               this.questSlot4ID = 40;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 32;
               this.questSlot3ID = 31;
               this.questSlot4ID = 38;
            }
            else
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 32;
               this.questSlot3ID = 33;
               this.questSlot4ID = 37;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 10)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 27;
               this.questSlot2ID = 28;
               this.questSlot3ID = 35;
               this.questSlot4ID = 41;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 34;
               this.questSlot3ID = 36;
               this.questSlot4ID = 41;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 32;
               this.questSlot3ID = 39;
               this.questSlot4ID = 40;
            }
            else
            {
               this.questSlot1ID = 31;
               this.questSlot2ID = 38;
               this.questSlot3ID = 33;
               this.questSlot4ID = 37;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 11)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 23;
               this.questSlot2ID = 26;
               this.questSlot3ID = 35;
               this.questSlot4ID = 41;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 34;
               this.questSlot3ID = 36;
               this.questSlot4ID = 41;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 32;
               this.questSlot3ID = 40;
               this.questSlot4ID = 43;
            }
            else
            {
               this.questSlot1ID = 31;
               this.questSlot2ID = 38;
               this.questSlot3ID = 42;
               this.questSlot4ID = 44;
            }
         }
         else if(this.mGF.datMgr.mission_stage == 12)
         {
            if(randVal < 0.25)
            {
               this.questSlot1ID = 23;
               this.questSlot2ID = 26;
               this.questSlot3ID = 35;
               this.questSlot4ID = 41;
            }
            else if(randVal >= 0.25 && randVal < 0.5)
            {
               this.questSlot1ID = 25;
               this.questSlot2ID = 34;
               this.questSlot3ID = 36;
               this.questSlot4ID = 49;
            }
            else if(randVal >= 0.5 && randVal < 0.75)
            {
               this.questSlot1ID = 29;
               this.questSlot2ID = 32;
               this.questSlot3ID = 40;
               this.questSlot4ID = 43;
            }
            else
            {
               this.questSlot1ID = 31;
               this.questSlot2ID = 38;
               this.questSlot3ID = 42;
               this.questSlot4ID = 44;
            }
         }
         else if(randVal < 0.25)
         {
            this.questSlot1ID = 25;
            this.questSlot2ID = 27;
            this.questSlot3ID = 44;
            this.questSlot4ID = 49;
         }
         else if(randVal >= 0.25 && randVal < 0.5)
         {
            this.questSlot1ID = 45;
            this.questSlot2ID = 46;
            this.questSlot3ID = 47;
            this.questSlot4ID = 48;
         }
         else if(randVal >= 0.5 && randVal < 0.75)
         {
            this.questSlot1ID = 32;
            this.questSlot2ID = 35;
            this.questSlot3ID = 40;
            this.questSlot4ID = 41;
         }
         else
         {
            this.questSlot1ID = 36;
            this.questSlot2ID = 43;
            this.questSlot3ID = 42;
            this.questSlot4ID = 50;
         }
      }
      
      private function getQuestInfo(ID:int = 0) : *
      {
         this.questName = "";
         this.questDesc = "";
         this.questReward = 0;
         this.questRank = 0;
         if(ID == 1)
         {
            this.questName = "First Mission";
            this.questDesc = "Story Chapter 01";
            this.questReward = 2000;
            this.questRank = 1;
         }
         else if(ID == 2)
         {
            this.questName = "Mission 02";
            this.questDesc = "Story Chapter 02";
            this.questReward = 4000;
            this.questRank = 1;
         }
         else if(ID == 3)
         {
            this.questName = "Mission 03";
            this.questDesc = "Story Chapter 03";
            this.questReward = 6000;
            this.questRank = 2;
         }
         else if(ID == 4)
         {
            this.questName = "Mission 04";
            this.questDesc = "Story Chapter 04";
            this.questReward = 8000;
            this.questRank = 3;
         }
         else if(ID == 5)
         {
            this.questName = "Mission 05";
            this.questDesc = "Story Chapter 05";
            this.questReward = 10000;
            this.questRank = 2;
         }
         else if(ID == 6)
         {
            this.questName = "Mission 06";
            this.questDesc = "Story Chapter 06";
            this.questReward = 12000;
            this.questRank = 3;
         }
         else if(ID == 7)
         {
            this.questName = "Mission 07";
            this.questDesc = "Story Chapter 07";
            this.questReward = 14000;
            this.questRank = 3;
         }
         else if(ID == 8)
         {
            this.questName = "Mission 08";
            this.questDesc = "Story Chapter 08";
            this.questReward = 16000;
            this.questRank = 3;
         }
         else if(ID == 9)
         {
            this.questName = "Mission 09";
            this.questDesc = "Story Chapter 09";
            this.questReward = 18000;
            this.questRank = 4;
         }
         else if(ID == 10)
         {
            this.questName = "Mission 10";
            this.questDesc = "Story Chapter 10";
            this.questReward = 20000;
            this.questRank = 4;
         }
         else if(ID == 11)
         {
            this.questName = "Mission 11";
            this.questDesc = "Story Chapter 11";
            this.questReward = 25000;
            this.questRank = 4;
         }
         else if(ID == 12)
         {
            this.questName = "Final Mission";
            this.questDesc = "Story Chapter 12";
            this.questReward = 30000;
            this.questRank = 5;
         }
         else if(ID == 21)
         {
            this.questName = "Bulgar Havok";
            this.questDesc = "Slay target enemy";
            this.questReward = 1000;
            this.questRank = 1;
         }
         else if(ID == 22)
         {
            this.questName = "Wizard Apprentice";
            this.questDesc = "Slay target enemy";
            this.questReward = 1200;
            this.questRank = 1;
         }
         else if(ID == 23)
         {
            this.questName = "Pirate Invitation";
            this.questDesc = "Slay target enemy";
            this.questReward = 1500;
            this.questRank = 1;
         }
         else if(ID == 24)
         {
            this.questName = "Eastern Warrior";
            this.questDesc = "Slay target enemy";
            this.questReward = 1600;
            this.questRank = 1;
         }
         else if(ID == 25)
         {
            this.questName = "Don\'t disturb my home!";
            this.questDesc = "Slay target enemy";
            this.questReward = 3000;
            this.questRank = 2;
         }
         else if(ID == 26)
         {
            this.questName = "Robin\'s Hideout";
            this.questDesc = "Slay target enemy";
            this.questReward = 2000;
            this.questRank = 2;
         }
         else if(ID == 27)
         {
            this.questName = "Maid Cafe";
            this.questDesc = "Slay target enemy";
            this.questReward = 2500;
            this.questRank = 2;
         }
         else if(ID == 28)
         {
            this.questName = "Snowball Festival";
            this.questDesc = "Slay target enemy";
            this.questReward = 2500;
            this.questRank = 2;
         }
         else if(ID == 29)
         {
            this.questName = "Ghost Haunt";
            this.questDesc = "Slay target enemy";
            this.questReward = 4000;
            this.questRank = 3;
         }
         else if(ID == 30)
         {
            this.questName = "Friday the 13th?";
            this.questDesc = "Slay target enemy";
            this.questReward = 3200;
            this.questRank = 3;
         }
         else if(ID == 31)
         {
            this.questName = "Mike\'s Revenge";
            this.questDesc = "Slay target enemy";
            this.questReward = 6000;
            this.questRank = 3;
         }
         else if(ID == 32)
         {
            this.questName = "Trickster Show";
            this.questDesc = "Survive!";
            this.questReward = 3500;
            this.questRank = 3;
         }
         else if(ID == 33)
         {
            this.questName = "Assasinate";
            this.questDesc = "Survive!";
            this.questReward = 4500;
            this.questRank = 4;
         }
         else if(ID == 34)
         {
            this.questName = "Newgrounds WarZone!?";
            this.questDesc = "Slay target enemy";
            this.questReward = 4500;
            this.questRank = 4;
         }
         else if(ID == 35)
         {
            this.questName = "Java Island";
            this.questDesc = "Slay target enemy";
            this.questReward = 5000;
            this.questRank = 4;
         }
         else if(ID == 36)
         {
            this.questName = "Kangroo Rush!";
            this.questDesc = "Survive!";
            this.questReward = 5500;
            this.questRank = 4;
         }
         else if(ID == 37)
         {
            this.questName = "Assasinate II";
            this.questDesc = "Survive!";
            this.questReward = 7000;
            this.questRank = 5;
         }
         else if(ID == 38)
         {
            this.questName = "Mike\'s Revenge II";
            this.questDesc = "Slay target enemy";
            this.questReward = 10000;
            this.questRank = 5;
         }
         else if(ID == 39)
         {
            this.questName = "Last Samurai";
            this.questDesc = "Slay target enemy";
            this.questReward = 8000;
            this.questRank = 5;
         }
         else if(ID == 40)
         {
            this.questName = "Its Spartan!!!";
            this.questDesc = "Slay target enemy";
            this.questReward = 8500;
            this.questRank = 5;
         }
         else if(ID == 41)
         {
            this.questName = "Orca King";
            this.questDesc = "Slay target enemy";
            this.questReward = 18000;
            this.questRank = 6;
         }
         else if(ID == 42)
         {
            this.questName = "Mike\'s Revenge III";
            this.questDesc = "Slay target enemy";
            this.questReward = 15000;
            this.questRank = 6;
         }
         else if(ID == 43)
         {
            this.questName = "Assasinate III";
            this.questDesc = "Survive!";
            this.questReward = 12000;
            this.questRank = 6;
         }
         else if(ID == 44)
         {
            this.questName = "Demon Lord";
            this.questDesc = "Slay target enemy";
            this.questReward = 19000;
            this.questRank = 6;
         }
         else if(ID == 45)
         {
            this.questName = "Ally of Justice";
            this.questDesc = "Slay target enemy";
            this.questReward = 35000;
            this.questRank = 7;
         }
         else if(ID == 46)
         {
            this.questName = "P-Bot Activated!";
            this.questDesc = "Slay target enemy";
            this.questReward = 30000;
            this.questRank = 7;
         }
         else if(ID == 47)
         {
            this.questName = "Femme Fatale";
            this.questDesc = "Slay target enemy";
            this.questReward = 25000;
            this.questRank = 7;
         }
         else if(ID == 48)
         {
            this.questName = "Myth Warrior";
            this.questDesc = "Slay target enemy";
            this.questReward = 27000;
            this.questRank = 7;
         }
         else if(ID == 49)
         {
            this.questName = "Snow Giant";
            this.questDesc = "Slay target enemy";
            this.questReward = 25000;
            this.questRank = 7;
         }
         else if(ID == 50)
         {
            this.questName = "Oh snap!!, it\'s GREG!";
            this.questDesc = "Slay target enemy";
            this.questReward = 40000;
            this.questRank = 7;
         }
      }
      
      private function getQuestClickInfo(SLOT:int = 0) : *
      {
         if(SLOT == 0)
         {
            this.mission.select.visible = true;
            this.quest1.select.visible = false;
            this.quest2.select.visible = false;
            this.quest3.select.visible = false;
            this.quest4.select.visible = false;
            this.btn_go.visible = true;
            this.getQuestInfo(this.questMainID);
         }
         else if(SLOT == 1)
         {
            this.mission.select.visible = false;
            this.quest1.select.visible = true;
            this.quest2.select.visible = false;
            this.quest3.select.visible = false;
            this.quest4.select.visible = false;
            this.btn_go.visible = true;
            this.getQuestInfo(this.questSlot1ID);
         }
         else if(SLOT == 2)
         {
            this.mission.select.visible = false;
            this.quest1.select.visible = false;
            this.quest2.select.visible = true;
            this.quest3.select.visible = false;
            this.quest4.select.visible = false;
            this.btn_go.visible = true;
            this.getQuestInfo(this.questSlot2ID);
         }
         else if(SLOT == 3)
         {
            this.mission.select.visible = false;
            this.quest1.select.visible = false;
            this.quest2.select.visible = false;
            this.quest3.select.visible = true;
            this.quest4.select.visible = false;
            this.btn_go.visible = true;
            this.getQuestInfo(this.questSlot3ID);
         }
         else if(SLOT == 4)
         {
            this.mission.select.visible = false;
            this.quest1.select.visible = false;
            this.quest2.select.visible = false;
            this.quest3.select.visible = false;
            this.quest4.select.visible = true;
            this.btn_go.visible = true;
            this.getQuestInfo(this.questSlot4ID);
         }
         this.money.htmlText = this.questReward + " gold";
         this.info.htmlText = this.questDesc;
         this.rank.gotoAndStop(this.questRank + 1);
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         var clip:* = new worldmap_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function missionClick(event:MouseEvent) : void
      {
         this.getQuestClickInfo(0);
      }
      
      private function quest1Click(event:MouseEvent) : void
      {
         this.getQuestClickInfo(1);
      }
      
      private function quest2Click(event:MouseEvent) : void
      {
         this.getQuestClickInfo(2);
      }
      
      private function quest3Click(event:MouseEvent) : void
      {
         this.getQuestClickInfo(3);
      }
      
      private function quest4Click(event:MouseEvent) : void
      {
         this.getQuestClickInfo(4);
      }
      
      private function goClick(event:MouseEvent) : void
      {
         var clip:* = undefined;
         var clip2:* = undefined;
         var clip3:* = undefined;
         var clip4:* = undefined;
         var clip5:* = undefined;
         if(this.mission.select.visible == true)
         {
            if(this.mGF.datMgr.mission_stage > 0 && this.mGF.datMgr.mission_stage < 13)
            {
               clip = new battle_mc();
               clip.init(this.mGF);
               clip.startMissionInit(this.questMainID,this.questName,this.questReward);
               this.destroy();
            }
         }
         else if(this.quest1.select.visible == true)
         {
            clip2 = new battle_mc();
            clip2.init(this.mGF);
            clip2.startMissionInit(this.questSlot1ID,this.questName,this.questReward);
            this.destroy();
         }
         else if(this.quest2.select.visible == true)
         {
            clip3 = new battle_mc();
            clip3.init(this.mGF);
            clip3.startMissionInit(this.questSlot2ID,this.questName,this.questReward);
            this.destroy();
         }
         else if(this.quest3.select.visible == true)
         {
            clip4 = new battle_mc();
            clip4.init(this.mGF);
            clip4.startMissionInit(this.questSlot3ID,this.questName,this.questReward);
            this.destroy();
         }
         else if(this.quest4.select.visible == true)
         {
            clip5 = new battle_mc();
            clip5.init(this.mGF);
            clip5.startMissionInit(this.questSlot4ID,this.questName,this.questReward);
            this.destroy();
         }
      }
      
      private function promoClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo);
         navigateToURL(targetURL,"_blank");
      }
      
      private function promo2Click(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo2);
         navigateToURL(targetURL,"_blank");
      }
      
      private function promo3Click(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo3);
         navigateToURL(targetURL,"_blank");
      }
      
      private function promo4Click(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo4);
         navigateToURL(targetURL,"_blank");
      }
   }
}

