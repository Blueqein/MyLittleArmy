package
{
   import Game.System.Spell.Slow;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2213")]
   public dynamic class SLOW extends Slow
   {
      
      public function SLOW()
      {
         super();
         addFrameScript(70,this.frame71);
      }
      
      internal function frame71() : *
      {
         stop();
      }
   }
}

