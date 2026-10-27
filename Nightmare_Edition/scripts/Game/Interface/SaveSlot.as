package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class SaveSlot extends MovieClip
   {
      
      public var btn_erase:SimpleButton;
      
      public var save1:MovieClip;
      
      public var save2:MovieClip;
      
      public var save3:MovieClip;
      
      public var btn_back:SimpleButton;
      
      public var btn_start:SimpleButton;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var saveSelect:int = 1;
      
      private var saveMode:int = 0;
      
      private var saveName01:String = "EDEF_SAVE";
      
      private var saveName02:String = "EDEF_SAVE2";
      
      private var saveName03:String = "EDEF_SAVE3";
      
      private var confirmNew:* = null;
      
      private var confirmDel:* = null;
      
      public function SaveSlot()
      {
         super();
      }
      
      public function init(_mGF:*, _MODE:int = 1) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.confirmNew = this.mGF.utilMgr.confirmDialogYesNo("Confirmation","Restart game ? you will keep your loot item.");
         this.confirmDel = this.mGF.utilMgr.confirmDialogYesNo("Confirmation","Delete data ?");
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         this.btn_back.addEventListener(MouseEvent.CLICK,this.backClick,false,0,true);
         this.btn_erase.addEventListener(MouseEvent.CLICK,this.eraseClick,false,0,true);
         this.btn_start.addEventListener(MouseEvent.CLICK,this.startClick,false,0,true);
         this.save1.addEventListener(MouseEvent.CLICK,this.slot1Click,false,0,true);
         this.save2.addEventListener(MouseEvent.CLICK,this.slot2Click,false,0,true);
         this.save3.addEventListener(MouseEvent.CLICK,this.slot3Click,false,0,true);
         this.save1.cursor.visible = false;
         this.save2.cursor.visible = false;
         this.save3.cursor.visible = false;
         this.saveMode = _MODE;
         this.saveSelect = 0;
         this.btn_start.visible = false;
         this.btn_erase.visible = false;
         this.refreshInfo();
         trace("init save slot ... ok !");
      }
      
      public function destroy() : *
      {
         if(this.confirmNew)
         {
            this.confirmNew.destroy();
         }
         this.confirmNew = null;
         if(this.confirmDel)
         {
            this.confirmDel.destroy();
         }
         this.confirmDel = null;
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.btn_back.removeEventListener(MouseEvent.CLICK,this.backClick);
         this.btn_erase.removeEventListener(MouseEvent.CLICK,this.eraseClick);
         this.btn_start.removeEventListener(MouseEvent.CLICK,this.startClick);
         this.save1.removeEventListener(MouseEvent.CLICK,this.slot1Click);
         this.save2.removeEventListener(MouseEvent.CLICK,this.slot2Click);
         this.save3.removeEventListener(MouseEvent.CLICK,this.slot3Click);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy save slot ... ok !");
      }
      
      private function refreshInfo() : *
      {
         this.save1.pic.gotoAndStop(1);
         this.save2.pic.gotoAndStop(1);
         this.save3.pic.gotoAndStop(1);
         this.save1.info.htmlText = String("Empty");
         this.save2.info.htmlText = String("Empty");
         this.save3.info.htmlText = String("Empty");
         this.mGF.datMgr.saveFileName = this.saveName01;
         if(this.mGF.datMgr.loadData())
         {
            this.save1.pic.gotoAndStop(this.mGF.datMgr.hero_type + 1);
            this.save1.info.htmlText = String("Total Battle " + this.mGF.datMgr.stat_total_battle);
         }
         this.mGF.datMgr.saveFileName = this.saveName02;
         if(this.mGF.datMgr.loadData())
         {
            this.save2.pic.gotoAndStop(this.mGF.datMgr.hero_type + 1);
            this.save2.info.htmlText = String("Total Battle " + this.mGF.datMgr.stat_total_battle);
         }
         this.mGF.datMgr.saveFileName = this.saveName03;
         if(this.mGF.datMgr.loadData())
         {
            this.save3.pic.gotoAndStop(this.mGF.datMgr.hero_type + 1);
            this.save3.info.htmlText = String("Total Battle " + this.mGF.datMgr.stat_total_battle);
         }
      }
      
      private function newMode() : *
      {
         var clip:* = undefined;
         if(this.mGF.datMgr.loadData())
         {
            this.confirmNew.showDialog();
         }
         else
         {
            this.mGF.datMgr.resetGameData();
            this.mGF.datMgr.resetGameHeroData();
            clip = new select_mc();
            clip.init(this.mGF);
            this.destroy();
         }
      }
      
      private function continueMode() : *
      {
         var clip:* = undefined;
         if(this.mGF.datMgr.loadData())
         {
            clip = new worldmap_mc();
            clip.init(this.mGF);
            this.destroy();
         }
      }
      
      private function frameHandle(event:Event) : void
      {
         var clip:* = undefined;
         if(this.confirmDel.isOk())
         {
            this.mGF.datMgr.deleteData();
            this.refreshInfo();
         }
         if(this.confirmNew.isOk())
         {
            this.mGF.datMgr.resetGameData();
            this.mGF.datMgr.resetGameHeroData();
            clip = new select_mc();
            clip.init(this.mGF);
            this.destroy();
            return;
         }
      }
      
      private function backClick(event:MouseEvent) : void
      {
         var clip:* = new cover_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function eraseClick(event:MouseEvent) : void
      {
         if(this.mGF.datMgr.loadData())
         {
            this.confirmDel.showDialog();
         }
      }
      
      private function startClick(event:MouseEvent) : void
      {
         if(this.saveMode == 0)
         {
            this.newMode();
            return;
         }
         this.continueMode();
      }
      
      private function slot1Click(event:MouseEvent) : void
      {
         this.saveSelect = 1;
         this.mGF.datMgr.saveFileName = this.saveName01;
         this.save1.cursor.visible = true;
         this.save2.cursor.visible = false;
         this.save3.cursor.visible = false;
         if(this.saveMode == 0)
         {
            this.btn_start.visible = true;
            if(this.mGF.datMgr.loadData())
            {
               this.btn_erase.visible = true;
            }
            else
            {
               this.btn_erase.visible = false;
            }
         }
         else
         {
            if(this.mGF.datMgr.loadData())
            {
               this.btn_start.visible = true;
            }
            else
            {
               this.btn_start.visible = false;
            }
            this.btn_erase.visible = false;
         }
      }
      
      private function slot2Click(event:MouseEvent) : void
      {
         this.saveSelect = 2;
         this.mGF.datMgr.saveFileName = this.saveName02;
         this.save1.cursor.visible = false;
         this.save2.cursor.visible = true;
         this.save3.cursor.visible = false;
         if(this.saveMode == 0)
         {
            this.btn_start.visible = true;
            if(this.mGF.datMgr.loadData())
            {
               this.btn_erase.visible = true;
            }
            else
            {
               this.btn_erase.visible = false;
            }
         }
         else
         {
            if(this.mGF.datMgr.loadData())
            {
               this.btn_start.visible = true;
            }
            else
            {
               this.btn_start.visible = false;
            }
            this.btn_erase.visible = false;
         }
      }
      
      private function slot3Click(event:MouseEvent) : void
      {
         this.saveSelect = 3;
         this.mGF.datMgr.saveFileName = this.saveName03;
         this.save1.cursor.visible = false;
         this.save2.cursor.visible = false;
         this.save3.cursor.visible = true;
         this.btn_start.visible = true;
         if(this.saveMode == 0)
         {
            this.btn_start.visible = true;
            if(this.mGF.datMgr.loadData())
            {
               this.btn_erase.visible = true;
            }
            else
            {
               this.btn_erase.visible = false;
            }
         }
         else
         {
            if(this.mGF.datMgr.loadData())
            {
               this.btn_start.visible = true;
            }
            else
            {
               this.btn_start.visible = false;
            }
            this.btn_erase.visible = false;
         }
      }
   }
}

