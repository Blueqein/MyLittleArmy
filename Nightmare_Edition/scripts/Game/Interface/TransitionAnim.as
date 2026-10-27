package Game.Interface
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class TransitionAnim extends MovieClip
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function TransitionAnim()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
      }
      
      public function init(_mGF:*) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU2;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.gotoAndPlay(1);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.currentFrame == this.totalFrames)
         {
            this.destroy();
         }
      }
   }
}

