package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2325")]
   public dynamic class BOSS_SNOW extends Character
   {
      
      public function BOSS_SNOW()
      {
         super();
         addFrameScript(59,this.frame60,84,this.frame85,159,this.frame160,204,this.frame205);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame85() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame160() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame205() : *
      {
         stop();
      }
   }
}

