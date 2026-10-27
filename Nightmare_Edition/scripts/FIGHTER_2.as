package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1690")]
   public dynamic class FIGHTER_2 extends Character
   {
      
      public function FIGHTER_2()
      {
         super();
         addFrameScript(39,this.frame40,80,this.frame81,132,this.frame133,150,this.frame151,166,this.frame167,183,this.frame184,199,this.frame200,219,this.frame220,250,this.frame251);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame81() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame133() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame151() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame167() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame184() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame200() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame220() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame251() : *
      {
         stop();
      }
   }
}

