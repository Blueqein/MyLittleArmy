package
{
   import Game.System.Object.Bomb;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1608")]
   public dynamic class THROW_10_MELON extends Bomb
   {
      
      public function THROW_10_MELON()
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

