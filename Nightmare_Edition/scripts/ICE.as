package
{
   import Game.System.Spell.Ice;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2269")]
   public dynamic class ICE extends Ice
   {
      
      public function ICE()
      {
         super();
         addFrameScript(83,this.frame84);
      }
      
      internal function frame84() : *
      {
         stop();
      }
   }
}

