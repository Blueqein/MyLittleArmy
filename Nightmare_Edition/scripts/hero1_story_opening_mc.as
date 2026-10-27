package
{
   import Game.Interface.StoryOpening;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2776")]
   public dynamic class hero1_story_opening_mc extends StoryOpening
   {
      
      public function hero1_story_opening_mc()
      {
         super();
         addFrameScript(91,this.frame92);
      }
      
      internal function frame92() : *
      {
         stop();
      }
   }
}

