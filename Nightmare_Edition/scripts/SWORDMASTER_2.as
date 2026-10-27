package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1631")]
   public dynamic class SWORDMASTER_2 extends Character
   {
      
      public function SWORDMASTER_2()
      {
         super();
         addFrameScript(39,this.frame40,58,this.frame59,128,this.frame129,148,this.frame149,156,this.frame157,166,this.frame167,198,this.frame199,218,this.frame219,260,this.frame261);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame59() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame129() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame149() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame157() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame167() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame199() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame219() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame261() : *
      {
         stop();
      }
   }
}

