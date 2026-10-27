package
{
   import Game.Interface.TransitionAnim;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1109")]
   public dynamic class transisi_start_mc extends TransitionAnim
   {
      
      public function transisi_start_mc()
      {
         super();
         addFrameScript(24,this.frame25);
      }
      
      internal function frame25() : *
      {
         stop();
      }
   }
}

