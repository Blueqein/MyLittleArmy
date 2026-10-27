package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2306")]
   public dynamic class PORTAL_ZOMBIE extends Character
   {
      
      public function PORTAL_ZOMBIE()
      {
         super();
         addFrameScript(14,this.frame15,140,this.frame141,164,this.frame165);
      }
      
      internal function frame15() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame141() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame165() : *
      {
         stop();
      }
   }
}

