package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class Credit extends MovieClip
   {
      
      public var btn_close:SimpleButton;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function Credit()
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
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         trace("init credit ... ok !");
      }
      
      public function destroy() : *
      {
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy credit ... ok !");
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         this.destroy();
      }
   }
}

