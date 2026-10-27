package
{
   import Game.System.Object.Bomb;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1618")]
   public dynamic class THROW_12_NUCLEAR extends Bomb
   {
      
      public function THROW_12_NUCLEAR()
      {
         super();
         addFrameScript(7,this.frame8,43,this.frame44);
      }
      
      internal function frame8() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame44() : *
      {
         stop();
      }
   }
}

