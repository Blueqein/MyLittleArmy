package
{
   import Game.Interface.StoryOpening2;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2840")]
   public dynamic class hero2_story_opening2_mc extends StoryOpening2
   {
      
      public function hero2_story_opening2_mc()
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

