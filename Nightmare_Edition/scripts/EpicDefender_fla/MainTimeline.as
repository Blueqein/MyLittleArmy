package EpicDefender_fla
{
   import Game.*;
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.engine.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class MainTimeline extends MovieClip
   {
      
      public var _4399_function_ad_id:String;
      
      public var gme:*;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      public function setHold(hold:*) : void
      {
         root["serviceHold"] = hold;
      }
      
      internal function frame1() : *
      {
         stop();
         stage.scaleMode = StageScaleMode.NO_SCALE;
         this._4399_function_ad_id = "92d6cef76cd06829e088932fe9fd819b";
         this.gme = new Main();
         this.gme.init(this);
         this.gme.startPreloader();
      }
      
      internal function frame5() : *
      {
         stop();
         this.gme.startGame();
      }
   }
}

