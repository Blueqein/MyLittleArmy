package
{
   import Game.Interface.BattleCutScene;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2516")]
   public dynamic class hero2_after_06 extends BattleCutScene
   {
      
      public function hero2_after_06()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         stop();
      }
   }
}

