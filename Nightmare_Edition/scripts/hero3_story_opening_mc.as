package
{
   import Game.Interface.StoryOpening;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2861")]
   public dynamic class hero3_story_opening_mc extends StoryOpening
   {
      
      public function hero3_story_opening_mc()
      {
         super();
         addFrameScript(79,this.frame80);
      }
      
      internal function frame80() : *
      {
         stop();
      }
   }
}

