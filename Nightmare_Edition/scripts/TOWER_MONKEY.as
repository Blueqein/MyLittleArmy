package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2315")]
   public dynamic class TOWER_MONKEY extends Character
   {
      
      public function TOWER_MONKEY()
      {
         super();
         addFrameScript(14,this.frame15,79,this.frame80,103,this.frame104);
      }
      
      internal function frame15() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame80() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame104() : *
      {
         stop();
      }
   }
}

