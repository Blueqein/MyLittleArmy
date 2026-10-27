package
{
   import Game.Interface.StoryEnding;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2843")]
   public dynamic class hero3_story_ending_mc extends StoryEnding
   {
      
      public function hero3_story_ending_mc()
      {
         super();
         addFrameScript(11,this.frame12);
      }
      
      internal function frame12() : *
      {
         stop();
      }
   }
}

