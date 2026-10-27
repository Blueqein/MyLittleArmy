package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1656")]
   public dynamic class TANKER extends Character
   {
      
      public function TANKER()
      {
         super();
         addFrameScript(24,this.frame25,73,this.frame74,124,this.frame125,144,this.frame145,160,this.frame161,179,this.frame180,204,this.frame205,224,this.frame225,259,this.frame260);
      }
      
      internal function frame25() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame74() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame125() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame145() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame161() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame180() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame205() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame225() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame260() : *
      {
         stop();
      }
   }
}

