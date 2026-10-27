package
{
   import Game.System.Spell.Rage;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2148")]
   public dynamic class RAGE extends Rage
   {
      
      public function RAGE()
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

