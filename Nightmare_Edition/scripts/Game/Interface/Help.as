package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class Help extends MovieClip
   {
      
      public var btn_close:SimpleButton;
      
      public var btn_prev:SimpleButton;
      
      public var btn_next:SimpleButton;
      
      public var page:TextField;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function Help()
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
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         this.btn_next.addEventListener(MouseEvent.CLICK,this.nextClick,false,0,true);
         this.btn_prev.addEventListener(MouseEvent.CLICK,this.prevClick,false,0,true);
         this.gotoAndStop(1);
         this.page.htmlText = String("1 / " + this.totalFrames);
         trace("init help ... ok !");
      }
      
      public function destroy() : *
      {
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.btn_next.removeEventListener(MouseEvent.CLICK,this.nextClick);
         this.btn_prev.removeEventListener(MouseEvent.CLICK,this.prevClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy help ... ok !");
      }
      
      public function setPage(PAGE:int = 1) : *
      {
         this.gotoAndStop(PAGE);
         this.page.htmlText = String(this.currentFrame + " / " + this.totalFrames);
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         this.destroy();
      }
      
      private function nextClick(event:MouseEvent) : void
      {
         if(this.currentFrame < this.totalFrames)
         {
            this.gotoAndStop(this.currentFrame + 1);
         }
         this.page.htmlText = String(this.currentFrame + " / " + this.totalFrames);
      }
      
      private function prevClick(event:MouseEvent) : void
      {
         if(this.currentFrame > 1)
         {
            this.gotoAndStop(this.currentFrame - 1);
         }
         this.page.htmlText = String(this.currentFrame + " / " + this.totalFrames);
      }
   }
}

