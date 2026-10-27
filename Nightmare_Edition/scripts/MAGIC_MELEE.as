package
{
   import Game.System.Object.Magic;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1573")]
   public dynamic class MAGIC_MELEE extends Magic
   {
      
      public function MAGIC_MELEE()
      {
         super();
         addFrameScript(7,this.frame8,20,this.frame21);
      }
      
      internal function frame8() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame21() : *
      {
         stop();
      }
   }
}

