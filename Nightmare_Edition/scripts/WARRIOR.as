package
{
   import Game.System.Character.Character;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1445")]
   public dynamic class WARRIOR extends Character
   {
      
      public function WARRIOR()
      {
         super();
         addFrameScript(59,this.frame60,93,this.frame94,125,this.frame126,140,this.frame141,148,this.frame149,158,this.frame159,184,this.frame185,201,this.frame202,246,this.frame247);
      }
      
      internal function frame60() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame94() : *
      {
         gotoAndPlay("move");
      }
      
      internal function frame126() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame141() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame149() : *
      {
         gotoAndPlay("fly");
      }
      
      internal function frame159() : *
      {
         gotoAndPlay("freeze");
      }
      
      internal function frame185() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame202() : *
      {
         gotoAndPlay("standby");
      }
      
      internal function frame247() : *
      {
         stop();
      }
   }
}

