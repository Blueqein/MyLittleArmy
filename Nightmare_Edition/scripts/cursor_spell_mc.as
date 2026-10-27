package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1138")]
   public dynamic class cursor_spell_mc extends MovieClip
   {
      
      public function cursor_spell_mc()
      {
         super();
         addFrameScript(20,this.frame21,29,this.frame30);
      }
      
      internal function frame21() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame30() : *
      {
         gotoAndPlay("disable");
      }
   }
}

