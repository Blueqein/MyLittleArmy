package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.*;
   import flash.text.TextField;
   
   public class Preloader extends MovieClip
   {
      
      public var ads:MovieClip;
      
      public var btn_sponsor:SimpleButton;
      
      public var btn_developer:SimpleButton;
      
      public var btn_play:SimpleButton;
      
      public var promo:MovieClip;
      
      public var progress_bar:MovieClip;
      
      public var promo2:MovieClip;
      
      public var progress_info:TextField;
      
      public var promo3:MovieClip;
      
      public var promo4:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var percent:int = 0;
      
      public function Preloader()
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
         this.addEventListener(Event.ENTER_FRAME,this.showProgress);
         this.btn_sponsor.addEventListener(MouseEvent.CLICK,this.sponsorClick);
         this.btn_developer.addEventListener(MouseEvent.CLICK,this.developerClick);
         this.btn_play.addEventListener(MouseEvent.CLICK,this.playClick);
         this.btn_play.visible = false;
         this.promo.addEventListener(MouseEvent.CLICK,this.promoClick);
         this.promo.buttonMode = true;
         this.promo2.addEventListener(MouseEvent.CLICK,this.promo2Click);
         this.promo2.buttonMode = true;
         this.promo3.addEventListener(MouseEvent.CLICK,this.promo3Click);
         this.promo3.buttonMode = true;
         this.promo4.addEventListener(MouseEvent.CLICK,this.promo4Click);
         this.promo4.buttonMode = true;
         this.progress_info.visible = true;
         trace("init preloader ... ok !");
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
               if(randVal <= 0.6)
               {
                  this.ads.visible = true;
                  this.mGF.hostMgr.adsShowPreloader(this.ads);
               }
               else if(randVal > 0.6 && randVal <= 0.8)
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
         this.btn_sponsor.removeEventListener(MouseEvent.CLICK,this.sponsorClick);
         this.btn_developer.removeEventListener(MouseEvent.CLICK,this.developerClick);
         this.btn_play.removeEventListener(MouseEvent.CLICK,this.playClick);
         this.promo.removeEventListener(MouseEvent.CLICK,this.promoClick);
         this.promo2.removeEventListener(MouseEvent.CLICK,this.promo2Click);
         this.promo3.removeEventListener(MouseEvent.CLICK,this.promo3Click);
         this.promo4.removeEventListener(MouseEvent.CLICK,this.promo4Click);
         this.dispCont.removeChild(this);
         trace("destroy preloader ... ok !");
      }
      
      private function sponsorClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_sponsor);
         navigateToURL(targetURL,"_blank");
      }
      
      private function developerClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_developer);
         navigateToURL(targetURL,"_blank");
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
      
      private function playClick(event:MouseEvent) : void
      {
         this.destroy();
         this.mGF.stageRoot.gotoAndPlay(2);
      }
      
      private function showProgress(event:Event) : void
      {
         this.percent = Math.round(this.mGF.stageRoot.loaderInfo.bytesLoaded / this.mGF.stageRoot.loaderInfo.bytesTotal * 100);
         this.progress_bar.scaleX = this.percent / 100;
         this.progress_info.htmlText = String(String(Math.round(this.mGF.stageRoot.loaderInfo.bytesLoaded / 1024)) + " kb / " + String(Math.round(this.mGF.stageRoot.loaderInfo.bytesTotal / 1024)) + " kb");
         if(this.mGF.stageRoot.loaderInfo.bytesLoaded == this.mGF.stageRoot.loaderInfo.bytesTotal)
         {
            trace("Done loading");
            this.removeEventListener(Event.ENTER_FRAME,this.showProgress);
            this.btn_play.visible = true;
            this.progress_info.visible = false;
         }
      }
   }
}

