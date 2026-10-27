package
{
   import Game.System.Spell.Stop;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2222")]
   public dynamic class STOP extends Stop
   {
      
      public function STOP()
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

