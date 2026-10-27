package Game.Interface
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.*;
   
   public class IntroSponsor extends MovieClip
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function IntroSponsor()
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
         this.addEventListener(MouseEvent.CLICK,this.mouseClick,false,0,true);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         trace("init sponsor ... ok !");
      }
      
      public function destroy() : *
      {
         this.removeEventListener(MouseEvent.CLICK,this.mouseClick);
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         trace("destroy sponsor ... ok !");
      }
      
      private function mouseClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_sponsor);
         navigateToURL(targetURL,"_blank");
      }
      
      private function frameHandle(event:Event) : void
      {
         var clip:* = undefined;
         if(this.currentFrame >= this.totalFrames)
         {
            clip = new cover_mc();
            clip.init(this.mGF);
            this.destroy();
         }
      }
   }
}

