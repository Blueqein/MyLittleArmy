package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2309")]
   public dynamic class TOWER_BIRD extends Character
   {
      
      public function TOWER_BIRD()
      {
         super();
         addFrameScript(14,this.frame15,59,this.frame60,83,this.frame84);
      }
      
      internal function frame15() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame84() : *
      {
         stop();
      }
   }
}

