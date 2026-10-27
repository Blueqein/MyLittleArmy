package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class TutInGame extends MovieClip
   {
      
      public var btn_close:SimpleButton;
      
      public var btn_next:SimpleButton;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function TutInGame()
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
         this.btn_next.addEventListener(MouseEvent.CLICK,this.nextClick,false,0,true);
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         this.gotoAndStop(1);
         trace("init tut ... ok !");
      }
      
      public function destroy() : *
      {
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy tut ... ok !");
      }
      
      private function nextClick(event:MouseEvent) : void
      {
         if(this.currentFrame == this.totalFrames)
         {
            this.destroy();
         }
         else
         {
            this.gotoAndStop(this.currentFrame + 1);
         }
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         this.destroy();
      }
   }
}

