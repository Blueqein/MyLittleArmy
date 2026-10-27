package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1729")]
   public dynamic class HERO3_TURTLE extends Character
   {
      
      public function HERO3_TURTLE()
      {
         super();
         addFrameScript(59,this.frame60,113,this.frame114,136,this.frame137);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame114() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame137() : *
      {
         stop();
      }
   }
}

