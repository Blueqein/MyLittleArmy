package Game.Manager
{
   import Game.Other.*;
   
   public class HostManager
   {
      
      private var stageRoot:*;
      
      public var _block_site:Boolean = false;
      
      public var _enable_mochibot:Boolean = false;
      
      public var _enable_ads:Boolean = true;
      
      public var _host_address:String = "";
      
      public var _host_name:String = "";
      
      public var _ad_type:String = "cpmstar";
      
      public var _link_developer:String = "http://artlogicgames.com/?gamereferral=my-little-army";
      
      public var _link_sponsor:String = "http://www.kongregate.com/?gamereferral=my-little-army";
      
      public var _link_promo:String = "http://www.kongregate.com/android/?gamereferral=my-little-army";
      
      public var _link_promo2:String = "http://www.kongregate.com/games/kingk/dream-world/?gamereferral=my-little-army";
      
      public var _link_promo3:String = "http://www.kongregate.com/games/synapticon/tyrant/?gamereferral=my-little-army";
      
      public var _link_promo4:String = "http://itunes.apple.com/us/app/epic-war-3-war-of-heroes/id398316384?mt=8";
      
      private var mochiBotID:String = "8babc26c";
      
      private var mochiAdID:String = "3f9bbb7837a4a1c6";
      
      private var cpmStarPreloaderID:String = "4405QB6B6ED8D";
      
      private var cpmStarInGameID:String = "4406Q4F0B49B5";
      
      private var ad4399ID:String = "100001201";
      
      private var ad4399KEY:String = "2b1c5944f73e09d2";
      
      public var kongAPI:* = null;
      
      private var adCont:* = null;
      
      private var ad:* = null;
      
      public function HostManager(_stageRoot:*)
      {
         super();
         this.stageRoot = _stageRoot;
         this.initHost();
         this.initMochiBot();
      }
      
      public function initHost() : *
      {
         this._host_address = this.stageRoot.loaderInfo.loaderURL;
         if(this._host_address == "file:///F|/ferry%20FLASH%20GAME%20DEV/17%2DEpicDefender/EpicDefender.swf")
         {
            this._host_name = "local";
            this._block_site = false;
            this._enable_mochibot = true;
            this._enable_ads = true;
            this._ad_type = "cpmstar";
            trace("LOCAL MODE ..");
         }
         else if(this._host_address.lastIndexOf("artlogicgames.com") > -1)
         {
            this._host_name = "artlogic";
            this._block_site = false;
            this._enable_mochibot = true;
            this._enable_ads = true;
            this._ad_type = "cpmstar";
         }
         else if(this._host_address.lastIndexOf("kongregate.com") > -1)
         {
            this._host_name = "kongregate";
            this._block_site = false;
            this._enable_mochibot = true;
            this._enable_ads = false;
            this._ad_type = "cpmstar";
            this.kongAPI = new KongAPI(this.stageRoot);
            this.kongAPI.initKongregateAPI();
         }
         else if(this._host_address.lastIndexOf("newgrounds.com") > -1 || this._host_address.lastIndexOf("ungrounded.net") > -1)
         {
            this._host_name = "newgrounds";
            this._block_site = false;
            this._enable_mochibot = true;
            this._enable_ads = true;
            this._ad_type = "cpmstar";
         }
         else if(this._host_address.lastIndexOf("armorgames.com") > -1)
         {
            this._host_name = "armorgames";
            this._block_site = false;
            this._enable_mochibot = false;
            this._ad_type = "cpmstar";
            this._link_sponsor = "http://www.armorgames.com";
         }
         else if(this._host_address.lastIndexOf("andkon.com") > -1)
         {
            this._host_name = "andkon";
            this._block_site = false;
            this._ad_type = "cpmstar";
            this._link_sponsor = "http://www.andkon.com/arcade";
         }
         else
         {
            this._host_name = "";
            this._block_site = false;
            this._enable_mochibot = true;
            this._enable_ads = true;
            this._ad_type = "cpmstar";
         }
      }
      
      public function initMochiBot() : *
      {
         if(this._enable_mochibot)
         {
            MochiBot.track(this.stageRoot,this.mochiBotID);
         }
      }
      
      public function adsShowPreloader(cont:*) : *
      {
         cont.visible = false;
         if(this._enable_ads)
         {
            cont.visible = true;
            this.adCont = cont;
            if(this._ad_type == "cpmstar")
            {
               this.ad = new CPMStarAdLoader(this.cpmStarPreloaderID);
               this.adCont.addChild(this.ad);
            }
            else if(this._ad_type == "mochiad")
            {
               MochiAd.showClickAwayAd({
                  "id":this.mochiAdID,
                  "clip":this.adCont
               });
            }
            else if(this._ad_type == "ad4399")
            {
               this.ad = new ad4399();
               this.adCont.addChild(this.ad);
            }
         }
      }
      
      public function adsShowInGame(cont:*) : *
      {
         cont.visible = false;
         if(this._enable_ads)
         {
            cont.visible = true;
            this.adCont = cont;
            if(this._ad_type == "cpmstar")
            {
               this.ad = new CPMStarAdLoader(this.cpmStarInGameID);
               this.adCont.addChild(this.ad);
            }
            else if(this._ad_type == "mochiad")
            {
               MochiAd.showClickAwayAd({
                  "id":this.mochiAdID,
                  "clip":this.adCont
               });
            }
            else if(this._ad_type == "ad4399")
            {
            }
         }
      }
      
      public function adsShowKong(cont:*) : *
      {
         cont.visible = true;
         this.adCont = cont;
         this.ad = new kong_ads_mc();
         this.adCont.addChild(this.ad);
      }
      
      public function adRemove() : *
      {
         if(this.adCont != null)
         {
            if(this.ad != null)
            {
               this.adCont.removeChild(this.ad);
               this.ad = null;
            }
            if(this._ad_type == "mochiad")
            {
               MochiAd.unload(this.adCont);
            }
            this.adCont = null;
         }
      }
   }
}

