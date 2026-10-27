package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1783")]
   public dynamic class CREATURE_GHOST extends Character
   {
      
      public function CREATURE_GHOST()
      {
         super();
         addFrameScript(39,this.frame40,129,this.frame130,164,this.frame165,178,this.frame179,195,this.frame196,204,this.frame205,234,this.frame235,259,this.frame260,295,this.frame296);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame130() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame165() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame179() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame196() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame205() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame235() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame260() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame296() : *
      {
         stop();
      }
   }
}

