package
{
   import Game.System.Object.Bomb;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1534")]
   public dynamic class THROW_03_GRENADE extends Bomb
   {
      
      public function THROW_03_GRENADE()
      {
         super();
         addFrameScript(7,this.frame8,32,this.frame33);
      }
      
      internal function frame8() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame33() : *
      {
         stop();
      }
   }
}

