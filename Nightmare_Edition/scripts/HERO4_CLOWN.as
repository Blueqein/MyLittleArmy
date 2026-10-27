package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1700")]
   public dynamic class HERO4_CLOWN extends Character
   {
      
      public function HERO4_CLOWN()
      {
         super();
         addFrameScript(59,this.frame60,135,this.frame136,157,this.frame158);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame136() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame158() : *
      {
         stop();
      }
   }
}

