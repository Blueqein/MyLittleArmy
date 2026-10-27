package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1659")]
   public dynamic class THROWER extends Character
   {
      
      public function THROWER()
      {
         super();
         addFrameScript(39,this.frame40,56,this.frame57,89,this.frame90,104,this.frame105,113,this.frame114,123,this.frame124,161,this.frame162,204,this.frame205,259,this.frame260);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame57() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame90() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame105() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame114() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame124() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame162() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame205() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame260() : *
      {
         stop();
      }
   }
}

