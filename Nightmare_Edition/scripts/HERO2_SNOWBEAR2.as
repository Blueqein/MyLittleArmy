package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1769")]
   public dynamic class HERO2_SNOWBEAR2 extends Character
   {
      
      public function HERO2_SNOWBEAR2()
      {
         super();
         addFrameScript(59,this.frame60,115,this.frame116,136,this.frame137);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame116() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame137() : *
      {
         stop();
      }
   }
}

