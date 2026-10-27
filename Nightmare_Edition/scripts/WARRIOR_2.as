package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1675")]
   public dynamic class WARRIOR_2 extends Character
   {
      
      public function WARRIOR_2()
      {
         super();
         addFrameScript(59,this.frame60,93,this.frame94,139,this.frame140,154,this.frame155,162,this.frame163,172,this.frame173,198,this.frame199,215,this.frame216,259,this.frame260);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame94() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame140() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame155() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame163() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame173() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame199() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame216() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame260() : *
      {
         stop();
      }
   }
}

