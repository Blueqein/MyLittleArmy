package Game.FClass
{
   import flash.events.MouseEvent;
   
   public class MClipSlotControl
   {
      
      private var clip:*;
      
      private var _is_mouse_click:Boolean = false;
      
      private var _is_mouse_over:Boolean = false;
      
      private var _is_mouse_out:Boolean = false;
      
      public var showInfoOver:Boolean = false;
      
      public function MClipSlotControl(MOVIECLIP:*)
      {
         super();
         this.clip = MOVIECLIP;
      }
      
      public function destroy() : *
      {
         this.setActive(false);
         this.clip = null;
      }
      
      public function setFramePosition(POS:*) : *
      {
         this.clip.gotoAndStop(POS);
      }
      
      public function setTextValue(VAL:String = "") : *
      {
         this.clip.value.htmlText = VAL;
      }
      
      public function setActive(VAL:Boolean = true) : *
      {
         if(VAL)
         {
            this.clip.addEventListener(MouseEvent.CLICK,this.clipClick,false,0,true);
            this.clip.addEventListener(MouseEvent.MOUSE_OVER,this.clipOver,false,0,true);
            this.clip.buttonMode = true;
         }
         else
         {
            this.clip.removeEventListener(MouseEvent.CLICK,this.clipClick);
            this.clip.removeEventListener(MouseEvent.MOUSE_OVER,this.clipOver);
            this.clip.removeEventListener(MouseEvent.MOUSE_OUT,this.clipOut);
            this.clip.buttonMode = false;
         }
         this._is_mouse_click = false;
         this._is_mouse_over = false;
      }
      
      public function isMouseClick() : Boolean
      {
         if(this._is_mouse_click)
         {
            this._is_mouse_click = false;
            return true;
         }
         return false;
      }
      
      public function isMouseOver() : Boolean
      {
         if(this._is_mouse_over)
         {
            this._is_mouse_over = false;
            return true;
         }
         return false;
      }
      
      public function isMouseOut() : Boolean
      {
         if(this._is_mouse_out)
         {
            this._is_mouse_out = false;
            return true;
         }
         return false;
      }
      
      public function getCLIP() : Object
      {
         return this.clip;
      }
      
      private function clipClick(event:MouseEvent) : void
      {
         this._is_mouse_click = true;
      }
      
      private function clipOver(event:MouseEvent) : void
      {
         this._is_mouse_over = true;
         this.clip.addEventListener(MouseEvent.MOUSE_OUT,this.clipOut,false,0,true);
         this.showInfoOver = true;
      }
      
      private function clipOut(event:MouseEvent) : void
      {
         this._is_mouse_over = false;
         this._is_mouse_out = true;
         this.showInfoOver = false;
         this.clip.removeEventListener(MouseEvent.MOUSE_OUT,this.clipOut);
      }
   }
}

