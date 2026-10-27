package
{
   import Game.System.Spell.Shield;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2159")]
   public dynamic class SHIELD extends Shield
   {
      
      public function SHIELD()
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

