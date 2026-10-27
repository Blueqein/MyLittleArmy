package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.*;
   
   public class WorldMap extends MovieClip
   {
      
      public var btn_shop:SimpleButton;
      
      public var btn_playmore:SimpleButton;
      
      public var btn_mission:SimpleButton;
      
      public var btn_option:SimpleButton;
      
      public var btn_credit:SimpleButton;
      
      public var btn_achievement:SimpleButton;
      
      public var btn_help:SimpleButton;
      
      public var btn_quit:SimpleButton;
      
      public var btn_formation:SimpleButton;
      
      public var btn_save:SimpleButton;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var confirmQuit:* = null;
      
      public function WorldMap()
      {
         super();
      }
      
      public function init(_mGF:*) : *
      {
         var clipTut:* = undefined;
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.confirmQuit = this.mGF.utilMgr.confirmDialogYesNo("Confirmation","Doing homework ?");
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         this.btn_formation.addEventListener(MouseEvent.CLICK,this.formationClick,false,0,true);
         this.btn_shop.addEventListener(MouseEvent.CLICK,this.shopClick,false,0,true);
         this.btn_mission.addEventListener(MouseEvent.CLICK,this.missionClick,false,0,true);
         this.btn_save.addEventListener(MouseEvent.CLICK,this.saveClick,false,0,true);
         this.btn_achievement.addEventListener(MouseEvent.CLICK,this.achievementClick,false,0,true);
         this.btn_help.addEventListener(MouseEvent.CLICK,this.helpClick,false,0,true);
         this.btn_credit.addEventListener(MouseEvent.CLICK,this.creditClick,false,0,true);
         this.btn_playmore.addEventListener(MouseEvent.CLICK,this.playmoreClick,false,0,true);
         this.btn_option.addEventListener(MouseEvent.CLICK,this.optionClick,false,0,true);
         this.btn_quit.addEventListener(MouseEvent.CLICK,this.quitClick,false,0,true);
         this.mGF.soundMgr.playBgmWorld();
         this.mGF.achievementCheck();
         if(this.mGF.datMgr.help_world <= 0)
         {
            clipTut = new tutWorld_mc();
            clipTut.init(this.mGF);
            this.mGF.datMgr.help_world = 1;
         }
      }
      
      public function destroy() : *
      {
         if(this.confirmQuit)
         {
            this.confirmQuit.destroy();
         }
         this.confirmQuit = null;
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.btn_formation.removeEventListener(MouseEvent.CLICK,this.formationClick);
         this.btn_shop.removeEventListener(MouseEvent.CLICK,this.shopClick);
         this.btn_mission.removeEventListener(MouseEvent.CLICK,this.missionClick);
         this.btn_save.removeEventListener(MouseEvent.CLICK,this.saveClick);
         this.btn_achievement.removeEventListener(MouseEvent.CLICK,this.achievementClick);
         this.btn_help.removeEventListener(MouseEvent.CLICK,this.helpClick);
         this.btn_credit.removeEventListener(MouseEvent.CLICK,this.creditClick);
         this.btn_playmore.removeEventListener(MouseEvent.CLICK,this.playmoreClick);
         this.btn_option.removeEventListener(MouseEvent.CLICK,this.optionClick);
         this.btn_quit.removeEventListener(MouseEvent.CLICK,this.quitClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy world ... ok !");
      }
      
      private function frameHandle(event:Event) : void
      {
         var clip:* = undefined;
         if(this.confirmQuit.isOk())
         {
            clip = new cover_mc();
            clip.init(this.mGF);
            this.destroy();
         }
      }
      
      private function formationClick(event:MouseEvent) : void
      {
         var clip:* = new formation_mc();
         clip.init(this.mGF);
      }
      
      private function shopClick(event:MouseEvent) : void
      {
         var clip:* = new shop_mc();
         clip.init(this.mGF);
      }
      
      private function missionClick(event:MouseEvent) : void
      {
         var clip:* = new guild_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function saveClick(event:MouseEvent) : void
      {
         this.mGF.datMgr.saveData();
         this.mGF.utilMgr.messagePop("saving completed ...");
      }
      
      private function achievementClick(event:MouseEvent) : void
      {
         var clip:* = new achievement_mc();
         clip.init(this.mGF);
      }
      
      private function helpClick(event:MouseEvent) : void
      {
         var clip:* = new help_mc();
         clip.init(this.mGF);
      }
      
      private function creditClick(event:MouseEvent) : void
      {
         var clip:* = new credit_mc();
         clip.init(this.mGF);
      }
      
      private function playmoreClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_sponsor);
         navigateToURL(targetURL,"_blank");
      }
      
      private function optionClick(event:MouseEvent) : void
      {
         var clip:* = new option_mc();
         clip.init(this.mGF);
      }
      
      private function quitClick(event:MouseEvent) : void
      {
         this.confirmQuit.showDialog();
      }
   }
}

