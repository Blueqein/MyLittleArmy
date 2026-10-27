package
{
   import Game.System.Spell.Regen;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2034")]
   public dynamic class REGEN extends Regen
   {
      
      public function REGEN()
      {
         super();
         addFrameScript(30,this.frame31);
      }
      
      internal function frame31() : *
      {
         stop();
      }
   }
}

