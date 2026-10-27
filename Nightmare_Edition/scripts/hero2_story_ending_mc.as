package
{
   import Game.Interface.StoryEnding;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2803")]
   public dynamic class hero2_story_ending_mc extends StoryEnding
   {
      
      public function hero2_story_ending_mc()
      {
         super();
         addFrameScript(37,this.frame38);
      }
      
      internal function frame38() : *
      {
         stop();
      }
   }
}

