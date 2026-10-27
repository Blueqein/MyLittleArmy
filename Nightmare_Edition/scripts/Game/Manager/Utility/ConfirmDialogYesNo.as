package Game.Manager.Utility
{
   import flash.events.MouseEvent;
   
   public class ConfirmDialogYesNo
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var clip:*;
      
      private var _title:String = "";
      
      private var _desc:String = "";
      
      private var _confirm_ok:Boolean = false;
      
      private var _dx:int = 350;
      
      private var _dy:int = 250;
      
      public function ConfirmDialogYesNo(_mGF:*, TITLE:String = "", DESC:String = "", DX:int = 350, DY:int = 250)
      {
         super();
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU2;
         this._title = TITLE;
         this._desc = DESC;
         this._confirm_ok = false;
         this._dx = DX;
         this._dy = DY;
      }
      
      public function destroy() : *
      {
         this.removeDialog();
         this.dispCont = null;
         this.mGF = null;
      }
      
      public function showDialog() : *
      {
         this.removeDialog();
         if(this.clip == null)
         {
            this.clip = new confirm_dialog_yesno_mc();
            this.dispCont.addChild(this.clip);
            this.clip.x = this._dx - Math.round(this.clip.width / 2);
            this.clip.y = this._dy - Math.round(this.clip.height / 2);
            this.clip.title.htmlText = this._title;
            this.clip.desc.htmlText = this._desc;
            this._confirm_ok = false;
            this.clip.btn_yes.addEventListener(MouseEvent.CLICK,this.battleYesClick,false,0,true);
            this.clip.btn_no.addEventListener(MouseEvent.CLICK,this.battleNoClick,false,0,true);
         }
      }
      
      public function removeDialog() : *
      {
         if(this.clip)
         {
            this.clip.btn_yes.removeEventListener(MouseEvent.CLICK,this.battleYesClick);
            this.clip.btn_no.removeEventListener(MouseEvent.CLICK,this.battleNoClick);
            this.dispCont.removeChild(this.clip);
            this.clip = null;
         }
      }
      
      public function setTitle(TITLE:String = "") : *
      {
         this._title = TITLE;
         this.clip.title.htmlText = this._title;
      }
      
      public function setDesc(DESC:String = "") : *
      {
         this._desc = DESC;
         this.clip.desc.htmlText = this._desc;
      }
      
      public function isOk() : Boolean
      {
         if(this._confirm_ok)
         {
            this._confirm_ok = false;
            return true;
         }
         return false;
      }
      
      private function battleYesClick(event:MouseEvent) : void
      {
         this._confirm_ok = true;
         this.removeDialog();
      }
      
      private function battleNoClick(event:MouseEvent) : void
      {
         this._confirm_ok = false;
         this.removeDialog();
      }
   }
}

