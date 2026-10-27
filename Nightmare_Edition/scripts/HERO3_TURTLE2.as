package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1738")]
   public dynamic class HERO3_TURTLE2 extends Character
   {
      
      public function HERO3_TURTLE2()
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

