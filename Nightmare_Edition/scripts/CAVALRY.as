package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1496")]
   public dynamic class CAVALRY extends Character
   {
      
      public function CAVALRY()
      {
         super();
         addFrameScript(39,this.frame40,63,this.frame64,97,this.frame98,112,this.frame113,120,this.frame121,130,this.frame131,166,this.frame167,203,this.frame204,247,this.frame248);
      }
      
      internal function frame40() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame64() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame98() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame113() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame121() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame131() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame167() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame204() : *
      {
         gotoAndPlay("win");
      }
      
      internal function frame248() : *
      {
         stop();
      }
   }
}

