package
{
   import Game.System.Object.Rip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1862")]
   public dynamic class RIP extends Rip
   {
      
      public function RIP()
      {
         super();
         addFrameScript(28,this.frame29,58,this.frame59,98,this.frame99);
      }
      
      internal function frame29() : *
      {
         gotoAndPlay(22);
      }
      
      internal function frame59() : *
      {
         stop();
      }
      
      internal function frame99() : *
      {
         stop();
      }
   }
}

