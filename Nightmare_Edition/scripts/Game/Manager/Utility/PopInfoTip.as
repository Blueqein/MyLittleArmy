package Game.Manager.Utility
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PopInfoTip extends MovieClip
   {
      
      public var cost:TextField;
      
      public var title:TextField;
      
      public var info:TextField;
      
      private var mGF:* = null;
      
      private var dispCont:* = null;
      
      private var clipSource:*;
      
      private var delayPop:int = 0;
      
      private var screenMinX:int = 0;
      
      private var screenMaxX:int = 700;
      
      private var screenMinY:int = 0;
      
      private var screenMaxY:int = 525;
      
      private var distanceClip:int = 10;
      
      private var textTitle:String = "";
      
      private var textCost:String = "";
      
      private var textInfo:String = "";
      
      public function PopInfoTip()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.clipSource.removeEventListener(MouseEvent.MOUSE_OUT,this.eventOut);
         this.clipSource = null;
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
      }
      
      public function init(_mGF:*, _CLIP:*, _DELAY:int = 0, TEXT_TITLE:String = "", TEXT_COST:String = "", TEXT_INFO:String = "", MIN_X:int = 0, MAX_X:int = 700, MIN_Y:int = 0, MAX_Y:int = 470) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU2;
         this.clipSource = _CLIP;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.visible = false;
         this.delayPop = _DELAY;
         this.setTextValue(0,TEXT_TITLE);
         this.setTextValue(1,TEXT_COST);
         this.setTextValue(2,TEXT_INFO);
         this.setBorderLimit(MIN_X,MAX_X,MIN_Y,MAX_Y);
         this.update();
         this.clipSource.addEventListener(MouseEvent.MOUSE_OUT,this.eventOut,false,0,true);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      public function setBorderLimit(MIN_X:int = 0, MAX_X:int = 700, MIN_Y:int = 0, MAX_Y:int = 525) : *
      {
         this.screenMinX = MIN_X;
         this.screenMaxX = MAX_X;
         this.screenMinY = MIN_Y;
         this.screenMaxY = MAX_Y;
      }
      
      public function setTextValue(NUM:int = 0, STR:String = "") : *
      {
         if(NUM == 0)
         {
            this.textTitle = STR;
         }
         else if(NUM == 1)
         {
            this.textCost = STR;
         }
         else if(NUM == 2)
         {
            this.textInfo = STR;
         }
      }
      
      private function update() : *
      {
         if(this.clipSource)
         {
            this.x = this.clipSource.x - Math.round(this.width / 2);
            if(this.x + Math.round(this.width) > this.screenMaxX)
            {
               this.x = this.screenMaxX - Math.round(this.width) - this.distanceClip;
            }
            else if(this.x < this.screenMinX)
            {
               this.x = this.screenMinX + this.distanceClip;
            }
            this.y = this.clipSource.y - Math.round(this.height) - this.distanceClip;
            if(this.y + Math.round(this.height) > this.screenMaxY)
            {
               this.y = this.screenMaxY - Math.round(this.height) - this.distanceClip;
            }
            else if(this.y < this.screenMinY)
            {
               this.y = this.clipSource.y + Math.round(this.clipSource.height) + this.distanceClip;
            }
         }
         this.title.htmlText = this.textTitle;
         this.cost.htmlText = this.textCost;
         this.info.htmlText = this.textInfo;
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.delayPop <= 0)
         {
            this.visible = true;
            this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         }
         else
         {
            this.delayPop = Math.max(this.delayPop - 1,0);
         }
      }
      
      private function eventOut(event:MouseEvent) : void
      {
         this.destroy();
      }
   }
}

