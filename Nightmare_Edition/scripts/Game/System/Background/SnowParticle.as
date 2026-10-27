package Game.System.Background
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class SnowParticle extends Sprite
   {
      
      private var mGF:* = null;
      
      private var dispCont:* = null;
      
      private var bgMgr:*;
      
      private var lifeSpan:int = 120;
      
      private var rad:Number = 0;
      
      private var k:Number = 0;
      
      private var vy:Number = 0;
      
      public function SnowParticle()
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
         this.scaleX = this.scaleY = 0.5 + Math.random();
         this.alpha = 75 + Math.random() * 100;
         this.vy = 1 + Math.random() * 2;
         this.k = -Math.PI + Math.random() * Math.PI;
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
         this.rad += this.k / 180 * Math.PI;
         this.x -= Math.cos(this.rad);
         this.y += this.vy;
         this.lifeSpan = Math.max(this.lifeSpan - 1,0);
         if(this.lifeSpan <= 0)
         {
            this.destroy();
         }
      }
   }
}

