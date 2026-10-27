package
{
   import Game.System.Object.Bomb;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1538")]
   public dynamic class THROW_09_DYNAMIT extends Bomb
   {
      
      public function THROW_09_DYNAMIT()
      {
         super();
         addFrameScript(7,this.frame8,32,this.frame33);
      }
      
      internal function frame8() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame33() : *
      {
         stop();
      }
   }
}

