package
{
   import Game.Interface.StoryOpening2;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2794")]
   public dynamic class hero1_story_opening2_mc extends StoryOpening2
   {
      
      public function hero1_story_opening2_mc()
      {
         super();
         addFrameScript(77,this.frame78);
      }
      
      internal function frame78() : *
      {
         stop();
      }
   }
}

