package Game.Manager.Effect.Info
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class PopDamageText extends Sprite
   {
      
      public var val:TextField;
      
      private var mGF:* = null;
      
      private var dispCont:* = null;
      
      private var lifeSpan:int = 20;
      
      private var alpha_fade:Number = 0.2;
      
      private var vy:Number = 5;
      
      public function PopDamageText()
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
      
      public function initialise(_mGF:*, _X:Number = 0, _Y:Number = 0, _VAL:String = "") : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contEFFECT;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = _X;
         this.y = _Y;
         this.val.htmlText = String(_VAL);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.mGF.isPaused)
         {
            return;
         }
         this.x += 1;
         this.y -= this.vy;
         this.vy -= 0.5;
         if(this.lifeSpan < 5)
         {
            this.alpha = Math.max(this.alpha - this.alpha_fade,0);
         }
         this.lifeSpan = Math.max(this.lifeSpan - 1,0);
         if(this.alpha <= 0 || this.lifeSpan <= 0 || this.y > 550)
         {
            this.destroy();
         }
      }
   }
}

