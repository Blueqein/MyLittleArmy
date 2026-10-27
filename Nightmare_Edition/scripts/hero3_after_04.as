package
{
   import Game.Interface.BattleCutScene;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2601")]
   public dynamic class hero3_after_04 extends BattleCutScene
   {
      
      public function hero3_after_04()
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

