package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1673")]
   public dynamic class ARCHER extends Character
   {
      
      public function ARCHER()
      {
         super();
         addFrameScript(29,this.frame30,62,this.frame63,114,this.frame115,129,this.frame130,139,this.frame140,151,this.frame152,174,this.frame175,196,this.frame197,259,this.frame260);
      }
      
      internal function frame30() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame63() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame115() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame130() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame140() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame152() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame175() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame197() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame260() : *
      {
         stop();
      }
   }
}

