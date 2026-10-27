package
{
   import Game.System.Spell.Giant;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2170")]
   public dynamic class GIANT extends Giant
   {
      
      public function GIANT()
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

