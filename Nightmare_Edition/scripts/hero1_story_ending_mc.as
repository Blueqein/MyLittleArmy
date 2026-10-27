package
{
   import Game.Interface.StoryEnding;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2750")]
   public dynamic class hero1_story_ending_mc extends StoryEnding
   {
      
      public function hero1_story_ending_mc()
      {
         super();
         addFrameScript(14,this.frame15);
      }
      
      internal function frame15() : *
      {
         stop();
      }
   }
}

