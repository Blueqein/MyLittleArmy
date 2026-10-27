package Game.Other
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class ad4399 extends MovieClip
   {
      
      public static var _4399_function_ad_id:String = "92d6cef76cd06829e088932fe9fd819b";
      
      public static var serviceHold:* = null;
      
      public function ad4399()
      {
         super();
      }
      
      public function setHold(hold:*) : void
      {
         serviceHold = hold;
      }
      
      public function startAds(stageRoot:*) : *
      {
         if(stageRoot)
         {
            this.init();
         }
         else
         {
            this.addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      private function init(e:Event = null) : void
      {
      }
   }
}

