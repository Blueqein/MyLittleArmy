package
{
   import Game.System.Spell.Meteor;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1948")]
   public dynamic class METEOR extends Meteor
   {
      
      public function METEOR()
      {
         super();
         addFrameScript(33,this.frame34,54,this.frame55);
      }
      
      internal function frame34() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame55() : *
      {
         stop();
      }
   }
}

