package
{
   import Game.System.Spell.Fire;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1977")]
   public dynamic class FIRE extends Fire
   {
      
      public function FIRE()
      {
         super();
         addFrameScript(28,this.frame29);
      }
      
      internal function frame29() : *
      {
         stop();
      }
   }
}

