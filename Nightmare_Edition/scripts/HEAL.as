package
{
   import Game.System.Spell.Heal;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2099")]
   public dynamic class HEAL extends Heal
   {
      
      public function HEAL()
      {
         super();
         addFrameScript(33,this.frame34);
      }
      
      internal function frame34() : *
      {
         stop();
      }
   }
}

