package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1709")]
   public dynamic class HERO1_MONKEY extends Character
   {
      
      public function HERO1_MONKEY()
      {
         super();
         addFrameScript(59,this.frame60,105,this.frame106,123,this.frame124);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame106() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame124() : *
      {
         stop();
      }
   }
}

