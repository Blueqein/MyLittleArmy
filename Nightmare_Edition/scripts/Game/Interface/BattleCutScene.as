package Game.Interface
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class BattleCutScene extends MovieClip
   {
      
      public var btn_next:SimpleButton;
      
      public var btn_skip:SimpleButton;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      private var type:int = 0;
      
      public function BattleCutScene()
      {
         super();
      }
      
      public function init(_mGF:*, _bSys:*, _type:*) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU;
         this.bSys = _bSys;
         this.type = _type;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.btn_next.addEventListener(MouseEvent.CLICK,this.nextClick,false,0,true);
         this.btn_skip.addEventListener(MouseEvent.CLICK,this.skipClick,false,0,true);
         this.gotoAndStop(1);
         trace("init credit ... ok !");
      }
      
      public function destroy() : *
      {
         this.btn_skip.removeEventListener(MouseEvent.CLICK,this.skipClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy credit ... ok !");
      }
      
      private function nextClick(event:MouseEvent) : void
      {
         if(this.currentFrame == this.totalFrames)
         {
            if(this.type == 0)
            {
               this.bSys.battleEvent = "engage_init";
            }
            else if(this.type == 1)
            {
               this.bSys.battleEvent = "result";
            }
            this.destroy();
         }
         else
         {
            this.gotoAndStop(this.currentFrame + 1);
         }
      }
      
      private function skipClick(event:MouseEvent) : void
      {
         if(this.type == 0)
         {
            this.bSys.battleEvent = "engage_init";
         }
         else if(this.type == 1)
         {
            this.bSys.battleEvent = "result";
         }
         this.destroy();
      }
   }
}

