package
{
   import Game.Interface.BattleCutScene;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2433")]
   public dynamic class hero1_start_01 extends BattleCutScene
   {
      
      public function hero1_start_01()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         stop();
      }
      
      internal function frame3() : *
      {
         stop();
      }
      
      internal function frame4() : *
      {
         stop();
      }
   }
}

