package Game.Interface
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class StoryEnding extends MovieClip
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function StoryEnding()
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
         this.gotoAndPlay(1);
         this.addEventListener(MouseEvent.CLICK,this.nextClick,false,0,true);
         trace("init ending  ... ok !");
      }
      
      public function destroy() : *
      {
         this.removeEventListener(MouseEvent.CLICK,this.nextClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy ending  ... ok !");
      }
      
      private function nextClick(event:MouseEvent) : void
      {
         var clip:* = undefined;
         if(this.currentFrame < this.totalFrames)
         {
            this.gotoAndStop(this.totalFrames);
         }
         else
         {
            clip = new tutClear_mc();
            clip.init(this.mGF);
            this.destroy();
         }
      }
   }
}

