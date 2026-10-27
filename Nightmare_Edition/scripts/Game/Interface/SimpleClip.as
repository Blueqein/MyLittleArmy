package Game.Interface
{
   import flash.display.MovieClip;
   
   public class SimpleClip extends MovieClip
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      public function SimpleClip()
      {
         super();
      }
      
      public function init(_mGF:*) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU2;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         trace("init warning  ... ok !");
      }
   }
}

