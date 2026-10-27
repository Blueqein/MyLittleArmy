package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2322")]
   public dynamic class BOSS_DEMON extends Character
   {
      
      public function BOSS_DEMON()
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

