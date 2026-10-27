package Game.Manager.Sound
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Timer;
   
   public class BGM extends Sound
   {
      
      private var sndObj:Sound;
      
      private var sndChannel:SoundChannel;
      
      private var sndTransform:SoundTransform;
      
      private var sndVolume:Number;
      
      private var sndPan:Number;
      
      private var sndPosTime:Number;
      
      private var sndFadeIn:Boolean;
      
      private var sndFadeOut:Boolean;
      
      private var loop:Boolean;
      
      private var sndTimer:Timer;
      
      public function BGM()
      {
         super();
         this.sndObj = this;
         this.sndChannel = null;
         this.sndTransform = null;
         this.sndVolume = 1;
         this.sndPan = 0;
         this.sndPosTime = 0;
         this.sndFadeIn = false;
         this.sndFadeOut = false;
         this.loop = false;
         this.sndTimer = new Timer(50);
         this.sndTimer.addEventListener(TimerEvent.TIMER,this.sndTimerHandler);
         this.sndTimer.start();
      }
      
      public function playSound() : void
      {
         this.stopSound();
         this.sndChannel = this.sndObj.play();
         this.setVolume(this.sndVolume);
         this.setPan(this.sndPan);
         trace("playSound() ");
      }
      
      public function playSoundLoop() : void
      {
         this.stopSound();
         this.sndChannel = this.sndObj.play();
         this.sndChannel.addEventListener(Event.SOUND_COMPLETE,this.sound_loop);
         this.setVolume(this.sndVolume);
         this.setPan(this.sndPan);
         this.loop = true;
         trace("playSoundLoop() ");
      }
      
      public function stopSound() : void
      {
         if(this.sndChannel)
         {
            this.sndChannel.stop();
            this.sndChannel.removeEventListener(Event.SOUND_COMPLETE,this.sound_loop);
            this.loop = false;
            trace("stopSound() ");
         }
      }
      
      public function pauseSound() : void
      {
         if(this.sndChannel)
         {
            this.sndPosTime = this.sndChannel.position;
            this.sndChannel.stop();
            this.sndChannel.removeEventListener(Event.SOUND_COMPLETE,this.sound_loop);
            trace("pauseSound(), Position :" + String(this.sndPosTime));
         }
      }
      
      public function resumeSound() : void
      {
         this.stopSound();
         this.sndChannel = this.sndObj.play(this.sndPosTime);
         if(this.loop)
         {
            this.sndChannel.addEventListener(Event.SOUND_COMPLETE,this.sound_loop);
         }
         this.setVolume(this.sndVolume);
         this.setPan(this.sndPan);
         trace("resumeSound() ");
      }
      
      public function setVolume(vol:Number) : void
      {
         var sndTransform:SoundTransform = null;
         this.sndVolume = vol;
         if(this.sndChannel)
         {
            sndTransform = this.sndChannel.soundTransform;
            sndTransform.volume = this.sndVolume;
            this.sndChannel.soundTransform = sndTransform;
         }
      }
      
      public function setPan(pan:Number) : void
      {
         var sndTransform:SoundTransform = null;
         this.sndPan = pan;
         if(this.sndChannel)
         {
            sndTransform = this.sndChannel.soundTransform;
            sndTransform.pan = this.sndPan;
            this.sndChannel.soundTransform = sndTransform;
         }
      }
      
      public function fadeIn(init:Boolean) : void
      {
         this.sndFadeIn = true;
         this.sndFadeOut = false;
         if(init)
         {
            this.setVolume(0);
         }
         trace("Fade In Effect ");
      }
      
      public function fadeOut(init:Boolean) : void
      {
         this.sndFadeOut = true;
         this.sndFadeIn = false;
         if(init)
         {
            this.setVolume(1);
         }
         trace("Fade Out Effect ");
      }
      
      private function sound_loop(event:Event) : *
      {
         this.sndChannel = this.sndObj.play();
         this.setVolume(this.sndVolume);
         this.setPan(this.sndPan);
         this.sndChannel.addEventListener(Event.SOUND_COMPLETE,this.sound_loop);
         trace("Loop Back ");
      }
      
      private function sndTimerHandler(event:TimerEvent) : void
      {
         if(this.sndFadeIn && this.sndFadeOut)
         {
            this.sndFadeIn = false;
            this.sndFadeOut = false;
            this.setVolume(1);
         }
         if(this.sndFadeIn)
         {
            this.sndVolume += 0.01;
            if(this.sndVolume > 1)
            {
               this.setVolume(1);
               this.sndFadeIn = false;
            }
            else
            {
               this.setVolume(this.sndVolume);
            }
         }
         if(this.sndFadeOut)
         {
            this.sndVolume -= 0.01;
            if(this.sndVolume < 0)
            {
               this.setVolume(0);
               this.sndFadeOut = false;
            }
            else
            {
               this.setVolume(this.sndVolume);
            }
         }
      }
   }
}

