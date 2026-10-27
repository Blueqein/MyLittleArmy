package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1459")]
   public dynamic class SWORDMASTER extends Character
   {
      
      public function SWORDMASTER()
      {
         super();
         addFrameScript(39,this.frame40,58,this.frame59,119,this.frame120,139,this.frame140,147,this.frame148,157,this.frame158,189,this.frame190,209,this.frame210,251,this.frame252);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame59() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame120() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame140() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame148() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame158() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame190() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame210() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame252() : *
      {
         stop();
      }
   }
}

