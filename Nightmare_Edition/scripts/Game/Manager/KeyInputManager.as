package Game.Manager
{
   import Game.Manager.KeyControl.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class KeyInputManager
   {
      
      private var stageRoot:*;
      
      private var key_press:*;
      
      private var key_press2:*;
      
      private var key_hold:*;
      
      public function KeyInputManager(stageRootVar:*)
      {
         super();
         this.stageRoot = stageRootVar;
         this.key_press = new KeyFlag();
         this.key_hold = new KeyFlag();
         this.key_press2 = new KeyFlag();
         this.stageRoot.addEventListener(KeyboardEvent.KEY_DOWN,this.keyPressed,false,0,true);
         this.stageRoot.addEventListener(KeyboardEvent.KEY_UP,this.keyReleased,false,0,true);
         this.stageRoot.addEventListener(Event.DEACTIVATE,this.deactiveHandle,false,0,true);
         this.stageRoot.addEventListener(Event.ENTER_FRAME,this.keyFocus,false,0,true);
      }
      
      public function refreshKey() : *
      {
         this.key_press2.refreshKey();
         this.key_press.refreshKey();
         this.key_hold.refreshKey();
      }
      
      public function getKeyPress() : Object
      {
         if(this.key_press)
         {
            return this.key_press;
         }
         return null;
      }
      
      public function getKeyPress2() : Object
      {
         if(this.key_press2)
         {
            return this.key_press2;
         }
         return null;
      }
      
      public function getKeyHold() : Object
      {
         if(this.key_hold)
         {
            return this.key_hold;
         }
         return null;
      }
      
      private function keyPressed(event:KeyboardEvent) : void
      {
         if(this.key_press.getKeyFlag(event.keyCode) == this.key_hold.getKeyFlag(event.keyCode))
         {
            this.key_press.setKeyFlag(event.keyCode,true);
         }
         else
         {
            this.key_press.setKeyFlag(event.keyCode,false);
         }
         this.key_press2.setKeyFlag(event.keyCode,true);
         this.key_hold.setKeyFlag(event.keyCode,true);
         this.stageRoot.addEventListener(Event.ENTER_FRAME,this.keyPressHandle,false,0,true);
      }
      
      private function keyReleased(event:KeyboardEvent) : *
      {
         this.key_hold.setKeyFlag(event.keyCode,false);
      }
      
      private function keyPressHandle(event:Event) : void
      {
         this.key_press.refreshKey();
         this.key_press2.refreshKey();
         this.stageRoot.removeEventListener(Event.ENTER_FRAME,this.keyPressHandle);
      }
      
      private function deactiveHandle(event:Event) : void
      {
         this.refreshKey();
         trace(" deactive !! ");
      }
      
      private function keyFocus(event:Event) : void
      {
         this.stageRoot.stage.focus = this.stageRoot;
      }
   }
}

