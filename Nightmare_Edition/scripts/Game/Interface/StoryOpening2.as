package Game.Interface
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class StoryOpening2 extends MovieClip
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function StoryOpening2()
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
         trace("init opening 2  ... ok !");
      }
      
      public function destroy() : *
      {
         this.removeEventListener(MouseEvent.CLICK,this.nextClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy opening 2  ... ok !");
      }
      
      private function nextClick(event:MouseEvent) : void
      {
         var clipTut:* = undefined;
         var clip:* = undefined;
         if(this.currentFrame < this.totalFrames)
         {
            this.gotoAndStop(this.totalFrames);
         }
         else
         {
            if(this.mGF.datMgr.help_battle <= 0)
            {
               clipTut = new battle_tut_mc();
               clipTut.init(this.mGF);
               this.mGF.datMgr.help_battle = 1;
            }
            else
            {
               clip = new worldmap_mc();
               clip.init(this.mGF);
            }
            this.destroy();
         }
      }
   }
}

