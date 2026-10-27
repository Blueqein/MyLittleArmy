package
{
   import Game.Interface.IntroSponsor;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2908")]
   public dynamic class intro_splash_mc extends IntroSponsor
   {
      
      public function intro_splash_mc()
      {
         super();
         addFrameScript(179,this.frame180);
      }
      
      internal function frame180() : *
      {
         stop();
      }
   }
}

