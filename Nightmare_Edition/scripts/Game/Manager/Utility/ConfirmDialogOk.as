package Game.Manager.Utility
{
   import flash.events.MouseEvent;
   
   public class ConfirmDialogOk
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var clip:*;
      
      private var _title:String = "";
      
      private var _desc:String = "";
      
      private var _confirm_ok:Boolean = false;
      
      private var _dx:int = 350;
      
      private var _dy:int = 250;
      
      public function ConfirmDialogOk(_mGF:*, TITLE:String = "", DESC:String = "", DX:int = 350, DY:int = 250)
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
            this.clip = new confirm_dialog_ok_mc();
            this.dispCont.addChild(this.clip);
            this.clip.x = this._dx - Math.round(this.clip.width / 2);
            this.clip.y = this._dy - Math.round(this.clip.height / 2);
            this.clip.title.htmlText = this._title;
            this.clip.desc.htmlText = this._desc;
            this._confirm_ok = false;
            this.clip.btn_ok.addEventListener(MouseEvent.CLICK,this.battleOkClick,false,0,true);
         }
      }
      
      public function removeDialog() : *
      {
         if(this.clip)
         {
            this.clip.btn_ok.removeEventListener(MouseEvent.CLICK,this.battleOkClick);
            this.dispCont.removeChild(this.clip);
            this.clip = null;
         }
      }
      
      public function isOk() : Boolean
      {
         return this._confirm_ok;
      }
      
      private function battleOkClick(event:MouseEvent) : void
      {
         this._confirm_ok = true;
         this.removeDialog();
      }
   }
}

