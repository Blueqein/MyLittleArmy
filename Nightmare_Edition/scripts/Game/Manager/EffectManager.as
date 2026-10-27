package Game.Manager
{
   import Game.Manager.Effect.Info.*;
   import flash.events.Event;
   
   public class EffectManager
   {
      
      private var mGF:* = null;
      
      private var shake_y:Number = 0;
      
      private var shake_fric:Number = 0.98;
      
      public function EffectManager(_mGF:*)
      {
         super();
         this.mGF = _mGF;
         this.mGF.contSCROLLS.addEventListener(Event.ENTER_FRAME,this.shakeHandle,false,0,true);
      }
      
      public function shakeGroundEffect(pow:int = 20) : *
      {
         this.shake_y = pow;
      }
      
      private function shakeHandle(event:Event) : void
      {
         if(this.shake_y != 0)
         {
            this.shake_y = this.shake_y * 0.9 * -1;
            this.mGF.contSCROLLS.y = this.shake_y;
            if(this.shake_y < 1 && this.shake_y > -1)
            {
               this.shake_y = 0;
            }
         }
      }
      
      public function playTransition() : *
      {
      }
      
      public function setBloodSplat(_X:int = 0, _Y:int = 0, _SCALE:Number = 1) : *
      {
         if(this.mGF.datMgr.opt_show_blood == 0)
         {
            return;
         }
      }
      
      public function setHitBloodSpurt(_X:int = 0, _Y:int = 0, _N:Number = 0, _POW:Number = 0, _ParticleCount:int = 4, _Scale:Number = 1) : *
      {
         if(this.mGF.datMgr.opt_show_blood == 0)
         {
            return;
         }
      }
      
      public function setHitLightSpurt(_X:int = 0, _Y:int = 0, _N:Number = 0, _POW:Number = 0, _ParticleCount:int = 4, _Scale:Number = 1) : *
      {
         if(this.mGF.datMgr.opt_show_blood == 0)
         {
            return;
         }
      }
      
      public function setBloodTrail(_X:int = 0, _Y:int = 0, _ParticleCount:int = 2, _Scale:Number = 1) : *
      {
         if(this.mGF.datMgr.opt_show_blood == 0)
         {
            return;
         }
      }
      
      public function setSmoke(_X:int = 0, _Y:int = 0) : *
      {
      }
      
      public function setBurn(_X:int = 0, _Y:int = 0, _ParticleCount:int = 2) : *
      {
      }
      
      public function setElectricShock(_X:int = 0, _Y:int = 0, _ROT:int = 0) : *
      {
      }
      
      public function setHitText(_X:int = 0, _Y:int = 0, _STR:String = "") : *
      {
         var clip:* = undefined;
         clip = new damage_info_mc();
         clip.initialise(this.mGF,_X,_Y,_STR);
      }
      
      public function setHitCritText(_X:int = 0, _Y:int = 0, _STR:String = "") : *
      {
         var clip:* = undefined;
         clip = new damage_info_crit_mc();
         clip.initialise(this.mGF,_X,_Y,_STR);
      }
      
      public function setHitHealText(_X:int = 0, _Y:int = 0, _STR:String = "") : *
      {
         var clip:* = undefined;
         clip = new damage_info_heal_mc();
         clip.initialise(this.mGF,_X,_Y,_STR);
      }
      
      public function setHitEffectText(_X:int = 0, _Y:int = 0, _STR:String = "") : *
      {
         var clip:* = undefined;
         clip = new damage_info_effect_mc();
         clip.initialise(this.mGF,_X,_Y,_STR);
      }
      
      public function createBuildEffect(_X:int = 0, _Y:int = 0, _SCALE:Number = 1) : *
      {
      }
      
      public function destroyBuildEffect(_X:int = 0, _Y:int = 0, _SCALE:Number = 1) : *
      {
      }
   }
}

