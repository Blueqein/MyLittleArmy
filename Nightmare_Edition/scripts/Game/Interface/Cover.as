package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.*;
   
   public class Cover extends MovieClip
   {
      
      public var btn_playmore:SimpleButton;
      
      public var btn_sponsor:SimpleButton;
      
      public var btn_developer:SimpleButton;
      
      public var btn_facebook:SimpleButton;
      
      public var btn_continue:SimpleButton;
      
      public var btn_newgame:SimpleButton;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function Cover()
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
         this.btn_newgame.addEventListener(MouseEvent.CLICK,this.newgameClick,false,0,true);
         this.btn_continue.addEventListener(MouseEvent.CLICK,this.continueClick,false,0,true);
         this.btn_playmore.addEventListener(MouseEvent.CLICK,this.playmoreClick,false,0,true);
         this.btn_developer.addEventListener(MouseEvent.CLICK,this.developerClick,false,0,true);
         this.btn_sponsor.addEventListener(MouseEvent.CLICK,this.sponsorClick,false,0,true);
         this.btn_facebook.addEventListener(MouseEvent.CLICK,this.facebookClick,false,0,true);
         this.mGF.stageRoot.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         trace("init cover ... ok !");
         this.mGF.soundMgr.playBgmCover();
      }
      
      public function destroy() : *
      {
         this.btn_newgame.removeEventListener(MouseEvent.CLICK,this.newgameClick);
         this.btn_continue.removeEventListener(MouseEvent.CLICK,this.continueClick);
         this.btn_playmore.removeEventListener(MouseEvent.CLICK,this.playmoreClick);
         this.btn_developer.removeEventListener(MouseEvent.CLICK,this.developerClick);
         this.btn_sponsor.removeEventListener(MouseEvent.CLICK,this.sponsorClick);
         this.btn_facebook.removeEventListener(MouseEvent.CLICK,this.facebookClick);
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy cover ... ok !");
      }
      
      private function newgameClick(event:MouseEvent) : void
      {
         var clip:* = new save_mc();
         clip.init(this.mGF,0);
         this.destroy();
      }
      
      private function continueClick(event:MouseEvent) : void
      {
         this.mGF.datMgr.resetGameData();
         if(this.mGF.datMgr.opt_quality_setup == 0)
         {
            this.mGF.stageRoot.stage.quality = "low";
         }
         else if(this.mGF.datMgr.opt_quality_setup == 2)
         {
            this.mGF.stageRoot.stage.quality = "med";
         }
         else if(this.mGF.datMgr.opt_quality_setup == 3)
         {
            this.mGF.stageRoot.stage.quality = "high";
         }
         var clip:* = new save_mc();
         clip.init(this.mGF,1);
         this.destroy();
      }
      
      private function playmoreClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_sponsor);
         navigateToURL(targetURL,"_blank");
      }
      
      private function developerClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_developer);
         navigateToURL(targetURL,"_blank");
      }
      
      private function sponsorClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_sponsor);
         navigateToURL(targetURL,"_blank");
      }
      
      private function facebookClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest("http://www.facebook.com/pages/ArtLogicGames/73953738198");
         navigateToURL(targetURL,"_blank");
      }
      
      private function frameHandle(event:Event) : void
      {
      }
   }
}

