package
{
   import Game.System.Spell.Mini;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2181")]
   public dynamic class MINI extends Mini
   {
      
      public function MINI()
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

