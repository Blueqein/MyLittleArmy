package
{
   import Game.Interface.StoryOpening2;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2878")]
   public dynamic class hero3_story_opening2_mc extends StoryOpening2
   {
      
      public function hero3_story_opening2_mc()
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

