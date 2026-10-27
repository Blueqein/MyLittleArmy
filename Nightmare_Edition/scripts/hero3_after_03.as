package
{
   import Game.Interface.BattleCutScene;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2598")]
   public dynamic class hero3_after_03 extends BattleCutScene
   {
      
      public function hero3_after_03()
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

