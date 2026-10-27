package Game.Interface
{
   import Game.System.Battle.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class BattleTutorial extends MovieClip
   {
      
      public var btn_pause:SimpleButton;
      
      public var scrollmap:MovieClip;
      
      public var speedboost:MovieClip;
      
      public var total:TextField;
      
      public var mana:MovieClip;
      
      public var areaclick:MovieClip;
      
      public var switch_cmd:SimpleButton;
      
      public var btn_quit:SimpleButton;
      
      public var spell_cmd:MovieClip;
      
      public var unit_cmd:MovieClip;
      
      public var info:TextField;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var clipTut:*;
      
      private var bSys:*;
      
      private var lesson:int = 1;
      
      public function BattleTutorial()
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
         this.btn_quit.addEventListener(MouseEvent.CLICK,this.quitClick,false,0,true);
         this.mGF.stageRoot.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         this.bSys = new BattleSystem(this.mGF,this);
         this.bSys.init();
         this.bSys.startTutorial();
         var clip:* = new transisi_start_mc();
         clip.init(this.mGF);
         this.clipTut = new battle_tut_lesson();
         this.dispCont.addChild(this.clipTut);
         this.clipTut.gotoAndStop(1);
         this.clipTut.addEventListener(MouseEvent.CLICK,this.nextLessonClick,false,0,true);
         this.scrollmap.visible = false;
         this.unit_cmd.visible = false;
         this.spell_cmd.visible = false;
         this.total.visible = false;
         this.switch_cmd.visible = false;
         this.mana.visible = false;
         this.info.visible = false;
         this.btn_quit.visible = false;
         this.btn_pause.visible = false;
         this.speedboost.visible = false;
         trace("init battle tutorial ... ok !");
      }
      
      public function destroy() : *
      {
         if(this.clipTut)
         {
            this.dispCont.removeChild(this.clipTut);
            this.clipTut.removeEventListener(MouseEvent.CLICK,this.nextLessonClick);
            this.clipTut = null;
         }
         if(this.bSys)
         {
            this.bSys.destroy();
            this.bSys = null;
         }
         this.btn_quit.removeEventListener(MouseEvent.CLICK,this.quitClick);
         this.mGF.stageRoot.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy battle tutorial... ok !");
      }
      
      public function endBattle() : *
      {
         var clip:* = new transisi_end_mc();
         clip.init(this.mGF);
      }
      
      private function quitClick(event:MouseEvent) : void
      {
         var clip:* = new worldmap_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function nextLessonClick(event:MouseEvent) : void
      {
         this.clipTut.gotoAndStop(this.clipTut.currentFrame + 1);
         if(this.clipTut.currentFrame == 4)
         {
            this.info.visible = true;
         }
         if(this.clipTut.currentFrame == 5)
         {
            this.unit_cmd.visible = true;
         }
         if(this.clipTut.currentFrame == 8)
         {
            this.mana.visible = true;
         }
         if(this.clipTut.currentFrame == 10)
         {
            this.scrollmap.visible = true;
         }
         if(this.clipTut.currentFrame == 11)
         {
            this.switch_cmd.visible = true;
            this.unit_cmd.visible = false;
            this.spell_cmd.visible = true;
         }
         if(this.clipTut.currentFrame == 14)
         {
            this.btn_quit.visible = true;
            this.btn_pause.visible = true;
         }
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.bSys)
         {
            this.bSys.updateTutorial();
         }
      }
   }
}

