package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1523")]
   public dynamic class FIGHTER extends Character
   {
      
      public function FIGHTER()
      {
         super();
         addFrameScript(39,this.frame40,80,this.frame81,119,this.frame120,137,this.frame138,153,this.frame154,170,this.frame171,186,this.frame187,206,this.frame207,238,this.frame239);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame81() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame120() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame138() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame154() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame171() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame187() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame207() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame239() : *
      {
         stop();
      }
   }
}

