package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class Achievement extends MovieClip
   {
      
      public var achiev_07:MovieClip;
      
      public var btn_close:SimpleButton;
      
      public var achiev_06:MovieClip;
      
      public var achiev_05:MovieClip;
      
      public var achiev_04:MovieClip;
      
      public var achiev_03:MovieClip;
      
      public var achiev_02:MovieClip;
      
      public var achiev_01:MovieClip;
      
      public var achiev_10:MovieClip;
      
      public var achiev_09:MovieClip;
      
      public var achiev_08:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function Achievement()
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
         this.achiev_01.addEventListener(MouseEvent.MOUSE_OVER,this.achiev01Over,false,0,true);
         this.achiev_02.addEventListener(MouseEvent.MOUSE_OVER,this.achiev02Over,false,0,true);
         this.achiev_03.addEventListener(MouseEvent.MOUSE_OVER,this.achiev03Over,false,0,true);
         this.achiev_04.addEventListener(MouseEvent.MOUSE_OVER,this.achiev04Over,false,0,true);
         this.achiev_05.addEventListener(MouseEvent.MOUSE_OVER,this.achiev05Over,false,0,true);
         this.achiev_06.addEventListener(MouseEvent.MOUSE_OVER,this.achiev06Over,false,0,true);
         this.achiev_07.addEventListener(MouseEvent.MOUSE_OVER,this.achiev07Over,false,0,true);
         this.achiev_08.addEventListener(MouseEvent.MOUSE_OVER,this.achiev08Over,false,0,true);
         this.achiev_09.addEventListener(MouseEvent.MOUSE_OVER,this.achiev09Over,false,0,true);
         this.achiev_10.addEventListener(MouseEvent.MOUSE_OVER,this.achiev10Over,false,0,true);
         this.achiev_01.buttonMode = true;
         this.achiev_02.buttonMode = true;
         this.achiev_03.buttonMode = true;
         this.achiev_04.buttonMode = true;
         this.achiev_05.buttonMode = true;
         this.achiev_06.buttonMode = true;
         this.achiev_07.buttonMode = true;
         this.achiev_08.buttonMode = true;
         this.achiev_09.buttonMode = true;
         this.achiev_10.buttonMode = true;
         this.achiev_01.gotoAndStop(this.mGF.datMgr.achive_01 + 1);
         this.achiev_02.gotoAndStop(this.mGF.datMgr.achive_02 + 1);
         this.achiev_03.gotoAndStop(this.mGF.datMgr.achive_03 + 1);
         this.achiev_04.gotoAndStop(this.mGF.datMgr.achive_04 + 1);
         this.achiev_05.gotoAndStop(this.mGF.datMgr.achive_05 + 1);
         this.achiev_06.gotoAndStop(this.mGF.datMgr.achive_06 + 1);
         this.achiev_07.gotoAndStop(this.mGF.datMgr.achive_07 + 1);
         this.achiev_08.gotoAndStop(this.mGF.datMgr.achive_08 + 1);
         this.achiev_09.gotoAndStop(this.mGF.datMgr.achive_09 + 1);
         this.achiev_10.gotoAndStop(this.mGF.datMgr.achive_10 + 1);
         trace("init achievement ... ok !");
      }
      
      public function destroy() : *
      {
         this.achiev_01.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev01Over);
         this.achiev_02.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev02Over);
         this.achiev_03.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev03Over);
         this.achiev_04.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev04Over);
         this.achiev_05.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev05Over);
         this.achiev_06.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev06Over);
         this.achiev_07.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev07Over);
         this.achiev_08.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev08Over);
         this.achiev_09.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev09Over);
         this.achiev_10.removeEventListener(MouseEvent.MOUSE_OVER,this.achiev10Over);
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy achievement ... ok !");
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         if(this.mGF.datMgr.achive_01 >= 2)
         {
            this.mGF.datMgr.achive_01 = 1;
         }
         if(this.mGF.datMgr.achive_02 >= 2)
         {
            this.mGF.datMgr.achive_02 = 1;
         }
         if(this.mGF.datMgr.achive_03 >= 2)
         {
            this.mGF.datMgr.achive_03 = 1;
         }
         if(this.mGF.datMgr.achive_04 >= 2)
         {
            this.mGF.datMgr.achive_04 = 1;
         }
         if(this.mGF.datMgr.achive_05 >= 2)
         {
            this.mGF.datMgr.achive_05 = 1;
         }
         if(this.mGF.datMgr.achive_06 >= 2)
         {
            this.mGF.datMgr.achive_06 = 1;
         }
         if(this.mGF.datMgr.achive_07 >= 2)
         {
            this.mGF.datMgr.achive_07 = 1;
         }
         if(this.mGF.datMgr.achive_08 >= 2)
         {
            this.mGF.datMgr.achive_08 = 1;
         }
         if(this.mGF.datMgr.achive_09 >= 2)
         {
            this.mGF.datMgr.achive_09 = 1;
         }
         if(this.mGF.datMgr.achive_10 >= 2)
         {
            this.mGF.datMgr.achive_10 = 1;
         }
         this.destroy();
      }
      
      private function achiev01Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_01,10,"Rookie Little Army",String(""),String("clear 4 missions \n" + "reward : Crown Staff"));
      }
      
      private function achiev02Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_02,10,"Strong Little Army",String(""),String("clear 8 missions \n" + "reward : Octopus Bow"));
      }
      
      private function achiev03Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_03,10,"Ballsy Little Army",String(""),String("clear 12 missions \n" + "reward : Heavy Metal"));
      }
      
      private function achiev04Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_04,10,"My Mythical Heroes",String(""),String("clear all hero \n" + "reward : Lolipop Candy"));
      }
      
      private function achiev05Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_05,10,"Seasoned Little Army",String(""),String("win 25 battles or more \n" + "reward : Mythical Sword \n" + "total battle won " + this.mGF.datMgr.stat_total_battle));
      }
      
      private function achiev06Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_06,10,"Veteran Little Army",String(""),String("win 50 battles or more \n" + "reward : Hell Breaker \n" + "total battle won " + this.mGF.datMgr.stat_total_battle));
      }
      
      private function achiev07Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_07,10,"Mythical Little Army",String(""),String("win 100 battles or more \n" + "reward : Evil Dragon Sword \n" + "total battle won " + this.mGF.datMgr.stat_total_battle));
      }
      
      private function achiev08Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_08,10,"My Multiracial Army",String(""),String("collect 30 different characters \n" + "reward : Grand Stinger \n" + "total skin collected " + this.mGF.datMgr.getTotalSkin()));
      }
      
      private function achiev09Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_09,10,"My Little Military",String(""),String("collect 50 different weapons \n" + "reward : Cat\'s Paw \n" + "total weapon collected " + this.mGF.datMgr.getTotalWeapon()));
      }
      
      private function achiev10Over(event:MouseEvent) : void
      {
         this.mGF.utilMgr.infoTip(this.achiev_10,10,"Rich Little Army",String(""),String("earn 500000 gold \n" + "reward : Drill Arm \n" + "current money " + this.mGF.datMgr.stat_money));
      }
   }
}

