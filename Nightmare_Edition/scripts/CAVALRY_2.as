package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1674")]
   public dynamic class CAVALRY_2 extends Character
   {
      
      public function CAVALRY_2()
      {
         super();
         addFrameScript(39,this.frame40,63,this.frame64,109,this.frame110,124,this.frame125,132,this.frame133,142,this.frame143,178,this.frame179,215,this.frame216,259,this.frame260);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame64() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame110() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame125() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame133() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame143() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame179() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame216() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame260() : *
      {
         stop();
      }
   }
}

