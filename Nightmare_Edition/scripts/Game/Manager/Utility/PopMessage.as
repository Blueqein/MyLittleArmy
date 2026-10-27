package Game.Manager.Utility
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class PopMessage extends MovieClip
   {
      
      public var msg:TextField;
      
      private var mGF:* = null;
      
      private var dispCont:* = null;
      
      private var alphaFade:Number = 1;
      
      private var lifespan:int = 40;
      
      public function PopMessage()
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
      
      public function initialise(_mGF:*, valText:String = "", _lifespan:int = 100) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU2;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.msg.htmlText = String(valText);
         this.alpha = 1;
         this.lifespan = _lifespan;
         this.alphaFade = 1 / 20;
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.lifespan <= 20)
         {
            this.alpha = Math.max(this.alpha - this.alphaFade,0);
         }
         if(this.lifespan <= 0)
         {
            this.destroy();
            return;
         }
         this.lifespan = Math.max(this.lifespan - 1,0);
      }
   }
}

