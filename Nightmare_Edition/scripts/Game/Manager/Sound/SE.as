package Game.Manager.Sound
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SE extends Sound
   {
      
      private var sndObj:Sound;
      
      private var sndChannel:SoundChannel;
      
      private var sndVolume:Number;
      
      public function SE()
      {
         super();
         this.sndObj = this;
         this.sndChannel = null;
         this.sndVolume = 1;
      }
      
      public function playSound(vol:Number = 1) : void
      {
         this.stopSound();
         this.sndChannel = this.sndObj.play();
         this.sndVolume = vol;
         this.setVolume(this.sndVolume);
      }
      
      public function stopSound() : void
      {
         if(this.sndChannel)
         {
            this.sndChannel.stop();
         }
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
   }
}

