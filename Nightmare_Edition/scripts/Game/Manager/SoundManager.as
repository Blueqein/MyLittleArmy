package Game.Manager
{
   public class SoundManager
   {
      
      private var datMgr:*;
      
      private var sndBgm:* = null;
      
      public function SoundManager(_datMgr:*)
      {
         super();
         this.datMgr = _datMgr;
      }
      
      public function setBgmVolume(val:int) : *
      {
         this.datMgr.bgm_volume = 0;
         if(val == 1)
         {
            this.datMgr.bgm_volume = 0.2;
         }
         else if(val == 2)
         {
            this.datMgr.bgm_volume = 0.4;
         }
         else if(val == 3)
         {
            this.datMgr.bgm_volume = 0.6;
         }
         else if(val == 4)
         {
            this.datMgr.bgm_volume = 0.8;
         }
         else if(val == 5)
         {
            this.datMgr.bgm_volume = 1;
         }
         if(this.sndBgm)
         {
            this.sndBgm.setVolume(this.datMgr.bgm_volume);
         }
      }
      
      public function setSeVolume(val:int) : *
      {
         this.datMgr.se_volume = 0;
         if(val == 1)
         {
            this.datMgr.se_volume = 0.2;
         }
         else if(val == 2)
         {
            this.datMgr.se_volume = 0.4;
         }
         else if(val == 3)
         {
            this.datMgr.se_volume = 0.6;
         }
         else if(val == 4)
         {
            this.datMgr.se_volume = 0.8;
         }
         else if(val == 5)
         {
            this.datMgr.se_volume = 1;
         }
      }
      
      public function getBgmVolume() : int
      {
         if(this.datMgr.bgm_volume == 0.2)
         {
            return 1;
         }
         if(this.datMgr.bgm_volume == 0.4)
         {
            return 2;
         }
         if(this.datMgr.bgm_volume == 0.6)
         {
            return 3;
         }
         if(this.datMgr.bgm_volume == 0.8)
         {
            return 4;
         }
         if(this.datMgr.bgm_volume == 1)
         {
            return 5;
         }
         return 0;
      }
      
      public function getSeVolume() : int
      {
         if(this.datMgr.se_volume == 0.2)
         {
            return 1;
         }
         if(this.datMgr.se_volume == 0.4)
         {
            return 2;
         }
         if(this.datMgr.se_volume == 0.6)
         {
            return 3;
         }
         if(this.datMgr.se_volume == 0.8)
         {
            return 4;
         }
         if(this.datMgr.se_volume == 1)
         {
            return 5;
         }
         return 0;
      }
      
      public function playBgmCover() : *
      {
         if(this.sndBgm)
         {
            this.sndBgm.stopSound();
         }
         this.sndBgm = new bgm_cover();
         this.sndBgm.playSoundLoop();
         this.sndBgm.setVolume(this.datMgr.bgm_volume);
      }
      
      public function playBgmWorld() : *
      {
         if(this.sndBgm)
         {
            this.sndBgm.stopSound();
         }
         this.sndBgm = new bgm_world();
         this.sndBgm.playSoundLoop();
         this.sndBgm.setVolume(this.datMgr.bgm_volume);
      }
      
      public function playBgmWin() : *
      {
         if(this.sndBgm)
         {
            this.sndBgm.stopSound();
         }
         this.sndBgm = new bgm_victory();
         this.sndBgm.playSound();
         this.sndBgm.setVolume(this.datMgr.bgm_volume);
      }
      
      public function playBgmLose() : *
      {
         if(this.sndBgm)
         {
            this.sndBgm.stopSound();
         }
         this.sndBgm = new bgm_defeat();
         this.sndBgm.playSound();
         this.sndBgm.setVolume(this.datMgr.bgm_volume);
      }
      
      public function playBgmBattleNormal() : *
      {
         if(this.sndBgm)
         {
            this.sndBgm.stopSound();
         }
         this.sndBgm = new bgm_battle_normal();
         this.sndBgm.playSoundLoop();
         this.sndBgm.setVolume(this.datMgr.bgm_volume);
      }
      
      public function playBgmBattleDefend() : *
      {
         if(this.sndBgm)
         {
            this.sndBgm.stopSound();
         }
         this.sndBgm = new bgm_battle_defend();
         this.sndBgm.playSoundLoop();
         this.sndBgm.setVolume(this.datMgr.bgm_volume);
      }
      
      public function playBgmBattleBoss() : *
      {
         if(this.sndBgm)
         {
            this.sndBgm.stopSound();
         }
         this.sndBgm = new bgm_battle_boss();
         this.sndBgm.playSoundLoop();
         this.sndBgm.setVolume(this.datMgr.bgm_volume);
      }
      
      public function playSoundEffect(sndName:String = "", mult_vol:Number = 1) : *
      {
         var snd:* = null;
         var randVal:Number = Math.random();
         if(sndName == "voice_alien_victory1")
         {
            snd = new voice_alien_victory1();
         }
         else if(sndName == "voice_alien_attack1")
         {
            snd = new voice_alien_attack1();
         }
         else if(sndName == "voice_alien_hit1")
         {
            snd = new voice_alien_hit1();
         }
         else if(sndName == "voice_alien_die1")
         {
            snd = new voice_alien_die1();
         }
         else if(sndName == "voice_male_victory1")
         {
            snd = new voice_male_victory1();
         }
         else if(sndName == "voice_male_attack1")
         {
            snd = new voice_male_attack1();
         }
         else if(sndName == "voice_male_hit1")
         {
            snd = new voice_male_hit1();
         }
         else if(sndName == "voice_male_die1")
         {
            snd = new voice_male_die1();
         }
         else if(sndName == "voice_male_victory2")
         {
            snd = new voice_male_victory2();
         }
         else if(sndName == "voice_male_attack2")
         {
            snd = new voice_male_attack2();
         }
         else if(sndName == "voice_male_hit2")
         {
            snd = new voice_male_hit2();
         }
         else if(sndName == "voice_male_die2")
         {
            snd = new voice_male_die2();
         }
         else if(sndName == "voice_girl_victory1")
         {
            snd = new voice_girl_victory1();
         }
         else if(sndName == "voice_girl_attack1")
         {
            snd = new voice_girl_attack1();
         }
         else if(sndName == "voice_girl_hit1")
         {
            snd = new voice_girl_hit1();
         }
         else if(sndName == "voice_girl_die1")
         {
            snd = new voice_girl_die1();
         }
         else if(sndName == "voice_girl_victory2")
         {
            snd = new voice_girl_victory2();
         }
         else if(sndName == "voice_girl_attack2")
         {
            snd = new voice_girl_attack2();
         }
         else if(sndName == "voice_girl_hit2")
         {
            snd = new voice_girl_hit2();
         }
         else if(sndName == "voice_girl_die2")
         {
            snd = new voice_girl_die2();
         }
         else if(sndName == "swing_sword")
         {
            snd = new swing_slash();
         }
         else if(sndName == "swing_sword2")
         {
            snd = new swing_slash();
         }
         else if(sndName == "swing_spear")
         {
            snd = new swing_pierce();
         }
         else if(sndName == "swing_punch")
         {
            snd = new swing_melee();
         }
         else if(sndName == "swing_staff")
         {
            snd = new swing_staff();
         }
         else if(sndName == "swing_lightsaber")
         {
            snd = new swing_lightsaber();
         }
         else if(sndName == "swing_thunder")
         {
            snd = new swing_thunder();
         }
         else if(sndName == "shoot_throw")
         {
            snd = new shoot_arrow();
         }
         else if(sndName == "shoot_arrow")
         {
            snd = new shoot_arrow();
         }
         else if(sndName == "shoot_spell")
         {
            snd = new shoot_arrow();
         }
         else if(sndName == "shoot_gun")
         {
            snd = new shoot_handgun();
         }
         else if(sndName == "shoot_shotgun")
         {
            snd = new shoot_shotgun();
         }
         else if(sndName == "shoot_machinegun")
         {
            snd = new shoot_machinegun();
         }
         else if(sndName == "shoot_beam")
         {
            snd = new shoot_beam();
         }
         else if(sndName == "shoot_tower")
         {
            snd = new shoot_tower();
         }
         else if(sndName == "spell_arrow")
         {
            snd = new spell_rainarrow();
         }
         else if(sndName == "spell_fire")
         {
            snd = new spell_fire();
         }
         else if(sndName == "spell_ice")
         {
            snd = new spell_ice();
         }
         else if(sndName == "spell_thunder")
         {
            snd = new spell_thunder();
         }
         else if(sndName == "spell_tornado")
         {
            snd = new spell_tornado();
         }
         else if(sndName == "spell_meteorfall")
         {
            snd = new spell_meteorfall();
         }
         else if(sndName == "spell_poison")
         {
            snd = new spell_poison();
         }
         else if(sndName == "spell_heal")
         {
            snd = new spell_heal();
         }
         else if(sndName == "spell_regen")
         {
            snd = new spell_regen();
         }
         else if(sndName == "spell_resurrect")
         {
            snd = new spell_resurrect();
         }
         else if(sndName == "spell_haste")
         {
            snd = new spell_haste();
         }
         else if(sndName == "spell_slow")
         {
            snd = new spell_slow();
         }
         else if(sndName == "spell_stop")
         {
            snd = new spell_stop();
         }
         else if(sndName == "spell_rage")
         {
            snd = new spell_rage();
         }
         else if(sndName == "spell_shield")
         {
            snd = new spell_shield();
         }
         else if(sndName == "spell_giant")
         {
            snd = new spell_giant();
         }
         else if(sndName == "spell_mini")
         {
            snd = new spell_mini();
         }
         else if(sndName == "hit_punch")
         {
            snd = new hit_melee();
         }
         else if(sndName == "hit_sword")
         {
            snd = new hit_slash();
         }
         else if(sndName == "hit_sword2")
         {
            snd = new hit_slash();
         }
         else if(sndName == "hit_sword_wood")
         {
            snd = new hit_slash();
         }
         else if(sndName == "hit_spear")
         {
            snd = new hit_spear();
         }
         else if(sndName == "hit_arrow")
         {
            snd = new hit_arrow();
         }
         else if(sndName == "hit_spell")
         {
            snd = new hit_spell();
         }
         else if(sndName == "hit_gun")
         {
            snd = new hit_melee();
         }
         else if(sndName == "hit_stone")
         {
            snd = new hit_melee();
         }
         else if(sndName == "explode_gas")
         {
            snd = new explode_gas();
         }
         else if(sndName == "explode_tnt")
         {
            snd = new explode_tnt();
         }
         else if(sndName == "explode_nuclear")
         {
            snd = new explode_bomb();
         }
         else if(sndName == "destroy_crypt")
         {
            snd = new destroy_crypt();
         }
         else if(sndName == "destroy_tower")
         {
            snd = new destroy_tower();
         }
         else if(sndName == "falling_ground")
         {
            snd = new sfx_falling_ground();
         }
         if(snd)
         {
            snd.playSound(this.datMgr.se_volume * mult_vol);
         }
      }
   }
}

