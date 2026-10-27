package Game.Manager
{
   import Game.Manager.Utility.*;
   
   public class UtilityManager
   {
      
      private var mGF:* = null;
      
      public function UtilityManager(_mGF:*)
      {
         super();
         this.mGF = _mGF;
      }
      
      public function messagePop(textVal:String = "", lifeSpan:int = 100) : Object
      {
         var clip:* = new msg_pop_mc();
         clip.initialise(this.mGF,textVal,lifeSpan);
         return clip;
      }
      
      public function infoTip(CLIP_OVER:*, DELAY_POP:int = 10, TEXT_TITLE:String = "", TEXT_COST:String = "", TEXT_INFO:String = "", MIN_X:int = 0, MAX_X:int = 700, MIN_Y:int = 0, MAX_Y:int = 470) : *
      {
         var clip:* = new info_tip_mc();
         clip.init(this.mGF,CLIP_OVER,DELAY_POP,TEXT_TITLE,TEXT_COST,TEXT_INFO,MIN_X,MAX_X,MIN_Y,MAX_Y);
         return clip;
      }
      
      public function confirmDialogYesNo(TITLE:String = "", DESC:String = "", DX:int = 350, DY:int = 250) : Object
      {
         return new ConfirmDialogYesNo(this.mGF,TITLE,DESC,DX,DY);
      }
      
      public function confirmDialogOk(TITLE:String = "", DESC:String = "", DX:int = 350, DY:int = 250) : Object
      {
         return new ConfirmDialogOk(this.mGF,TITLE,DESC,DX,DY);
      }
      
      public function formatTime(time:Number, detailLevel:uint = 2) : String
      {
         var HOURS:uint = 2;
         var MINUTES:uint = 1;
         var SECONDS:uint = 0;
         var intTime:uint = Math.floor(time);
         var hours:uint = Math.floor(intTime / 3600);
         var minutes:uint = (intTime - hours * 3600) / 60;
         var seconds:uint = intTime - hours * 3600 - minutes * 60;
         var hourString:String = detailLevel == HOURS ? hours + ":" : "";
         var minuteString:String = detailLevel >= MINUTES ? (detailLevel == HOURS && minutes < 10 ? "0" : "") + minutes + ":" : "";
         var secondString:String = (seconds < 10 && detailLevel >= MINUTES ? "0" : "") + seconds;
         return hourString + minuteString + secondString;
      }
   }
}

