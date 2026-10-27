package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1689")]
   public dynamic class MAGE extends Character
   {
      
      public function MAGE()
      {
         super();
         addFrameScript(39,this.frame40,80,this.frame81,150,this.frame151,168,this.frame169,181,this.frame182,197,this.frame198,213,this.frame214,233,this.frame234,260,this.frame261);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame81() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame151() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame169() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame182() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame198() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame214() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame234() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame261() : *
      {
         stop();
      }
   }
}

