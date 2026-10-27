package
{
   import Game.System.Spell.Resurrect;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2280")]
   public dynamic class RESURRECT extends Resurrect
   {
      
      public function RESURRECT()
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

