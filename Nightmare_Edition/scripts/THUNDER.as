package
{
   import Game.System.Spell.Thunder;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1888")]
   public dynamic class THUNDER extends Thunder
   {
      
      public function THUNDER()
      {
         super();
         addFrameScript(15,this.frame16);
      }
      
      internal function frame16() : *
      {
         stop();
      }
   }
}

