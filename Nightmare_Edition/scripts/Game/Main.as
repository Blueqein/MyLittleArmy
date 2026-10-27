package Game
{
   public class Main
   {
      
      private var mGF:* = null;
      
      public function Main()
      {
         super();
      }
      
      public function init(_stage:*) : *
      {
         this.mGF = new GameFramework();
         this.mGF.initialise(_stage);
      }
      
      public function startPreloader() : *
      {
         var clip:* = new preloader_mc();
         clip.init(this.mGF);
      }
      
      public function startGame() : *
      {
         var clipA:* = undefined;
         var clipS:* = undefined;
         if(this.mGF.hostMgr._block_site)
         {
            clipA = new warning_mc();
            clipA.init(this.mGF);
         }
         else
         {
            clipS = new intro_splash_mc();
            clipS.init(this.mGF);
         }
      }
   }
}

