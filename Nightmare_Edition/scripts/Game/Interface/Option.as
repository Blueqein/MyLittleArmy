package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class Option extends MovieClip
   {
      
      public var bgm_vol:MovieClip;
      
      public var btn_se_add:SimpleButton;
      
      public var btn_close:SimpleButton;
      
      public var btn_bgm_min:SimpleButton;
      
      public var quality_setup:MovieClip;
      
      public var btn_bgm_add:SimpleButton;
      
      public var se_vol:MovieClip;
      
      public var btn_se_min:SimpleButton;
      
      public var show_healthbar:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function Option()
      {
         super();
      }
      
      public function init(_mGF:*) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU2;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         if(this.btn_close)
         {
            this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         }
         this.btn_bgm_add.addEventListener(MouseEvent.CLICK,this.bgmAddClick,false,0,true);
         this.btn_bgm_min.addEventListener(MouseEvent.CLICK,this.bgmMinClick,false,0,true);
         this.btn_se_add.addEventListener(MouseEvent.CLICK,this.seAddClick,false,0,true);
         this.btn_se_min.addEventListener(MouseEvent.CLICK,this.seMinClick,false,0,true);
         this.show_healthbar.addEventListener(MouseEvent.CLICK,this.healthBarClick,false,0,true);
         this.quality_setup.addEventListener(MouseEvent.CLICK,this.qualityClick,false,0,true);
         this.show_healthbar.buttonMode = true;
         this.quality_setup.buttonMode = true;
         if(this.mGF.datMgr.opt_show_health_bar <= 0)
         {
            this.show_healthbar.gotoAndStop(1);
         }
         else
         {
            this.show_healthbar.gotoAndStop(2);
         }
         if(this.mGF.datMgr.opt_quality_setup <= 0)
         {
            this.quality_setup.gotoAndStop(1);
         }
         else
         {
            this.quality_setup.gotoAndStop(2);
         }
         this.bgm_vol.gotoAndStop(this.mGF.soundMgr.getBgmVolume() + 1);
         this.se_vol.gotoAndStop(this.mGF.soundMgr.getSeVolume() + 1);
         if(this.mGF.datMgr.opt_quality_setup == 0)
         {
            this.mGF.stageRoot.stage.quality = "low";
            this.quality_setup.gotoAndStop(1);
         }
         else if(this.mGF.datMgr.opt_quality_setup == 1)
         {
            this.mGF.stageRoot.stage.quality = "med";
            this.quality_setup.gotoAndStop(2);
         }
         else if(this.mGF.datMgr.opt_quality_setup == 2)
         {
            this.mGF.stageRoot.stage.quality = "high";
            this.quality_setup.gotoAndStop(3);
         }
         trace("init option ... ok !");
      }
      
      public function destroy() : *
      {
         this.btn_bgm_add.removeEventListener(MouseEvent.CLICK,this.bgmAddClick);
         this.btn_bgm_min.removeEventListener(MouseEvent.CLICK,this.bgmMinClick);
         this.btn_se_add.removeEventListener(MouseEvent.CLICK,this.seAddClick);
         this.btn_se_min.removeEventListener(MouseEvent.CLICK,this.seMinClick);
         this.show_healthbar.removeEventListener(MouseEvent.CLICK,this.healthBarClick);
         this.quality_setup.removeEventListener(MouseEvent.CLICK,this.qualityClick);
         if(this.btn_close)
         {
            this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         }
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy option ... ok !");
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         this.destroy();
      }
      
      private function bgmAddClick(event:MouseEvent) : void
      {
         this.bgm_vol.gotoAndStop(Math.min(this.bgm_vol.currentFrame + 1,this.bgm_vol.totalFrames));
         this.mGF.soundMgr.setBgmVolume(this.bgm_vol.currentFrame - 1);
      }
      
      private function bgmMinClick(event:MouseEvent) : void
      {
         this.bgm_vol.gotoAndStop(Math.max(this.bgm_vol.currentFrame - 1,0));
         this.mGF.soundMgr.setBgmVolume(this.bgm_vol.currentFrame - 1);
      }
      
      private function seAddClick(event:MouseEvent) : void
      {
         this.se_vol.gotoAndStop(Math.min(this.se_vol.currentFrame + 1,this.se_vol.totalFrames));
         this.mGF.soundMgr.setSeVolume(this.se_vol.currentFrame - 1);
      }
      
      private function seMinClick(event:MouseEvent) : void
      {
         this.se_vol.gotoAndStop(Math.max(this.se_vol.currentFrame - 1,0));
         this.mGF.soundMgr.setSeVolume(this.se_vol.currentFrame - 1);
      }
      
      private function healthBarClick(event:MouseEvent) : void
      {
         if(this.show_healthbar.currentFrame == 1)
         {
            this.show_healthbar.gotoAndStop(2);
            this.mGF.datMgr.opt_show_health_bar = 1;
         }
         else
         {
            this.show_healthbar.gotoAndStop(1);
            this.mGF.datMgr.opt_show_health_bar = 0;
         }
      }
      
      private function qualityClick(event:MouseEvent) : void
      {
         if(this.quality_setup.currentFrame == 1)
         {
            this.quality_setup.gotoAndStop(2);
            this.mGF.datMgr.opt_quality_setup = 1;
            this.mGF.stageRoot.stage.quality = "medium";
         }
         else if(this.quality_setup.currentFrame == 2)
         {
            this.quality_setup.gotoAndStop(3);
            this.mGF.datMgr.opt_quality_setup = 2;
            this.mGF.stageRoot.stage.quality = "high";
         }
         else
         {
            this.quality_setup.gotoAndStop(1);
            this.mGF.datMgr.opt_quality_setup = 0;
            this.mGF.stageRoot.stage.quality = "low";
         }
      }
   }
}

