package Game.System.Object
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class Rip extends MovieClip
   {
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var bSys:*;
      
      private var idClass:*;
      
      private var idSkin:*;
      
      private var idWeapon:*;
      
      private var _time_counter:int = 480;
      
      public function Rip()
      {
         super();
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
      }
      
      public function init(_mGF:*, _battleSys:*, _CLASS:int = 1, _SKIN:int = 1, _WEAPON:int = 1, _X:int = 0) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contUNITDEAD;
         this.bSys = _battleSys;
         this.idClass = _CLASS;
         this.idSkin = _SKIN;
         this.idWeapon = _WEAPON;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = _X;
         this.y = this.bSys.bgMgr.getPointY(this.x);
         this.gotoAndPlay(1);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
      }
      
      public function resurrect(type:String = "ally") : *
      {
         var obj:* = undefined;
         if(currentLabel == "dead")
         {
            obj = this.bSys.charMgr.createUnit(type,this.x,this.idClass,this.idSkin,this.idWeapon);
            if(obj)
            {
               obj.health = 0.5 * obj.healthMax;
               this.mGF.effectMgr.setHitEffectText(obj.x,obj.y - obj.height * 0.5,String("resurrected"));
               obj.setPosition(obj.x,obj.y - 150);
            }
            this.gotoAndPlay("resurrect");
         }
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.mGF.isPaused)
         {
            this.stop();
         }
         else
         {
            this.play();
            if(this.currentLabel == "dead")
            {
               this._time_counter = Math.max(this._time_counter - 1,0);
               if(this._time_counter <= 0)
               {
                  this.gotoAndPlay("destroy");
               }
            }
            if(this.currentLabel == "destroy2" || this.currentLabel == "resurrect2")
            {
               this.destroy();
            }
         }
      }
   }
}

