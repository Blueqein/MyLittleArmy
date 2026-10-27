package
{
   import Game.System.Spell.Haste;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2200")]
   public dynamic class HASTE extends Haste
   {
      
      public function HASTE()
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

