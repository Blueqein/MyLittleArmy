package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1747")]
   public dynamic class HERO5_SNAKE extends Character
   {
      
      public function HERO5_SNAKE()
      {
         super();
         addFrameScript(59,this.frame60,117,this.frame118,139,this.frame140);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame118() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame140() : *
      {
         stop();
      }
   }
}

