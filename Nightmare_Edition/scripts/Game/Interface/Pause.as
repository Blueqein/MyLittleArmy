package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.*;
   
   public class Pause extends MovieClip
   {
      
      public var btn_playmore:SimpleButton;
      
      public var btn_surrender:SimpleButton;
      
      public var btn_option:SimpleButton;
      
      public var btn_resume:SimpleButton;
      
      public var btn_help:SimpleButton;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      private var confirmQuit:* = null;
      
      private var bgm_vol_tmp:Number = 1;
      
      public function Pause()
      {
         super();
      }
      
      public function init(_mGF:*, _bSys:*) : *
      {
         this.mGF = _mGF;
         this.bSys = _bSys;
         this.dispCont = this.mGF.contMENU2;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.mGF.isPaused = true;
         this.confirmQuit = this.mGF.utilMgr.confirmDialogYesNo("Confirmation","Give up ?");
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         this.btn_surrender.addEventListener(MouseEvent.CLICK,this.surrenderClick,false,0,true);
         this.btn_resume.addEventListener(MouseEvent.CLICK,this.resumeClick,false,0,true);
         this.btn_option.addEventListener(MouseEvent.CLICK,this.optionClick,false,0,true);
         this.btn_help.addEventListener(MouseEvent.CLICK,this.helpClick,false,0,true);
         this.btn_playmore.addEventListener(MouseEvent.CLICK,this.playmoreClick,false,0,true);
         trace("init paused ... ok !");
      }
      
      public function destroy() : *
      {
         this.mGF.isPaused = false;
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.btn_surrender.removeEventListener(MouseEvent.CLICK,this.surrenderClick);
         this.btn_resume.removeEventListener(MouseEvent.CLICK,this.resumeClick);
         this.btn_option.removeEventListener(MouseEvent.CLICK,this.optionClick);
         this.btn_help.removeEventListener(MouseEvent.CLICK,this.helpClick);
         this.btn_playmore.removeEventListener(MouseEvent.CLICK,this.playmoreClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy paused ... ok !");
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.confirmQuit.isOk())
         {
            this.bSys.isRequestQuit = 4;
            this.destroy();
         }
      }
      
      private function resumeClick(event:MouseEvent) : void
      {
         this.destroy();
      }
      
      private function surrenderClick(event:MouseEvent) : void
      {
         this.confirmQuit.showDialog();
      }
      
      private function optionClick(event:MouseEvent) : void
      {
         var clip:* = new option_mc();
         clip.init(this.mGF);
      }
      
      private function helpClick(event:MouseEvent) : void
      {
         var clip:* = new help_mc();
         clip.init(this.mGF);
      }
      
      private function playmoreClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_sponsor);
         navigateToURL(targetURL,"_blank");
      }
   }
}

