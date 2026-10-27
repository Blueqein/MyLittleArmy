package
{
   import Game.System.Spell.Poison;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1919")]
   public dynamic class POISON extends Poison
   {
      
      public function POISON()
      {
         super();
         addFrameScript(54,this.frame55);
      }
      
      internal function frame55() : *
      {
         stop();
      }
   }
}

