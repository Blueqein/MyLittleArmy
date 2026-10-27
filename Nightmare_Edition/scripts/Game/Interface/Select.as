package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class Select extends MovieClip
   {
      
      public var hero1_select:MovieClip;
      
      public var hero3_select:MovieClip;
      
      public var hero2_select:MovieClip;
      
      public var btn_back:SimpleButton;
      
      public var hero1_clear:MovieClip;
      
      public var btn_start:SimpleButton;
      
      public var hero3_clear:MovieClip;
      
      public var hero2_clear:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var heroSelect:int = 1;
      
      public function Select()
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
         this.btn_back.addEventListener(MouseEvent.CLICK,this.backClick,false,0,true);
         this.btn_start.addEventListener(MouseEvent.CLICK,this.startClick,false,0,true);
         this.hero1_select.addEventListener(MouseEvent.CLICK,this.hero1Click,false,0,true);
         this.hero2_select.addEventListener(MouseEvent.CLICK,this.hero2Click,false,0,true);
         this.hero3_select.addEventListener(MouseEvent.CLICK,this.hero3Click,false,0,true);
         this.hero1_select.gotoAndStop(1);
         this.hero2_select.gotoAndStop(2);
         this.hero3_select.gotoAndStop(3);
         this.heroSelect = 0;
         this.btn_start.visible = false;
         this.hero1_select.cursor.visible = false;
         this.hero2_select.cursor.visible = false;
         this.hero3_select.cursor.visible = false;
         this.hero1_select.buttonMode = true;
         this.hero2_select.buttonMode = true;
         this.hero3_select.buttonMode = true;
         this.hero1_clear.visible = false;
         this.hero2_clear.visible = false;
         this.hero3_clear.visible = false;
         if(this.mGF.datMgr.hero_1_competed > 0)
         {
            this.hero1_clear.visible = true;
         }
         if(this.mGF.datMgr.hero_2_competed > 0)
         {
            this.hero2_clear.visible = true;
         }
         if(this.mGF.datMgr.hero_3_competed > 0)
         {
            this.hero3_clear.visible = true;
         }
         trace("init select ... ok !");
      }
      
      public function destroy() : *
      {
         this.btn_back.removeEventListener(MouseEvent.CLICK,this.backClick);
         this.btn_start.removeEventListener(MouseEvent.CLICK,this.startClick);
         this.hero1_select.removeEventListener(MouseEvent.CLICK,this.hero1Click);
         this.hero2_select.removeEventListener(MouseEvent.CLICK,this.hero2Click);
         this.hero3_select.removeEventListener(MouseEvent.CLICK,this.hero3Click);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy credit ... ok !");
      }
      
      private function playStoryOpening() : *
      {
         var clip:* = undefined;
         if(this.mGF.datMgr.hero_type == 1)
         {
            clip = new hero1_story_opening_mc();
            clip.init(this.mGF);
         }
         else if(this.mGF.datMgr.hero_type == 2)
         {
            clip = new hero2_story_opening_mc();
            clip.init(this.mGF);
         }
         else
         {
            clip = new hero3_story_opening_mc();
            clip.init(this.mGF);
         }
      }
      
      private function backClick(event:MouseEvent) : void
      {
         var clip:* = new cover_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function startClick(event:MouseEvent) : void
      {
         if(this.mGF.datMgr.loadData() == false)
         {
            this.newPlayGame();
            this.playStoryOpening();
            this.destroy();
         }
         else
         {
            this.newPlayCarryOver();
            this.playStoryOpening();
            this.destroy();
         }
      }
      
      private function hero1Click(event:MouseEvent) : void
      {
         this.heroSelect = 1;
         this.hero1_select.cursor.visible = true;
         this.hero2_select.cursor.visible = false;
         this.hero3_select.cursor.visible = false;
         this.btn_start.visible = true;
      }
      
      private function hero2Click(event:MouseEvent) : void
      {
         this.heroSelect = 2;
         this.hero1_select.cursor.visible = false;
         this.hero2_select.cursor.visible = true;
         this.hero3_select.cursor.visible = false;
         this.btn_start.visible = true;
      }
      
      private function hero3Click(event:MouseEvent) : void
      {
         this.heroSelect = 3;
         this.hero1_select.cursor.visible = false;
         this.hero2_select.cursor.visible = false;
         this.hero3_select.cursor.visible = true;
         this.btn_start.visible = true;
      }
      
      private function newPlayGame() : *
      {
         this.mGF.datMgr.resetGameData();
         this.mGF.datMgr.resetGameHeroData();
         this.mGF.datMgr.hero_type = this.heroSelect;
         if(this.mGF.datMgr.hero_type == 1)
         {
            this.mGF.datMgr.hero_spell_arrow = 1;
         }
         if(this.mGF.datMgr.hero_type == 2)
         {
            this.mGF.datMgr.hero_spell_heal = 1;
         }
         if(this.mGF.datMgr.hero_type == 3)
         {
            this.mGF.datMgr.hero_spell_poison = 1;
         }
      }
      
      private function newPlayCarryOver() : *
      {
         this.mGF.datMgr.loadData();
         this.mGF.datMgr.resetGameHeroData();
         this.mGF.datMgr.hero_type = this.heroSelect;
         if(this.mGF.datMgr.hero_type == 1)
         {
            this.mGF.datMgr.hero_spell_arrow = 1;
         }
         if(this.mGF.datMgr.hero_type == 2)
         {
            this.mGF.datMgr.hero_spell_heal = 1;
         }
         if(this.mGF.datMgr.hero_type == 3)
         {
            this.mGF.datMgr.hero_spell_poison = 1;
         }
      }
   }
}

