package Game.System.Background
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class RainParticle extends Sprite
   {
      
      private var mGF:* = null;
      
      private var dispCont:* = null;
      
      private var bgMgr:*;
      
      private var lifeSpan:int = 120;
      
      private var rad:Number = 0;
      
      private var vx:Number = 0;
      
      private var vy:Number = 0;
      
      public function RainParticle()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.bgMgr = null;
         this.mGF = null;
      }
      
      public function initialise(_mGF:*, _bgMgr:*, _X:int = 0, _Y:int = 0) : *
      {
         this.mGF = _mGF;
         this.bgMgr = _bgMgr;
         this.dispCont = this.mGF.contFILTER;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = _X;
         this.y = _Y;
         this.scaleX = this.scaleY = Math.round((Math.random() * 0.8 + 0.3) * 10) / 10;
         this.vx = -5;
         this.vy = 50;
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.mGF.isPaused)
         {
            return;
         }
         if(this.y > this.bgMgr.getPointY(this.x - this.mGF.contSCROLL.x))
         {
            this.destroy();
            return;
         }
         this.x += this.vx;
         this.y += Math.random() * this.vy;
         this.lifeSpan = Math.max(this.lifeSpan - 1,0);
         if(this.lifeSpan <= 0)
         {
            this.destroy();
         }
      }
   }
}

