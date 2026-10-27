package
{
   import Game.Interface.TransitionAnim;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1108")]
   public dynamic class transisi_end_mc extends TransitionAnim
   {
      
      public function transisi_end_mc()
      {
         super();
         addFrameScript(37,this.frame38);
      }
      
      internal function frame38() : *
      {
         stop();
      }
   }
}

