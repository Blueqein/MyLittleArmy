package Game.Manager
{
   import flash.net.SharedObject;
   
   public class DataManager
   {
      
      public var saveFileName:String = "EDEF_SAVE";
      
      public var bgm_volume:Number = 1;
      
      public var se_volume:Number = 1;
      
      public var game_completed:int = 0;
      
      public var game_save_counter:int = 0;
      
      public var stat_money:int = 0;
      
      public var stat_total_battle:int = 0;
      
      public var opt_show_health_bar:int = 1;
      
      public var opt_quality_setup:int = 3;
      
      public var help_battle:int = 0;
      
      public var help_world:int = 0;
      
      public var help_upgrade:int = 0;
      
      public var help_formation:int = 0;
      
      public var achive_01:int = 0;
      
      public var achive_02:int = 0;
      
      public var achive_03:int = 0;
      
      public var achive_04:int = 0;
      
      public var achive_05:int = 0;
      
      public var achive_06:int = 0;
      
      public var achive_07:int = 0;
      
      public var achive_08:int = 0;
      
      public var achive_09:int = 0;
      
      public var achive_10:int = 0;
      
      public var mission_stage:int = 1;
      
      public var hero_1_competed:int = 0;
      
      public var hero_2_competed:int = 0;
      
      public var hero_3_competed:int = 0;
      
      public var hero_type:int = 1;
      
      public var hero_boost_attack:int = 0;
      
      public var hero_boost_defense:int = 0;
      
      public var hero_boost_mana:int = 0;
      
      public var hero_spell_arrow:int = 0;
      
      public var hero_spell_fire:int = 0;
      
      public var hero_spell_ice:int = 0;
      
      public var hero_spell_tornado:int = 0;
      
      public var hero_spell_thunder:int = 0;
      
      public var hero_spell_meteor:int = 0;
      
      public var hero_spell_poison:int = 0;
      
      public var hero_spell_heal:int = 0;
      
      public var hero_spell_regen:int = 0;
      
      public var hero_spell_resurrect:int = 0;
      
      public var hero_spell_haste:int = 0;
      
      public var hero_spell_slow:int = 0;
      
      public var hero_spell_stop:int = 0;
      
      public var hero_spell_rage:int = 0;
      
      public var hero_spell_shield:int = 0;
      
      public var hero_spell_mini:int = 0;
      
      public var hero_spell_giant:int = 0;
      
      public var hero_spell_super:int = 0;
      
      public var char1_class:int = 1;
      
      public var char1_skin:int = 1;
      
      public var char1_weapon:int = 1;
      
      public var char2_class:int = 1;
      
      public var char2_skin:int = 1;
      
      public var char2_weapon:int = 1;
      
      public var char3_class:int = 1;
      
      public var char3_skin:int = 1;
      
      public var char3_weapon:int = 1;
      
      public var char4_class:int = 1;
      
      public var char4_skin:int = 1;
      
      public var char4_weapon:int = 1;
      
      public var unlock_class01:int = 1;
      
      public var unlock_class02:int = 1;
      
      public var unlock_class03:int = 1;
      
      public var unlock_class04:int = 1;
      
      public var unlock_class05:int = 1;
      
      public var unlock_class06:int = 1;
      
      public var unlock_class07:int = 1;
      
      public var unlock_class08:int = 1;
      
      public var unlock_class09:int = 0;
      
      public var unlock_class10:int = 0;
      
      public var unlock_class11:int = 0;
      
      public var unlock_class12:int = 0;
      
      public var unlock_class13:int = 0;
      
      public var unlock_class14:int = 0;
      
      public var unlock_class15:int = 0;
      
      public var unlock_class16:int = 0;
      
      public var stock_skin01:int = 1;
      
      public var stock_skin02:int = 1;
      
      public var stock_skin03:int = 1;
      
      public var stock_skin04:int = 1;
      
      public var stock_skin05:int = 1;
      
      public var stock_skin06:int = 1;
      
      public var stock_skin07:int = 1;
      
      public var stock_skin08:int = 1;
      
      public var stock_skin09:int = 1;
      
      public var stock_skin10:int = 1;
      
      public var stock_skin11:int = 1;
      
      public var stock_skin12:int = 1;
      
      public var stock_skin13:int = 1;
      
      public var stock_skin14:int = 1;
      
      public var stock_skin15:int = 1;
      
      public var stock_skin16:int = 1;
      
      public var stock_skin17:int = 1;
      
      public var stock_skin18:int = 1;
      
      public var stock_skin19:int = 1;
      
      public var stock_skin20:int = 1;
      
      public var stock_skin21:int = 1;
      
      public var stock_skin22:int = 1;
      
      public var stock_skin23:int = 1;
      
      public var stock_skin24:int = 1;
      
      public var stock_skin25:int = 1;
      
      public var stock_skin26:int = 1;
      
      public var stock_skin27:int = 1;
      
      public var stock_skin28:int = 1;
      
      public var stock_skin29:int = 1;
      
      public var stock_skin30:int = 1;
      
      public var stock_skin31:int = 1;
      
      public var stock_skin32:int = 1;
      
      public var stock_skin33:int = 0;
      
      public var stock_skin34:int = 0;
      
      public var stock_skin35:int = 0;
      
      public var stock_skin36:int = 0;
      
      public var stock_skin37:int = 0;
      
      public var stock_skin38:int = 0;
      
      public var stock_skin39:int = 0;
      
      public var stock_skin40:int = 0;
      
      public var stock_skin41:int = 0;
      
      public var stock_skin42:int = 0;
      
      public var stock_skin43:int = 0;
      
      public var stock_skin44:int = 0;
      
      public var stock_skin45:int = 0;
      
      public var stock_skin46:int = 0;
      
      public var stock_skin47:int = 0;
      
      public var stock_skin48:int = 0;
      
      public var stock_weapon_sword01:int = 4;
      
      public var stock_weapon_sword02:int = 1;
      
      public var stock_weapon_sword03:int = 1;
      
      public var stock_weapon_sword04:int = 1;
      
      public var stock_weapon_sword05:int = 0;
      
      public var stock_weapon_sword06:int = 0;
      
      public var stock_weapon_sword07:int = 0;
      
      public var stock_weapon_sword08:int = 0;
      
      public var stock_weapon_sword09:int = 0;
      
      public var stock_weapon_sword10:int = 0;
      
      public var stock_weapon_sword11:int = 0;
      
      public var stock_weapon_sword12:int = 0;
      
      public var stock_weapon_sword13:int = 0;
      
      public var stock_weapon_sword14:int = 0;
      
      public var stock_weapon_sword15:int = 0;
      
      public var stock_weapon_sword16:int = 0;
      
      public var stock_weapon_greatsword01:int = 4;
      
      public var stock_weapon_greatsword02:int = 1;
      
      public var stock_weapon_greatsword03:int = 1;
      
      public var stock_weapon_greatsword04:int = 1;
      
      public var stock_weapon_greatsword05:int = 0;
      
      public var stock_weapon_greatsword06:int = 0;
      
      public var stock_weapon_greatsword07:int = 0;
      
      public var stock_weapon_greatsword08:int = 0;
      
      public var stock_weapon_greatsword09:int = 0;
      
      public var stock_weapon_greatsword10:int = 0;
      
      public var stock_weapon_greatsword11:int = 0;
      
      public var stock_weapon_greatsword12:int = 0;
      
      public var stock_weapon_greatsword13:int = 0;
      
      public var stock_weapon_greatsword14:int = 0;
      
      public var stock_weapon_greatsword15:int = 0;
      
      public var stock_weapon_greatsword16:int = 0;
      
      public var stock_weapon_spear01:int = 4;
      
      public var stock_weapon_spear02:int = 1;
      
      public var stock_weapon_spear03:int = 1;
      
      public var stock_weapon_spear04:int = 1;
      
      public var stock_weapon_spear05:int = 1;
      
      public var stock_weapon_spear06:int = 1;
      
      public var stock_weapon_spear07:int = 0;
      
      public var stock_weapon_spear08:int = 0;
      
      public var stock_weapon_spear09:int = 0;
      
      public var stock_weapon_spear10:int = 0;
      
      public var stock_weapon_spear11:int = 0;
      
      public var stock_weapon_spear12:int = 0;
      
      public var stock_weapon_spear13:int = 0;
      
      public var stock_weapon_spear14:int = 0;
      
      public var stock_weapon_spear15:int = 0;
      
      public var stock_weapon_spear16:int = 0;
      
      public var stock_weapon_bow01:int = 4;
      
      public var stock_weapon_bow02:int = 1;
      
      public var stock_weapon_bow03:int = 1;
      
      public var stock_weapon_bow04:int = 1;
      
      public var stock_weapon_bow05:int = 0;
      
      public var stock_weapon_bow06:int = 0;
      
      public var stock_weapon_bow07:int = 0;
      
      public var stock_weapon_bow08:int = 0;
      
      public var stock_weapon_bow09:int = 0;
      
      public var stock_weapon_bow10:int = 0;
      
      public var stock_weapon_bow11:int = 0;
      
      public var stock_weapon_bow12:int = 0;
      
      public var stock_weapon_bow13:int = 0;
      
      public var stock_weapon_bow14:int = 0;
      
      public var stock_weapon_bow15:int = 0;
      
      public var stock_weapon_bow16:int = 0;
      
      public var stock_weapon_staff01:int = 4;
      
      public var stock_weapon_staff02:int = 1;
      
      public var stock_weapon_staff03:int = 1;
      
      public var stock_weapon_staff04:int = 1;
      
      public var stock_weapon_staff05:int = 0;
      
      public var stock_weapon_staff06:int = 0;
      
      public var stock_weapon_staff07:int = 0;
      
      public var stock_weapon_staff08:int = 0;
      
      public var stock_weapon_staff09:int = 0;
      
      public var stock_weapon_staff10:int = 0;
      
      public var stock_weapon_staff11:int = 0;
      
      public var stock_weapon_staff12:int = 0;
      
      public var stock_weapon_staff13:int = 0;
      
      public var stock_weapon_staff14:int = 0;
      
      public var stock_weapon_staff15:int = 0;
      
      public var stock_weapon_staff16:int = 0;
      
      public var stock_weapon_glove01:int = 4;
      
      public var stock_weapon_glove02:int = 1;
      
      public var stock_weapon_glove03:int = 1;
      
      public var stock_weapon_glove04:int = 1;
      
      public var stock_weapon_glove05:int = 0;
      
      public var stock_weapon_glove06:int = 0;
      
      public var stock_weapon_glove07:int = 0;
      
      public var stock_weapon_glove08:int = 0;
      
      public var stock_weapon_glove09:int = 0;
      
      public var stock_weapon_glove10:int = 0;
      
      public var stock_weapon_glove11:int = 0;
      
      public var stock_weapon_glove12:int = 0;
      
      public var stock_weapon_glove13:int = 0;
      
      public var stock_weapon_glove14:int = 0;
      
      public var stock_weapon_glove15:int = 0;
      
      public var stock_weapon_glove16:int = 0;
      
      public var stock_weapon_throw01:int = 4;
      
      public var stock_weapon_throw02:int = 1;
      
      public var stock_weapon_throw03:int = 1;
      
      public var stock_weapon_throw04:int = 1;
      
      public var stock_weapon_throw05:int = 0;
      
      public var stock_weapon_throw06:int = 0;
      
      public var stock_weapon_throw07:int = 0;
      
      public var stock_weapon_throw08:int = 0;
      
      public var stock_weapon_throw09:int = 0;
      
      public var stock_weapon_throw10:int = 0;
      
      public var stock_weapon_throw11:int = 0;
      
      public var stock_weapon_throw12:int = 0;
      
      public var stock_weapon_throw13:int = 0;
      
      public var stock_weapon_throw14:int = 0;
      
      public var stock_weapon_throw15:int = 0;
      
      public var stock_weapon_throw16:int = 0;
      
      public var stock_weapon_gun01:int = 4;
      
      public var stock_weapon_gun02:int = 1;
      
      public var stock_weapon_gun03:int = 1;
      
      public var stock_weapon_gun04:int = 1;
      
      public var stock_weapon_gun05:int = 0;
      
      public var stock_weapon_gun06:int = 0;
      
      public var stock_weapon_gun07:int = 0;
      
      public var stock_weapon_gun08:int = 0;
      
      public var stock_weapon_gun09:int = 0;
      
      public var stock_weapon_gun10:int = 0;
      
      public var stock_weapon_gun11:int = 0;
      
      public var stock_weapon_gun12:int = 0;
      
      public var stock_weapon_gun13:int = 0;
      
      public var stock_weapon_gun14:int = 0;
      
      public var stock_weapon_gun15:int = 0;
      
      public var stock_weapon_gun16:int = 0;
      
      public function DataManager()
      {
         super();
      }
      
      public function resetGameData() : *
      {
         this.bgm_volume = 1;
         this.se_volume = 1;
         this.game_save_counter = 0;
         this.stat_money = 0;
         this.stat_total_battle = 0;
         this.opt_show_health_bar = 1;
         this.opt_quality_setup = 3;
         this.help_battle = 0;
         this.help_world = 0;
         this.help_upgrade = 0;
         this.help_formation = 0;
         this.achive_01 = 0;
         this.achive_02 = 0;
         this.achive_03 = 0;
         this.achive_04 = 0;
         this.achive_05 = 0;
         this.achive_06 = 0;
         this.achive_07 = 0;
         this.achive_08 = 0;
         this.achive_09 = 0;
         this.achive_10 = 0;
         this.mission_stage = 1;
         this.hero_1_competed = 0;
         this.hero_2_competed = 0;
         this.hero_3_competed = 0;
         this.hero_type = 2;
         this.hero_boost_attack = 0;
         this.hero_boost_defense = 0;
         this.hero_boost_mana = 0;
         this.hero_spell_arrow = 0;
         this.hero_spell_fire = 0;
         this.hero_spell_ice = 0;
         this.hero_spell_tornado = 0;
         this.hero_spell_thunder = 0;
         this.hero_spell_meteor = 0;
         this.hero_spell_poison = 0;
         this.hero_spell_heal = 0;
         this.hero_spell_regen = 0;
         this.hero_spell_resurrect = 0;
         this.hero_spell_haste = 0;
         this.hero_spell_slow = 0;
         this.hero_spell_stop = 0;
         this.hero_spell_rage = 0;
         this.hero_spell_shield = 0;
         this.hero_spell_mini = 0;
         this.hero_spell_giant = 0;
         this.hero_spell_super = 0;
         this.char1_class = 1;
         this.char1_skin = 1;
         this.char1_weapon = 1;
         this.char2_class = 1;
         this.char2_skin = 13;
         this.char2_weapon = 1;
         this.char3_class = 1;
         this.char3_skin = 25;
         this.char3_weapon = 1;
         this.char4_class = 1;
         this.char4_skin = 37;
         this.char4_weapon = 1;
         this.unlock_class01 = 1;
         this.unlock_class02 = 0;
         this.unlock_class03 = 0;
         this.unlock_class04 = 0;
         this.unlock_class05 = 0;
         this.unlock_class06 = 0;
         this.unlock_class07 = 0;
         this.unlock_class08 = 0;
         this.unlock_class09 = 0;
         this.unlock_class10 = 0;
         this.unlock_class11 = 0;
         this.unlock_class12 = 0;
         this.unlock_class13 = 0;
         this.unlock_class14 = 0;
         this.unlock_class15 = 0;
         this.unlock_class16 = 0;
         this.stock_skin01 = 4;
         this.stock_skin02 = 0;
         this.stock_skin03 = 0;
         this.stock_skin04 = 0;
         this.stock_skin05 = 0;
         this.stock_skin06 = 0;
         this.stock_skin07 = 0;
         this.stock_skin08 = 0;
         this.stock_skin09 = 0;
         this.stock_skin10 = 0;
         this.stock_skin11 = 0;
         this.stock_skin12 = 0;
         this.stock_skin13 = 4;
         this.stock_skin14 = 0;
         this.stock_skin15 = 0;
         this.stock_skin16 = 0;
         this.stock_skin17 = 0;
         this.stock_skin18 = 0;
         this.stock_skin19 = 0;
         this.stock_skin20 = 0;
         this.stock_skin21 = 0;
         this.stock_skin22 = 0;
         this.stock_skin23 = 0;
         this.stock_skin24 = 0;
         this.stock_skin25 = 4;
         this.stock_skin26 = 0;
         this.stock_skin27 = 0;
         this.stock_skin28 = 0;
         this.stock_skin29 = 0;
         this.stock_skin30 = 0;
         this.stock_skin31 = 0;
         this.stock_skin32 = 0;
         this.stock_skin33 = 0;
         this.stock_skin34 = 0;
         this.stock_skin35 = 0;
         this.stock_skin36 = 0;
         this.stock_skin37 = 4;
         this.stock_skin38 = 0;
         this.stock_skin39 = 0;
         this.stock_skin40 = 0;
         this.stock_skin41 = 0;
         this.stock_skin42 = 0;
         this.stock_skin43 = 0;
         this.stock_skin44 = 0;
         this.stock_skin45 = 0;
         this.stock_skin46 = 0;
         this.stock_skin47 = 0;
         this.stock_skin48 = 0;
         this.stock_weapon_sword01 = 4;
         this.stock_weapon_sword02 = 0;
         this.stock_weapon_sword03 = 0;
         this.stock_weapon_sword04 = 0;
         this.stock_weapon_sword05 = 0;
         this.stock_weapon_sword06 = 0;
         this.stock_weapon_sword07 = 0;
         this.stock_weapon_sword08 = 0;
         this.stock_weapon_sword09 = 0;
         this.stock_weapon_sword10 = 0;
         this.stock_weapon_sword11 = 0;
         this.stock_weapon_sword12 = 0;
         this.stock_weapon_greatsword01 = 4;
         this.stock_weapon_greatsword02 = 0;
         this.stock_weapon_greatsword03 = 0;
         this.stock_weapon_greatsword04 = 0;
         this.stock_weapon_greatsword05 = 0;
         this.stock_weapon_greatsword06 = 0;
         this.stock_weapon_greatsword07 = 0;
         this.stock_weapon_greatsword08 = 0;
         this.stock_weapon_greatsword09 = 0;
         this.stock_weapon_greatsword10 = 0;
         this.stock_weapon_greatsword11 = 0;
         this.stock_weapon_greatsword12 = 0;
         this.stock_weapon_spear01 = 4;
         this.stock_weapon_spear02 = 0;
         this.stock_weapon_spear03 = 0;
         this.stock_weapon_spear04 = 0;
         this.stock_weapon_spear05 = 0;
         this.stock_weapon_spear06 = 0;
         this.stock_weapon_spear07 = 0;
         this.stock_weapon_spear08 = 0;
         this.stock_weapon_spear09 = 0;
         this.stock_weapon_spear10 = 0;
         this.stock_weapon_spear11 = 0;
         this.stock_weapon_spear12 = 0;
         this.stock_weapon_bow01 = 4;
         this.stock_weapon_bow02 = 0;
         this.stock_weapon_bow03 = 0;
         this.stock_weapon_bow04 = 0;
         this.stock_weapon_bow05 = 0;
         this.stock_weapon_bow06 = 0;
         this.stock_weapon_bow07 = 0;
         this.stock_weapon_bow08 = 0;
         this.stock_weapon_bow09 = 0;
         this.stock_weapon_bow10 = 0;
         this.stock_weapon_bow11 = 0;
         this.stock_weapon_bow12 = 0;
         this.stock_weapon_staff01 = 4;
         this.stock_weapon_staff02 = 0;
         this.stock_weapon_staff03 = 0;
         this.stock_weapon_staff04 = 0;
         this.stock_weapon_staff05 = 0;
         this.stock_weapon_staff06 = 0;
         this.stock_weapon_staff07 = 0;
         this.stock_weapon_staff08 = 0;
         this.stock_weapon_staff09 = 0;
         this.stock_weapon_staff10 = 0;
         this.stock_weapon_staff11 = 0;
         this.stock_weapon_staff12 = 0;
         this.stock_weapon_glove01 = 4;
         this.stock_weapon_glove02 = 0;
         this.stock_weapon_glove03 = 0;
         this.stock_weapon_glove04 = 0;
         this.stock_weapon_glove05 = 0;
         this.stock_weapon_glove06 = 0;
         this.stock_weapon_glove07 = 0;
         this.stock_weapon_glove08 = 0;
         this.stock_weapon_glove09 = 0;
         this.stock_weapon_glove10 = 0;
         this.stock_weapon_glove11 = 0;
         this.stock_weapon_glove12 = 0;
         this.stock_weapon_throw01 = 4;
         this.stock_weapon_throw02 = 0;
         this.stock_weapon_throw03 = 0;
         this.stock_weapon_throw04 = 0;
         this.stock_weapon_throw05 = 0;
         this.stock_weapon_throw06 = 0;
         this.stock_weapon_throw07 = 0;
         this.stock_weapon_throw08 = 0;
         this.stock_weapon_throw09 = 0;
         this.stock_weapon_throw10 = 0;
         this.stock_weapon_throw11 = 0;
         this.stock_weapon_throw12 = 0;
         this.stock_weapon_gun01 = 4;
         this.stock_weapon_gun02 = 0;
         this.stock_weapon_gun03 = 0;
         this.stock_weapon_gun04 = 0;
         this.stock_weapon_gun05 = 0;
         this.stock_weapon_gun06 = 0;
         this.stock_weapon_gun07 = 0;
         this.stock_weapon_gun08 = 0;
         this.stock_weapon_gun09 = 0;
         this.stock_weapon_gun10 = 0;
         this.stock_weapon_gun11 = 0;
         this.stock_weapon_gun12 = 0;
         trace(" reset data ... ");
      }
      
      public function resetGameHeroData() : *
      {
         this.stat_money = 0;
         this.mission_stage = 1;
         this.hero_type = 1;
         this.hero_boost_attack = 0;
         this.hero_boost_defense = 0;
         this.hero_boost_mana = 0;
         this.hero_spell_arrow = 0;
         this.hero_spell_fire = 0;
         this.hero_spell_ice = 0;
         this.hero_spell_tornado = 0;
         this.hero_spell_thunder = 0;
         this.hero_spell_meteor = 0;
         this.hero_spell_poison = 0;
         this.hero_spell_heal = 0;
         this.hero_spell_regen = 0;
         this.hero_spell_resurrect = 0;
         this.hero_spell_haste = 0;
         this.hero_spell_slow = 0;
         this.hero_spell_stop = 0;
         this.hero_spell_rage = 0;
         this.hero_spell_shield = 0;
         this.hero_spell_mini = 0;
         this.hero_spell_giant = 0;
         this.hero_spell_super = 0;
         this.game_completed = 0;
      }
      
      public function cheatMode() : *
      {
         this.stat_money = 900000;
         this.hero_spell_arrow = 1;
         this.hero_spell_fire = 1;
         this.hero_spell_ice = 1;
         this.hero_spell_tornado = 1;
         this.hero_spell_thunder = 1;
         this.hero_spell_meteor = 1;
         this.hero_spell_poison = 1;
         this.hero_spell_heal = 1;
         this.hero_spell_regen = 1;
         this.hero_spell_resurrect = 1;
         this.hero_spell_haste = 1;
         this.hero_spell_slow = 1;
         this.hero_spell_stop = 1;
         this.hero_spell_rage = 1;
         this.hero_spell_shield = 1;
         this.hero_spell_mini = 1;
         this.hero_spell_giant = 1;
         this.unlock_class01 = 1;
         this.unlock_class02 = 1;
         this.unlock_class03 = 1;
         this.unlock_class04 = 1;
         this.unlock_class05 = 1;
         this.unlock_class06 = 1;
         this.unlock_class07 = 1;
         this.unlock_class08 = 1;
         this.stock_skin01 = 4;
         this.stock_skin02 = 1;
         this.stock_skin03 = 1;
         this.stock_skin04 = 1;
         this.stock_skin05 = 1;
         this.stock_skin06 = 1;
         this.stock_skin07 = 1;
         this.stock_skin08 = 1;
         this.stock_skin09 = 1;
         this.stock_skin10 = 1;
         this.stock_skin11 = 1;
         this.stock_skin12 = 1;
         this.stock_skin13 = 4;
         this.stock_skin14 = 1;
         this.stock_skin15 = 1;
         this.stock_skin16 = 1;
         this.stock_skin17 = 1;
         this.stock_skin18 = 1;
         this.stock_skin19 = 1;
         this.stock_skin20 = 1;
         this.stock_skin21 = 1;
         this.stock_skin22 = 1;
         this.stock_skin23 = 1;
         this.stock_skin24 = 1;
         this.stock_skin25 = 4;
         this.stock_skin26 = 1;
         this.stock_skin27 = 1;
         this.stock_skin28 = 1;
         this.stock_skin29 = 1;
         this.stock_skin30 = 1;
         this.stock_skin31 = 1;
         this.stock_skin32 = 1;
         this.stock_skin33 = 1;
         this.stock_skin34 = 1;
         this.stock_skin35 = 1;
         this.stock_skin36 = 1;
         this.stock_skin37 = 4;
         this.stock_skin38 = 1;
         this.stock_skin39 = 1;
         this.stock_skin40 = 1;
         this.stock_skin41 = 1;
         this.stock_skin42 = 1;
         this.stock_skin43 = 1;
         this.stock_skin44 = 1;
         this.stock_skin45 = 1;
         this.stock_skin46 = 1;
         this.stock_skin47 = 1;
         this.stock_skin48 = 1;
         this.stock_weapon_sword01 = 4;
         this.stock_weapon_sword02 = 1;
         this.stock_weapon_sword03 = 1;
         this.stock_weapon_sword04 = 1;
         this.stock_weapon_sword05 = 1;
         this.stock_weapon_sword06 = 1;
         this.stock_weapon_sword07 = 1;
         this.stock_weapon_sword08 = 1;
         this.stock_weapon_sword09 = 1;
         this.stock_weapon_sword10 = 1;
         this.stock_weapon_sword11 = 1;
         this.stock_weapon_sword12 = 1;
         this.stock_weapon_greatsword01 = 4;
         this.stock_weapon_greatsword02 = 1;
         this.stock_weapon_greatsword03 = 1;
         this.stock_weapon_greatsword04 = 1;
         this.stock_weapon_greatsword05 = 1;
         this.stock_weapon_greatsword06 = 1;
         this.stock_weapon_greatsword07 = 1;
         this.stock_weapon_greatsword08 = 1;
         this.stock_weapon_greatsword09 = 1;
         this.stock_weapon_greatsword10 = 1;
         this.stock_weapon_greatsword11 = 1;
         this.stock_weapon_greatsword12 = 1;
         this.stock_weapon_spear01 = 4;
         this.stock_weapon_spear02 = 1;
         this.stock_weapon_spear03 = 1;
         this.stock_weapon_spear04 = 1;
         this.stock_weapon_spear05 = 1;
         this.stock_weapon_spear06 = 1;
         this.stock_weapon_spear07 = 1;
         this.stock_weapon_spear08 = 1;
         this.stock_weapon_spear09 = 1;
         this.stock_weapon_spear10 = 1;
         this.stock_weapon_spear11 = 1;
         this.stock_weapon_spear12 = 1;
         this.stock_weapon_bow01 = 4;
         this.stock_weapon_bow02 = 1;
         this.stock_weapon_bow03 = 1;
         this.stock_weapon_bow04 = 1;
         this.stock_weapon_bow05 = 1;
         this.stock_weapon_bow06 = 1;
         this.stock_weapon_bow07 = 1;
         this.stock_weapon_bow08 = 1;
         this.stock_weapon_bow09 = 1;
         this.stock_weapon_bow10 = 1;
         this.stock_weapon_bow11 = 1;
         this.stock_weapon_bow12 = 1;
         this.stock_weapon_staff01 = 4;
         this.stock_weapon_staff02 = 1;
         this.stock_weapon_staff03 = 1;
         this.stock_weapon_staff04 = 1;
         this.stock_weapon_staff05 = 1;
         this.stock_weapon_staff06 = 1;
         this.stock_weapon_staff07 = 1;
         this.stock_weapon_staff08 = 1;
         this.stock_weapon_staff09 = 1;
         this.stock_weapon_staff10 = 1;
         this.stock_weapon_staff11 = 1;
         this.stock_weapon_staff12 = 1;
         this.stock_weapon_glove01 = 4;
         this.stock_weapon_glove02 = 1;
         this.stock_weapon_glove03 = 1;
         this.stock_weapon_glove04 = 1;
         this.stock_weapon_glove05 = 1;
         this.stock_weapon_glove06 = 1;
         this.stock_weapon_glove07 = 1;
         this.stock_weapon_glove08 = 1;
         this.stock_weapon_glove09 = 1;
         this.stock_weapon_glove10 = 1;
         this.stock_weapon_glove11 = 1;
         this.stock_weapon_glove12 = 1;
         this.stock_weapon_throw01 = 4;
         this.stock_weapon_throw02 = 1;
         this.stock_weapon_throw03 = 1;
         this.stock_weapon_throw04 = 1;
         this.stock_weapon_throw05 = 1;
         this.stock_weapon_throw06 = 1;
         this.stock_weapon_throw07 = 1;
         this.stock_weapon_throw08 = 1;
         this.stock_weapon_throw09 = 1;
         this.stock_weapon_throw10 = 1;
         this.stock_weapon_throw11 = 1;
         this.stock_weapon_throw12 = 1;
         this.stock_weapon_gun01 = 4;
         this.stock_weapon_gun02 = 1;
         this.stock_weapon_gun03 = 1;
         this.stock_weapon_gun04 = 1;
         this.stock_weapon_gun05 = 1;
         this.stock_weapon_gun06 = 1;
         this.stock_weapon_gun07 = 1;
         this.stock_weapon_gun08 = 1;
         this.stock_weapon_gun09 = 1;
         this.stock_weapon_gun10 = 1;
         this.stock_weapon_gun11 = 1;
         this.stock_weapon_gun12 = 1;
      }
      
      public function achievementUpdate() : int
      {
         if(this.achive_01 <= 0 && this.mission_stage > 4)
         {
            this.achive_01 = 2;
            this.stock_weapon_staff04 += 1;
            return 1;
         }
         if(this.achive_02 <= 0 && this.mission_stage > 8)
         {
            this.achive_02 = 2;
            this.stock_weapon_bow05 += 1;
            return 2;
         }
         if(this.achive_03 <= 0 && this.mission_stage > 12)
         {
            this.achive_03 = 2;
            this.stock_weapon_greatsword06 += 1;
            return 3;
         }
         if(this.achive_04 <= 0 && this.hero_1_competed >= 1 && this.hero_2_competed >= 1 && this.hero_3_competed >= 1)
         {
            this.achive_04 = 2;
            this.stock_weapon_staff12 += 1;
            return 4;
         }
         if(this.achive_05 <= 0 && this.stat_total_battle >= 25)
         {
            this.achive_05 = 2;
            this.stock_weapon_sword11 += 1;
            return 5;
         }
         if(this.achive_06 <= 0 && this.stat_total_battle >= 50)
         {
            this.achive_06 = 2;
            this.stock_weapon_sword12 += 1;
            return 6;
         }
         if(this.achive_07 <= 0 && this.stat_total_battle >= 100)
         {
            this.achive_07 = 2;
            this.stock_weapon_greatsword12 += 1;
            return 7;
         }
         if(this.achive_08 <= 0 && this.getTotalSkin() >= 30)
         {
            this.achive_08 = 2;
            this.stock_weapon_bow12 += 1;
            return 8;
         }
         if(this.achive_09 <= 0 && this.getTotalWeapon() >= 50)
         {
            this.achive_09 = 2;
            this.stock_weapon_glove12 += 1;
            return 9;
         }
         if(this.achive_10 <= 0 && this.stat_money >= 500000)
         {
            this.achive_10 = 2;
            this.stock_weapon_spear12 += 1;
            return 10;
         }
         return 0;
      }
      
      public function getTotalPlaythrough() : int
      {
         return this.hero_1_competed + this.hero_2_competed + this.hero_3_competed;
      }
      
      public function getTotalWeapon() : int
      {
         var total:int = 0;
         if(this.stock_weapon_sword01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_sword12 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_greatsword12 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_spear12 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_bow12 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_staff12 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_glove12 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_throw12 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun01 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun02 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun03 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun04 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun05 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun06 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun07 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun08 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun09 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun10 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun11 > 0)
         {
            total++;
         }
         if(this.stock_weapon_gun12 > 0)
         {
            total++;
         }
         return total;
      }
      
      public function getTotalSkin() : int
      {
         var total:int = 0;
         if(this.stock_skin01 > 0)
         {
            total++;
         }
         if(this.stock_skin02 > 0)
         {
            total++;
         }
         if(this.stock_skin03 > 0)
         {
            total++;
         }
         if(this.stock_skin04 > 0)
         {
            total++;
         }
         if(this.stock_skin05 > 0)
         {
            total++;
         }
         if(this.stock_skin06 > 0)
         {
            total++;
         }
         if(this.stock_skin07 > 0)
         {
            total++;
         }
         if(this.stock_skin08 > 0)
         {
            total++;
         }
         if(this.stock_skin09 > 0)
         {
            total++;
         }
         if(this.stock_skin10 > 0)
         {
            total++;
         }
         if(this.stock_skin11 > 0)
         {
            total++;
         }
         if(this.stock_skin12 > 0)
         {
            total++;
         }
         if(this.stock_skin13 > 0)
         {
            total++;
         }
         if(this.stock_skin14 > 0)
         {
            total++;
         }
         if(this.stock_skin15 > 0)
         {
            total++;
         }
         if(this.stock_skin16 > 0)
         {
            total++;
         }
         if(this.stock_skin17 > 0)
         {
            total++;
         }
         if(this.stock_skin18 > 0)
         {
            total++;
         }
         if(this.stock_skin19 > 0)
         {
            total++;
         }
         if(this.stock_skin20 > 0)
         {
            total++;
         }
         if(this.stock_skin21 > 0)
         {
            total++;
         }
         if(this.stock_skin22 > 0)
         {
            total++;
         }
         if(this.stock_skin23 > 0)
         {
            total++;
         }
         if(this.stock_skin24 > 0)
         {
            total++;
         }
         if(this.stock_skin25 > 0)
         {
            total++;
         }
         if(this.stock_skin26 > 0)
         {
            total++;
         }
         if(this.stock_skin27 > 0)
         {
            total++;
         }
         if(this.stock_skin28 > 0)
         {
            total++;
         }
         if(this.stock_skin29 > 0)
         {
            total++;
         }
         if(this.stock_skin30 > 0)
         {
            total++;
         }
         if(this.stock_skin31 > 0)
         {
            total++;
         }
         if(this.stock_skin32 > 0)
         {
            total++;
         }
         if(this.stock_skin33 > 0)
         {
            total++;
         }
         if(this.stock_skin34 > 0)
         {
            total++;
         }
         if(this.stock_skin35 > 0)
         {
            total++;
         }
         if(this.stock_skin36 > 0)
         {
            total++;
         }
         if(this.stock_skin37 > 0)
         {
            total++;
         }
         if(this.stock_skin38 > 0)
         {
            total++;
         }
         if(this.stock_skin39 > 0)
         {
            total++;
         }
         if(this.stock_skin40 > 0)
         {
            total++;
         }
         if(this.stock_skin41 > 0)
         {
            total++;
         }
         if(this.stock_skin42 > 0)
         {
            total++;
         }
         if(this.stock_skin43 > 0)
         {
            total++;
         }
         if(this.stock_skin44 > 0)
         {
            total++;
         }
         if(this.stock_skin45 > 0)
         {
            total++;
         }
         if(this.stock_skin46 > 0)
         {
            total++;
         }
         if(this.stock_skin47 > 0)
         {
            total++;
         }
         if(this.stock_skin48 > 0)
         {
            total++;
         }
         return total;
      }
      
      public function getTotalClass() : int
      {
         var total:int = 0;
         if(this.unlock_class01 > 0)
         {
            total++;
         }
         if(this.unlock_class02 > 0)
         {
            total++;
         }
         if(this.unlock_class03 > 0)
         {
            total++;
         }
         if(this.unlock_class04 > 0)
         {
            total++;
         }
         if(this.unlock_class05 > 0)
         {
            total++;
         }
         if(this.unlock_class06 > 0)
         {
            total++;
         }
         if(this.unlock_class07 > 0)
         {
            total++;
         }
         if(this.unlock_class08 > 0)
         {
            total++;
         }
         return total;
      }
      
      public function addItemClipID(CLIP_ID:int = 0, VAL:int = 1) : *
      {
         if(CLIP_ID == 2)
         {
            this.unlock_class01 = 1;
         }
         if(CLIP_ID == 3)
         {
            this.unlock_class02 = 1;
         }
         if(CLIP_ID == 4)
         {
            this.unlock_class03 = 1;
         }
         if(CLIP_ID == 5)
         {
            this.unlock_class04 = 1;
         }
         if(CLIP_ID == 6)
         {
            this.unlock_class05 = 1;
         }
         if(CLIP_ID == 7)
         {
            this.unlock_class06 = 1;
         }
         if(CLIP_ID == 8)
         {
            this.unlock_class07 = 1;
         }
         if(CLIP_ID == 9)
         {
            this.unlock_class08 = 1;
         }
         if(CLIP_ID == 21)
         {
            this.stock_skin01 = Math.min(Math.max(this.stock_skin01 + VAL,0),99);
         }
         if(CLIP_ID == 22)
         {
            this.stock_skin02 = Math.min(Math.max(this.stock_skin02 + VAL,0),99);
         }
         if(CLIP_ID == 23)
         {
            this.stock_skin03 = Math.min(Math.max(this.stock_skin03 + VAL,0),99);
         }
         if(CLIP_ID == 24)
         {
            this.stock_skin04 = Math.min(Math.max(this.stock_skin04 + VAL,0),99);
         }
         if(CLIP_ID == 25)
         {
            this.stock_skin05 = Math.min(Math.max(this.stock_skin05 + VAL,0),99);
         }
         if(CLIP_ID == 26)
         {
            this.stock_skin06 = Math.min(Math.max(this.stock_skin06 + VAL,0),99);
         }
         if(CLIP_ID == 27)
         {
            this.stock_skin07 = Math.min(Math.max(this.stock_skin07 + VAL,0),99);
         }
         if(CLIP_ID == 28)
         {
            this.stock_skin08 = Math.min(Math.max(this.stock_skin08 + VAL,0),99);
         }
         if(CLIP_ID == 29)
         {
            this.stock_skin09 = Math.min(Math.max(this.stock_skin09 + VAL,0),99);
         }
         if(CLIP_ID == 30)
         {
            this.stock_skin10 = Math.min(Math.max(this.stock_skin10 + VAL,0),99);
         }
         if(CLIP_ID == 31)
         {
            this.stock_skin11 = Math.min(Math.max(this.stock_skin11 + VAL,0),99);
         }
         if(CLIP_ID == 32)
         {
            this.stock_skin12 = Math.min(Math.max(this.stock_skin12 + VAL,0),99);
         }
         if(CLIP_ID == 33)
         {
            this.stock_skin13 = Math.min(Math.max(this.stock_skin13 + VAL,0),99);
         }
         if(CLIP_ID == 34)
         {
            this.stock_skin14 = Math.min(Math.max(this.stock_skin14 + VAL,0),99);
         }
         if(CLIP_ID == 35)
         {
            this.stock_skin15 = Math.min(Math.max(this.stock_skin15 + VAL,0),99);
         }
         if(CLIP_ID == 36)
         {
            this.stock_skin16 = Math.min(Math.max(this.stock_skin16 + VAL,0),99);
         }
         if(CLIP_ID == 37)
         {
            this.stock_skin17 = Math.min(Math.max(this.stock_skin17 + VAL,0),99);
         }
         if(CLIP_ID == 38)
         {
            this.stock_skin18 = Math.min(Math.max(this.stock_skin18 + VAL,0),99);
         }
         if(CLIP_ID == 39)
         {
            this.stock_skin19 = Math.min(Math.max(this.stock_skin19 + VAL,0),99);
         }
         if(CLIP_ID == 40)
         {
            this.stock_skin20 = Math.min(Math.max(this.stock_skin20 + VAL,0),99);
         }
         if(CLIP_ID == 41)
         {
            this.stock_skin21 = Math.min(Math.max(this.stock_skin21 + VAL,0),99);
         }
         if(CLIP_ID == 42)
         {
            this.stock_skin22 = Math.min(Math.max(this.stock_skin22 + VAL,0),99);
         }
         if(CLIP_ID == 43)
         {
            this.stock_skin23 = Math.min(Math.max(this.stock_skin23 + VAL,0),99);
         }
         if(CLIP_ID == 44)
         {
            this.stock_skin24 = Math.min(Math.max(this.stock_skin24 + VAL,0),99);
         }
         if(CLIP_ID == 45)
         {
            this.stock_skin25 = Math.min(Math.max(this.stock_skin25 + VAL,0),99);
         }
         if(CLIP_ID == 46)
         {
            this.stock_skin26 = Math.min(Math.max(this.stock_skin26 + VAL,0),99);
         }
         if(CLIP_ID == 47)
         {
            this.stock_skin27 = Math.min(Math.max(this.stock_skin27 + VAL,0),99);
         }
         if(CLIP_ID == 48)
         {
            this.stock_skin28 = Math.min(Math.max(this.stock_skin28 + VAL,0),99);
         }
         if(CLIP_ID == 49)
         {
            this.stock_skin29 = Math.min(Math.max(this.stock_skin29 + VAL,0),99);
         }
         if(CLIP_ID == 50)
         {
            this.stock_skin30 = Math.min(Math.max(this.stock_skin30 + VAL,0),99);
         }
         if(CLIP_ID == 51)
         {
            this.stock_skin31 = Math.min(Math.max(this.stock_skin31 + VAL,0),99);
         }
         if(CLIP_ID == 52)
         {
            this.stock_skin32 = Math.min(Math.max(this.stock_skin32 + VAL,0),99);
         }
         if(CLIP_ID == 53)
         {
            this.stock_skin33 = Math.min(Math.max(this.stock_skin33 + VAL,0),99);
         }
         if(CLIP_ID == 54)
         {
            this.stock_skin34 = Math.min(Math.max(this.stock_skin34 + VAL,0),99);
         }
         if(CLIP_ID == 55)
         {
            this.stock_skin35 = Math.min(Math.max(this.stock_skin35 + VAL,0),99);
         }
         if(CLIP_ID == 56)
         {
            this.stock_skin36 = Math.min(Math.max(this.stock_skin36 + VAL,0),99);
         }
         if(CLIP_ID == 57)
         {
            this.stock_skin37 = Math.min(Math.max(this.stock_skin37 + VAL,0),99);
         }
         if(CLIP_ID == 58)
         {
            this.stock_skin38 = Math.min(Math.max(this.stock_skin38 + VAL,0),99);
         }
         if(CLIP_ID == 59)
         {
            this.stock_skin39 = Math.min(Math.max(this.stock_skin39 + VAL,0),99);
         }
         if(CLIP_ID == 60)
         {
            this.stock_skin40 = Math.min(Math.max(this.stock_skin40 + VAL,0),99);
         }
         if(CLIP_ID == 61)
         {
            this.stock_skin41 = Math.min(Math.max(this.stock_skin41 + VAL,0),99);
         }
         if(CLIP_ID == 62)
         {
            this.stock_skin42 = Math.min(Math.max(this.stock_skin42 + VAL,0),99);
         }
         if(CLIP_ID == 63)
         {
            this.stock_skin43 = Math.min(Math.max(this.stock_skin43 + VAL,0),99);
         }
         if(CLIP_ID == 64)
         {
            this.stock_skin44 = Math.min(Math.max(this.stock_skin44 + VAL,0),99);
         }
         if(CLIP_ID == 65)
         {
            this.stock_skin45 = Math.min(Math.max(this.stock_skin45 + VAL,0),99);
         }
         if(CLIP_ID == 66)
         {
            this.stock_skin46 = Math.min(Math.max(this.stock_skin46 + VAL,0),99);
         }
         if(CLIP_ID == 67)
         {
            this.stock_skin47 = Math.min(Math.max(this.stock_skin47 + VAL,0),99);
         }
         if(CLIP_ID == 68)
         {
            this.stock_skin48 = Math.min(Math.max(this.stock_skin48 + VAL,0),99);
         }
         if(CLIP_ID == 81)
         {
            this.stock_weapon_sword01 = Math.min(Math.max(this.stock_weapon_sword01 + VAL,0),99);
         }
         if(CLIP_ID == 82)
         {
            this.stock_weapon_sword02 = Math.min(Math.max(this.stock_weapon_sword02 + VAL,0),99);
         }
         if(CLIP_ID == 83)
         {
            this.stock_weapon_sword03 = Math.min(Math.max(this.stock_weapon_sword03 + VAL,0),99);
         }
         if(CLIP_ID == 84)
         {
            this.stock_weapon_sword04 = Math.min(Math.max(this.stock_weapon_sword04 + VAL,0),99);
         }
         if(CLIP_ID == 85)
         {
            this.stock_weapon_sword05 = Math.min(Math.max(this.stock_weapon_sword05 + VAL,0),99);
         }
         if(CLIP_ID == 86)
         {
            this.stock_weapon_sword06 = Math.min(Math.max(this.stock_weapon_sword06 + VAL,0),99);
         }
         if(CLIP_ID == 87)
         {
            this.stock_weapon_sword07 = Math.min(Math.max(this.stock_weapon_sword07 + VAL,0),99);
         }
         if(CLIP_ID == 88)
         {
            this.stock_weapon_sword08 = Math.min(Math.max(this.stock_weapon_sword08 + VAL,0),99);
         }
         if(CLIP_ID == 89)
         {
            this.stock_weapon_sword09 = Math.min(Math.max(this.stock_weapon_sword09 + VAL,0),99);
         }
         if(CLIP_ID == 90)
         {
            this.stock_weapon_sword10 = Math.min(Math.max(this.stock_weapon_sword10 + VAL,0),99);
         }
         if(CLIP_ID == 91)
         {
            this.stock_weapon_sword11 = Math.min(Math.max(this.stock_weapon_sword11 + VAL,0),99);
         }
         if(CLIP_ID == 92)
         {
            this.stock_weapon_sword12 = Math.min(Math.max(this.stock_weapon_sword12 + VAL,0),99);
         }
         if(CLIP_ID == 93)
         {
            this.stock_weapon_sword13 = Math.min(Math.max(this.stock_weapon_sword13 + VAL,0),99);
         }
         if(CLIP_ID == 94)
         {
            this.stock_weapon_sword14 = Math.min(Math.max(this.stock_weapon_sword14 + VAL,0),99);
         }
         if(CLIP_ID == 95)
         {
            this.stock_weapon_sword15 = Math.min(Math.max(this.stock_weapon_sword15 + VAL,0),99);
         }
         if(CLIP_ID == 96)
         {
            this.stock_weapon_sword16 = Math.min(Math.max(this.stock_weapon_sword16 + VAL,0),99);
         }
         if(CLIP_ID == 141)
         {
            this.stock_weapon_bow01 = Math.min(Math.max(this.stock_weapon_bow01 + VAL,0),99);
         }
         if(CLIP_ID == 142)
         {
            this.stock_weapon_bow02 = Math.min(Math.max(this.stock_weapon_bow02 + VAL,0),99);
         }
         if(CLIP_ID == 143)
         {
            this.stock_weapon_bow03 = Math.min(Math.max(this.stock_weapon_bow03 + VAL,0),99);
         }
         if(CLIP_ID == 144)
         {
            this.stock_weapon_bow04 = Math.min(Math.max(this.stock_weapon_bow04 + VAL,0),99);
         }
         if(CLIP_ID == 145)
         {
            this.stock_weapon_bow05 = Math.min(Math.max(this.stock_weapon_bow05 + VAL,0),99);
         }
         if(CLIP_ID == 146)
         {
            this.stock_weapon_bow06 = Math.min(Math.max(this.stock_weapon_bow06 + VAL,0),99);
         }
         if(CLIP_ID == 147)
         {
            this.stock_weapon_bow07 = Math.min(Math.max(this.stock_weapon_bow07 + VAL,0),99);
         }
         if(CLIP_ID == 148)
         {
            this.stock_weapon_bow08 = Math.min(Math.max(this.stock_weapon_bow08 + VAL,0),99);
         }
         if(CLIP_ID == 149)
         {
            this.stock_weapon_bow09 = Math.min(Math.max(this.stock_weapon_bow09 + VAL,0),99);
         }
         if(CLIP_ID == 150)
         {
            this.stock_weapon_bow10 = Math.min(Math.max(this.stock_weapon_bow10 + VAL,0),99);
         }
         if(CLIP_ID == 151)
         {
            this.stock_weapon_bow11 = Math.min(Math.max(this.stock_weapon_bow11 + VAL,0),99);
         }
         if(CLIP_ID == 152)
         {
            this.stock_weapon_bow12 = Math.min(Math.max(this.stock_weapon_bow12 + VAL,0),99);
         }
         if(CLIP_ID == 153)
         {
            this.stock_weapon_bow13 = Math.min(Math.max(this.stock_weapon_bow13 + VAL,0),99);
         }
         if(CLIP_ID == 154)
         {
            this.stock_weapon_bow14 = Math.min(Math.max(this.stock_weapon_bow14 + VAL,0),99);
         }
         if(CLIP_ID == 155)
         {
            this.stock_weapon_bow15 = Math.min(Math.max(this.stock_weapon_bow15 + VAL,0),99);
         }
         if(CLIP_ID == 156)
         {
            this.stock_weapon_bow16 = Math.min(Math.max(this.stock_weapon_bow16 + VAL,0),99);
         }
         if(CLIP_ID == 161)
         {
            this.stock_weapon_staff01 = Math.min(Math.max(this.stock_weapon_staff01 + VAL,0),99);
         }
         if(CLIP_ID == 162)
         {
            this.stock_weapon_staff02 = Math.min(Math.max(this.stock_weapon_staff02 + VAL,0),99);
         }
         if(CLIP_ID == 163)
         {
            this.stock_weapon_staff03 = Math.min(Math.max(this.stock_weapon_staff03 + VAL,0),99);
         }
         if(CLIP_ID == 164)
         {
            this.stock_weapon_staff04 = Math.min(Math.max(this.stock_weapon_staff04 + VAL,0),99);
         }
         if(CLIP_ID == 165)
         {
            this.stock_weapon_staff05 = Math.min(Math.max(this.stock_weapon_staff05 + VAL,0),99);
         }
         if(CLIP_ID == 166)
         {
            this.stock_weapon_staff06 = Math.min(Math.max(this.stock_weapon_staff06 + VAL,0),99);
         }
         if(CLIP_ID == 167)
         {
            this.stock_weapon_staff07 = Math.min(Math.max(this.stock_weapon_staff07 + VAL,0),99);
         }
         if(CLIP_ID == 168)
         {
            this.stock_weapon_staff08 = Math.min(Math.max(this.stock_weapon_staff08 + VAL,0),99);
         }
         if(CLIP_ID == 169)
         {
            this.stock_weapon_staff09 = Math.min(Math.max(this.stock_weapon_staff09 + VAL,0),99);
         }
         if(CLIP_ID == 170)
         {
            this.stock_weapon_staff10 = Math.min(Math.max(this.stock_weapon_staff10 + VAL,0),99);
         }
         if(CLIP_ID == 171)
         {
            this.stock_weapon_staff11 = Math.min(Math.max(this.stock_weapon_staff11 + VAL,0),99);
         }
         if(CLIP_ID == 172)
         {
            this.stock_weapon_staff12 = Math.min(Math.max(this.stock_weapon_staff12 + VAL,0),99);
         }
         if(CLIP_ID == 173)
         {
            this.stock_weapon_staff13 = Math.min(Math.max(this.stock_weapon_staff13 + VAL,0),99);
         }
         if(CLIP_ID == 174)
         {
            this.stock_weapon_staff14 = Math.min(Math.max(this.stock_weapon_staff14 + VAL,0),99);
         }
         if(CLIP_ID == 175)
         {
            this.stock_weapon_staff15 = Math.min(Math.max(this.stock_weapon_staff15 + VAL,0),99);
         }
         if(CLIP_ID == 176)
         {
            this.stock_weapon_staff16 = Math.min(Math.max(this.stock_weapon_staff16 + VAL,0),99);
         }
         if(CLIP_ID == 181)
         {
            this.stock_weapon_glove01 = Math.min(Math.max(this.stock_weapon_glove01 + VAL,0),99);
         }
         if(CLIP_ID == 182)
         {
            this.stock_weapon_glove02 = Math.min(Math.max(this.stock_weapon_glove02 + VAL,0),99);
         }
         if(CLIP_ID == 183)
         {
            this.stock_weapon_glove03 = Math.min(Math.max(this.stock_weapon_glove03 + VAL,0),99);
         }
         if(CLIP_ID == 184)
         {
            this.stock_weapon_glove04 = Math.min(Math.max(this.stock_weapon_glove04 + VAL,0),99);
         }
         if(CLIP_ID == 185)
         {
            this.stock_weapon_glove05 = Math.min(Math.max(this.stock_weapon_glove05 + VAL,0),99);
         }
         if(CLIP_ID == 186)
         {
            this.stock_weapon_glove06 = Math.min(Math.max(this.stock_weapon_glove06 + VAL,0),99);
         }
         if(CLIP_ID == 187)
         {
            this.stock_weapon_glove07 = Math.min(Math.max(this.stock_weapon_glove07 + VAL,0),99);
         }
         if(CLIP_ID == 188)
         {
            this.stock_weapon_glove08 = Math.min(Math.max(this.stock_weapon_glove08 + VAL,0),99);
         }
         if(CLIP_ID == 189)
         {
            this.stock_weapon_glove09 = Math.min(Math.max(this.stock_weapon_glove09 + VAL,0),99);
         }
         if(CLIP_ID == 190)
         {
            this.stock_weapon_glove10 = Math.min(Math.max(this.stock_weapon_glove10 + VAL,0),99);
         }
         if(CLIP_ID == 191)
         {
            this.stock_weapon_glove11 = Math.min(Math.max(this.stock_weapon_glove11 + VAL,0),99);
         }
         if(CLIP_ID == 192)
         {
            this.stock_weapon_glove12 = Math.min(Math.max(this.stock_weapon_glove12 + VAL,0),99);
         }
         if(CLIP_ID == 193)
         {
            this.stock_weapon_glove13 = Math.min(Math.max(this.stock_weapon_glove13 + VAL,0),99);
         }
         if(CLIP_ID == 194)
         {
            this.stock_weapon_glove14 = Math.min(Math.max(this.stock_weapon_glove14 + VAL,0),99);
         }
         if(CLIP_ID == 195)
         {
            this.stock_weapon_glove15 = Math.min(Math.max(this.stock_weapon_glove15 + VAL,0),99);
         }
         if(CLIP_ID == 196)
         {
            this.stock_weapon_glove16 = Math.min(Math.max(this.stock_weapon_glove16 + VAL,0),99);
         }
         if(CLIP_ID == 101)
         {
            this.stock_weapon_greatsword01 = Math.min(Math.max(this.stock_weapon_greatsword01 + VAL,0),99);
         }
         if(CLIP_ID == 102)
         {
            this.stock_weapon_greatsword02 = Math.min(Math.max(this.stock_weapon_greatsword02 + VAL,0),99);
         }
         if(CLIP_ID == 103)
         {
            this.stock_weapon_greatsword03 = Math.min(Math.max(this.stock_weapon_greatsword03 + VAL,0),99);
         }
         if(CLIP_ID == 104)
         {
            this.stock_weapon_greatsword04 = Math.min(Math.max(this.stock_weapon_greatsword04 + VAL,0),99);
         }
         if(CLIP_ID == 105)
         {
            this.stock_weapon_greatsword05 = Math.min(Math.max(this.stock_weapon_greatsword05 + VAL,0),99);
         }
         if(CLIP_ID == 106)
         {
            this.stock_weapon_greatsword06 = Math.min(Math.max(this.stock_weapon_greatsword06 + VAL,0),99);
         }
         if(CLIP_ID == 107)
         {
            this.stock_weapon_greatsword07 = Math.min(Math.max(this.stock_weapon_greatsword07 + VAL,0),99);
         }
         if(CLIP_ID == 108)
         {
            this.stock_weapon_greatsword08 = Math.min(Math.max(this.stock_weapon_greatsword08 + VAL,0),99);
         }
         if(CLIP_ID == 109)
         {
            this.stock_weapon_greatsword09 = Math.min(Math.max(this.stock_weapon_greatsword09 + VAL,0),99);
         }
         if(CLIP_ID == 110)
         {
            this.stock_weapon_greatsword10 = Math.min(Math.max(this.stock_weapon_greatsword10 + VAL,0),99);
         }
         if(CLIP_ID == 111)
         {
            this.stock_weapon_greatsword11 = Math.min(Math.max(this.stock_weapon_greatsword11 + VAL,0),99);
         }
         if(CLIP_ID == 112)
         {
            this.stock_weapon_greatsword12 = Math.min(Math.max(this.stock_weapon_greatsword12 + VAL,0),99);
         }
         if(CLIP_ID == 113)
         {
            this.stock_weapon_greatsword13 = Math.min(Math.max(this.stock_weapon_greatsword13 + VAL,0),99);
         }
         if(CLIP_ID == 114)
         {
            this.stock_weapon_greatsword14 = Math.min(Math.max(this.stock_weapon_greatsword14 + VAL,0),99);
         }
         if(CLIP_ID == 115)
         {
            this.stock_weapon_greatsword15 = Math.min(Math.max(this.stock_weapon_greatsword15 + VAL,0),99);
         }
         if(CLIP_ID == 116)
         {
            this.stock_weapon_greatsword16 = Math.min(Math.max(this.stock_weapon_greatsword16 + VAL,0),99);
         }
         if(CLIP_ID == 121)
         {
            this.stock_weapon_spear01 = Math.min(Math.max(this.stock_weapon_spear01 + VAL,0),99);
         }
         if(CLIP_ID == 122)
         {
            this.stock_weapon_spear02 = Math.min(Math.max(this.stock_weapon_spear02 + VAL,0),99);
         }
         if(CLIP_ID == 123)
         {
            this.stock_weapon_spear03 = Math.min(Math.max(this.stock_weapon_spear03 + VAL,0),99);
         }
         if(CLIP_ID == 124)
         {
            this.stock_weapon_spear04 = Math.min(Math.max(this.stock_weapon_spear04 + VAL,0),99);
         }
         if(CLIP_ID == 125)
         {
            this.stock_weapon_spear05 = Math.min(Math.max(this.stock_weapon_spear05 + VAL,0),99);
         }
         if(CLIP_ID == 126)
         {
            this.stock_weapon_spear06 = Math.min(Math.max(this.stock_weapon_spear06 + VAL,0),99);
         }
         if(CLIP_ID == 127)
         {
            this.stock_weapon_spear07 = Math.min(Math.max(this.stock_weapon_spear07 + VAL,0),99);
         }
         if(CLIP_ID == 128)
         {
            this.stock_weapon_spear08 = Math.min(Math.max(this.stock_weapon_spear08 + VAL,0),99);
         }
         if(CLIP_ID == 129)
         {
            this.stock_weapon_spear09 = Math.min(Math.max(this.stock_weapon_spear09 + VAL,0),99);
         }
         if(CLIP_ID == 130)
         {
            this.stock_weapon_spear10 = Math.min(Math.max(this.stock_weapon_spear10 + VAL,0),99);
         }
         if(CLIP_ID == 131)
         {
            this.stock_weapon_spear11 = Math.min(Math.max(this.stock_weapon_spear11 + VAL,0),99);
         }
         if(CLIP_ID == 132)
         {
            this.stock_weapon_spear12 = Math.min(Math.max(this.stock_weapon_spear12 + VAL,0),99);
         }
         if(CLIP_ID == 133)
         {
            this.stock_weapon_spear13 = Math.min(Math.max(this.stock_weapon_spear13 + VAL,0),99);
         }
         if(CLIP_ID == 134)
         {
            this.stock_weapon_spear14 = Math.min(Math.max(this.stock_weapon_spear14 + VAL,0),99);
         }
         if(CLIP_ID == 135)
         {
            this.stock_weapon_spear15 = Math.min(Math.max(this.stock_weapon_spear15 + VAL,0),99);
         }
         if(CLIP_ID == 136)
         {
            this.stock_weapon_spear16 = Math.min(Math.max(this.stock_weapon_spear16 + VAL,0),99);
         }
         if(CLIP_ID == 221)
         {
            this.stock_weapon_throw01 = Math.min(Math.max(this.stock_weapon_throw01 + VAL,0),99);
         }
         if(CLIP_ID == 222)
         {
            this.stock_weapon_throw02 = Math.min(Math.max(this.stock_weapon_throw02 + VAL,0),99);
         }
         if(CLIP_ID == 223)
         {
            this.stock_weapon_throw03 = Math.min(Math.max(this.stock_weapon_throw03 + VAL,0),99);
         }
         if(CLIP_ID == 224)
         {
            this.stock_weapon_throw04 = Math.min(Math.max(this.stock_weapon_throw04 + VAL,0),99);
         }
         if(CLIP_ID == 225)
         {
            this.stock_weapon_throw05 = Math.min(Math.max(this.stock_weapon_throw05 + VAL,0),99);
         }
         if(CLIP_ID == 226)
         {
            this.stock_weapon_throw06 = Math.min(Math.max(this.stock_weapon_throw06 + VAL,0),99);
         }
         if(CLIP_ID == 227)
         {
            this.stock_weapon_throw07 = Math.min(Math.max(this.stock_weapon_throw07 + VAL,0),99);
         }
         if(CLIP_ID == 228)
         {
            this.stock_weapon_throw08 = Math.min(Math.max(this.stock_weapon_throw08 + VAL,0),99);
         }
         if(CLIP_ID == 229)
         {
            this.stock_weapon_throw09 = Math.min(Math.max(this.stock_weapon_throw09 + VAL,0),99);
         }
         if(CLIP_ID == 230)
         {
            this.stock_weapon_throw10 = Math.min(Math.max(this.stock_weapon_throw10 + VAL,0),99);
         }
         if(CLIP_ID == 231)
         {
            this.stock_weapon_throw11 = Math.min(Math.max(this.stock_weapon_throw11 + VAL,0),99);
         }
         if(CLIP_ID == 232)
         {
            this.stock_weapon_throw12 = Math.min(Math.max(this.stock_weapon_throw12 + VAL,0),99);
         }
         if(CLIP_ID == 233)
         {
            this.stock_weapon_throw13 = Math.min(Math.max(this.stock_weapon_throw13 + VAL,0),99);
         }
         if(CLIP_ID == 234)
         {
            this.stock_weapon_throw14 = Math.min(Math.max(this.stock_weapon_throw14 + VAL,0),99);
         }
         if(CLIP_ID == 235)
         {
            this.stock_weapon_throw15 = Math.min(Math.max(this.stock_weapon_throw15 + VAL,0),99);
         }
         if(CLIP_ID == 236)
         {
            this.stock_weapon_throw16 = Math.min(Math.max(this.stock_weapon_throw16 + VAL,0),99);
         }
         if(CLIP_ID == 201)
         {
            this.stock_weapon_gun01 = Math.min(Math.max(this.stock_weapon_gun01 + VAL,0),99);
         }
         if(CLIP_ID == 202)
         {
            this.stock_weapon_gun02 = Math.min(Math.max(this.stock_weapon_gun02 + VAL,0),99);
         }
         if(CLIP_ID == 203)
         {
            this.stock_weapon_gun03 = Math.min(Math.max(this.stock_weapon_gun03 + VAL,0),99);
         }
         if(CLIP_ID == 204)
         {
            this.stock_weapon_gun04 = Math.min(Math.max(this.stock_weapon_gun04 + VAL,0),99);
         }
         if(CLIP_ID == 205)
         {
            this.stock_weapon_gun05 = Math.min(Math.max(this.stock_weapon_gun05 + VAL,0),99);
         }
         if(CLIP_ID == 206)
         {
            this.stock_weapon_gun06 = Math.min(Math.max(this.stock_weapon_gun06 + VAL,0),99);
         }
         if(CLIP_ID == 207)
         {
            this.stock_weapon_gun07 = Math.min(Math.max(this.stock_weapon_gun07 + VAL,0),99);
         }
         if(CLIP_ID == 208)
         {
            this.stock_weapon_gun08 = Math.min(Math.max(this.stock_weapon_gun08 + VAL,0),99);
         }
         if(CLIP_ID == 209)
         {
            this.stock_weapon_gun09 = Math.min(Math.max(this.stock_weapon_gun09 + VAL,0),99);
         }
         if(CLIP_ID == 210)
         {
            this.stock_weapon_gun10 = Math.min(Math.max(this.stock_weapon_gun10 + VAL,0),99);
         }
         if(CLIP_ID == 211)
         {
            this.stock_weapon_gun11 = Math.min(Math.max(this.stock_weapon_gun11 + VAL,0),99);
         }
         if(CLIP_ID == 212)
         {
            this.stock_weapon_gun12 = Math.min(Math.max(this.stock_weapon_gun12 + VAL,0),99);
         }
         if(CLIP_ID == 213)
         {
            this.stock_weapon_gun13 = Math.min(Math.max(this.stock_weapon_gun13 + VAL,0),99);
         }
         if(CLIP_ID == 214)
         {
            this.stock_weapon_gun14 = Math.min(Math.max(this.stock_weapon_gun14 + VAL,0),99);
         }
         if(CLIP_ID == 215)
         {
            this.stock_weapon_gun15 = Math.min(Math.max(this.stock_weapon_gun15 + VAL,0),99);
         }
         if(CLIP_ID == 216)
         {
            this.stock_weapon_gun16 = Math.min(Math.max(this.stock_weapon_gun16 + VAL,0),99);
         }
      }
      
      public function getItemClipID(CLIP_ID:int = 0) : int
      {
         if(CLIP_ID == 2)
         {
            return this.unlock_class01;
         }
         if(CLIP_ID == 3)
         {
            return this.unlock_class02;
         }
         if(CLIP_ID == 4)
         {
            return this.unlock_class03;
         }
         if(CLIP_ID == 5)
         {
            return this.unlock_class04;
         }
         if(CLIP_ID == 6)
         {
            return this.unlock_class05;
         }
         if(CLIP_ID == 7)
         {
            return this.unlock_class06;
         }
         if(CLIP_ID == 8)
         {
            return this.unlock_class07;
         }
         if(CLIP_ID == 9)
         {
            return this.unlock_class08;
         }
         if(CLIP_ID == 21)
         {
            return this.stock_skin01;
         }
         if(CLIP_ID == 22)
         {
            return this.stock_skin02;
         }
         if(CLIP_ID == 23)
         {
            return this.stock_skin03;
         }
         if(CLIP_ID == 24)
         {
            return this.stock_skin04;
         }
         if(CLIP_ID == 25)
         {
            return this.stock_skin05;
         }
         if(CLIP_ID == 26)
         {
            return this.stock_skin06;
         }
         if(CLIP_ID == 27)
         {
            return this.stock_skin07;
         }
         if(CLIP_ID == 28)
         {
            return this.stock_skin08;
         }
         if(CLIP_ID == 29)
         {
            return this.stock_skin09;
         }
         if(CLIP_ID == 30)
         {
            return this.stock_skin10;
         }
         if(CLIP_ID == 31)
         {
            return this.stock_skin11;
         }
         if(CLIP_ID == 32)
         {
            return this.stock_skin12;
         }
         if(CLIP_ID == 33)
         {
            return this.stock_skin13;
         }
         if(CLIP_ID == 34)
         {
            return this.stock_skin14;
         }
         if(CLIP_ID == 35)
         {
            return this.stock_skin15;
         }
         if(CLIP_ID == 36)
         {
            return this.stock_skin16;
         }
         if(CLIP_ID == 37)
         {
            return this.stock_skin17;
         }
         if(CLIP_ID == 38)
         {
            return this.stock_skin18;
         }
         if(CLIP_ID == 39)
         {
            return this.stock_skin19;
         }
         if(CLIP_ID == 40)
         {
            return this.stock_skin20;
         }
         if(CLIP_ID == 41)
         {
            return this.stock_skin21;
         }
         if(CLIP_ID == 42)
         {
            return this.stock_skin22;
         }
         if(CLIP_ID == 43)
         {
            return this.stock_skin23;
         }
         if(CLIP_ID == 44)
         {
            return this.stock_skin24;
         }
         if(CLIP_ID == 45)
         {
            return this.stock_skin25;
         }
         if(CLIP_ID == 46)
         {
            return this.stock_skin26;
         }
         if(CLIP_ID == 47)
         {
            return this.stock_skin27;
         }
         if(CLIP_ID == 48)
         {
            return this.stock_skin28;
         }
         if(CLIP_ID == 49)
         {
            return this.stock_skin29;
         }
         if(CLIP_ID == 50)
         {
            return this.stock_skin30;
         }
         if(CLIP_ID == 51)
         {
            return this.stock_skin31;
         }
         if(CLIP_ID == 52)
         {
            return this.stock_skin32;
         }
         if(CLIP_ID == 53)
         {
            return this.stock_skin33;
         }
         if(CLIP_ID == 54)
         {
            return this.stock_skin34;
         }
         if(CLIP_ID == 55)
         {
            return this.stock_skin35;
         }
         if(CLIP_ID == 56)
         {
            return this.stock_skin36;
         }
         if(CLIP_ID == 57)
         {
            return this.stock_skin37;
         }
         if(CLIP_ID == 58)
         {
            return this.stock_skin38;
         }
         if(CLIP_ID == 59)
         {
            return this.stock_skin39;
         }
         if(CLIP_ID == 60)
         {
            return this.stock_skin40;
         }
         if(CLIP_ID == 61)
         {
            return this.stock_skin41;
         }
         if(CLIP_ID == 62)
         {
            return this.stock_skin42;
         }
         if(CLIP_ID == 63)
         {
            return this.stock_skin43;
         }
         if(CLIP_ID == 64)
         {
            return this.stock_skin44;
         }
         if(CLIP_ID == 65)
         {
            return this.stock_skin45;
         }
         if(CLIP_ID == 66)
         {
            return this.stock_skin46;
         }
         if(CLIP_ID == 67)
         {
            return this.stock_skin47;
         }
         if(CLIP_ID == 68)
         {
            return this.stock_skin48;
         }
         if(CLIP_ID == 81)
         {
            return this.stock_weapon_sword01;
         }
         if(CLIP_ID == 82)
         {
            return this.stock_weapon_sword02;
         }
         if(CLIP_ID == 83)
         {
            return this.stock_weapon_sword03;
         }
         if(CLIP_ID == 84)
         {
            return this.stock_weapon_sword04;
         }
         if(CLIP_ID == 85)
         {
            return this.stock_weapon_sword05;
         }
         if(CLIP_ID == 86)
         {
            return this.stock_weapon_sword06;
         }
         if(CLIP_ID == 87)
         {
            return this.stock_weapon_sword07;
         }
         if(CLIP_ID == 88)
         {
            return this.stock_weapon_sword08;
         }
         if(CLIP_ID == 89)
         {
            return this.stock_weapon_sword09;
         }
         if(CLIP_ID == 90)
         {
            return this.stock_weapon_sword10;
         }
         if(CLIP_ID == 91)
         {
            return this.stock_weapon_sword11;
         }
         if(CLIP_ID == 92)
         {
            return this.stock_weapon_sword12;
         }
         if(CLIP_ID == 93)
         {
            return this.stock_weapon_sword13;
         }
         if(CLIP_ID == 94)
         {
            return this.stock_weapon_sword14;
         }
         if(CLIP_ID == 95)
         {
            return this.stock_weapon_sword15;
         }
         if(CLIP_ID == 96)
         {
            return this.stock_weapon_sword16;
         }
         if(CLIP_ID == 141)
         {
            return this.stock_weapon_bow01;
         }
         if(CLIP_ID == 142)
         {
            return this.stock_weapon_bow02;
         }
         if(CLIP_ID == 143)
         {
            return this.stock_weapon_bow03;
         }
         if(CLIP_ID == 144)
         {
            return this.stock_weapon_bow04;
         }
         if(CLIP_ID == 145)
         {
            return this.stock_weapon_bow05;
         }
         if(CLIP_ID == 146)
         {
            return this.stock_weapon_bow06;
         }
         if(CLIP_ID == 147)
         {
            return this.stock_weapon_bow07;
         }
         if(CLIP_ID == 148)
         {
            return this.stock_weapon_bow08;
         }
         if(CLIP_ID == 149)
         {
            return this.stock_weapon_bow09;
         }
         if(CLIP_ID == 150)
         {
            return this.stock_weapon_bow10;
         }
         if(CLIP_ID == 151)
         {
            return this.stock_weapon_bow11;
         }
         if(CLIP_ID == 152)
         {
            return this.stock_weapon_bow12;
         }
         if(CLIP_ID == 153)
         {
            return this.stock_weapon_bow13;
         }
         if(CLIP_ID == 154)
         {
            return this.stock_weapon_bow14;
         }
         if(CLIP_ID == 155)
         {
            return this.stock_weapon_bow15;
         }
         if(CLIP_ID == 156)
         {
            return this.stock_weapon_bow16;
         }
         if(CLIP_ID == 161)
         {
            return this.stock_weapon_staff01;
         }
         if(CLIP_ID == 162)
         {
            return this.stock_weapon_staff02;
         }
         if(CLIP_ID == 163)
         {
            return this.stock_weapon_staff03;
         }
         if(CLIP_ID == 164)
         {
            return this.stock_weapon_staff04;
         }
         if(CLIP_ID == 165)
         {
            return this.stock_weapon_staff05;
         }
         if(CLIP_ID == 166)
         {
            return this.stock_weapon_staff06;
         }
         if(CLIP_ID == 167)
         {
            return this.stock_weapon_staff07;
         }
         if(CLIP_ID == 168)
         {
            return this.stock_weapon_staff08;
         }
         if(CLIP_ID == 169)
         {
            return this.stock_weapon_staff09;
         }
         if(CLIP_ID == 170)
         {
            return this.stock_weapon_staff10;
         }
         if(CLIP_ID == 171)
         {
            return this.stock_weapon_staff11;
         }
         if(CLIP_ID == 172)
         {
            return this.stock_weapon_staff12;
         }
         if(CLIP_ID == 173)
         {
            return this.stock_weapon_staff13;
         }
         if(CLIP_ID == 174)
         {
            return this.stock_weapon_staff14;
         }
         if(CLIP_ID == 175)
         {
            return this.stock_weapon_staff15;
         }
         if(CLIP_ID == 176)
         {
            return this.stock_weapon_staff16;
         }
         if(CLIP_ID == 181)
         {
            return this.stock_weapon_glove01;
         }
         if(CLIP_ID == 182)
         {
            return this.stock_weapon_glove02;
         }
         if(CLIP_ID == 183)
         {
            return this.stock_weapon_glove03;
         }
         if(CLIP_ID == 184)
         {
            return this.stock_weapon_glove04;
         }
         if(CLIP_ID == 185)
         {
            return this.stock_weapon_glove05;
         }
         if(CLIP_ID == 186)
         {
            return this.stock_weapon_glove06;
         }
         if(CLIP_ID == 187)
         {
            return this.stock_weapon_glove07;
         }
         if(CLIP_ID == 188)
         {
            return this.stock_weapon_glove08;
         }
         if(CLIP_ID == 189)
         {
            return this.stock_weapon_glove09;
         }
         if(CLIP_ID == 190)
         {
            return this.stock_weapon_glove10;
         }
         if(CLIP_ID == 191)
         {
            return this.stock_weapon_glove11;
         }
         if(CLIP_ID == 192)
         {
            return this.stock_weapon_glove12;
         }
         if(CLIP_ID == 193)
         {
            return this.stock_weapon_glove13;
         }
         if(CLIP_ID == 194)
         {
            return this.stock_weapon_glove14;
         }
         if(CLIP_ID == 195)
         {
            return this.stock_weapon_glove15;
         }
         if(CLIP_ID == 196)
         {
            return this.stock_weapon_glove16;
         }
         if(CLIP_ID == 101)
         {
            return this.stock_weapon_greatsword01;
         }
         if(CLIP_ID == 102)
         {
            return this.stock_weapon_greatsword02;
         }
         if(CLIP_ID == 103)
         {
            return this.stock_weapon_greatsword03;
         }
         if(CLIP_ID == 104)
         {
            return this.stock_weapon_greatsword04;
         }
         if(CLIP_ID == 105)
         {
            return this.stock_weapon_greatsword05;
         }
         if(CLIP_ID == 106)
         {
            return this.stock_weapon_greatsword06;
         }
         if(CLIP_ID == 107)
         {
            return this.stock_weapon_greatsword07;
         }
         if(CLIP_ID == 108)
         {
            return this.stock_weapon_greatsword08;
         }
         if(CLIP_ID == 109)
         {
            return this.stock_weapon_greatsword09;
         }
         if(CLIP_ID == 110)
         {
            return this.stock_weapon_greatsword10;
         }
         if(CLIP_ID == 111)
         {
            return this.stock_weapon_greatsword11;
         }
         if(CLIP_ID == 112)
         {
            return this.stock_weapon_greatsword12;
         }
         if(CLIP_ID == 113)
         {
            return this.stock_weapon_greatsword13;
         }
         if(CLIP_ID == 114)
         {
            return this.stock_weapon_greatsword14;
         }
         if(CLIP_ID == 115)
         {
            return this.stock_weapon_greatsword15;
         }
         if(CLIP_ID == 116)
         {
            return this.stock_weapon_greatsword16;
         }
         if(CLIP_ID == 121)
         {
            return this.stock_weapon_spear01;
         }
         if(CLIP_ID == 122)
         {
            return this.stock_weapon_spear02;
         }
         if(CLIP_ID == 123)
         {
            return this.stock_weapon_spear03;
         }
         if(CLIP_ID == 124)
         {
            return this.stock_weapon_spear04;
         }
         if(CLIP_ID == 125)
         {
            return this.stock_weapon_spear05;
         }
         if(CLIP_ID == 126)
         {
            return this.stock_weapon_spear06;
         }
         if(CLIP_ID == 127)
         {
            return this.stock_weapon_spear07;
         }
         if(CLIP_ID == 128)
         {
            return this.stock_weapon_spear08;
         }
         if(CLIP_ID == 129)
         {
            return this.stock_weapon_spear09;
         }
         if(CLIP_ID == 130)
         {
            return this.stock_weapon_spear10;
         }
         if(CLIP_ID == 131)
         {
            return this.stock_weapon_spear11;
         }
         if(CLIP_ID == 132)
         {
            return this.stock_weapon_spear12;
         }
         if(CLIP_ID == 133)
         {
            return this.stock_weapon_spear13;
         }
         if(CLIP_ID == 134)
         {
            return this.stock_weapon_spear14;
         }
         if(CLIP_ID == 135)
         {
            return this.stock_weapon_spear15;
         }
         if(CLIP_ID == 136)
         {
            return this.stock_weapon_spear16;
         }
         if(CLIP_ID == 221)
         {
            return this.stock_weapon_throw01;
         }
         if(CLIP_ID == 222)
         {
            return this.stock_weapon_throw02;
         }
         if(CLIP_ID == 223)
         {
            return this.stock_weapon_throw03;
         }
         if(CLIP_ID == 224)
         {
            return this.stock_weapon_throw04;
         }
         if(CLIP_ID == 225)
         {
            return this.stock_weapon_throw05;
         }
         if(CLIP_ID == 226)
         {
            return this.stock_weapon_throw06;
         }
         if(CLIP_ID == 227)
         {
            return this.stock_weapon_throw07;
         }
         if(CLIP_ID == 228)
         {
            return this.stock_weapon_throw08;
         }
         if(CLIP_ID == 229)
         {
            return this.stock_weapon_throw09;
         }
         if(CLIP_ID == 230)
         {
            return this.stock_weapon_throw10;
         }
         if(CLIP_ID == 231)
         {
            return this.stock_weapon_throw11;
         }
         if(CLIP_ID == 232)
         {
            return this.stock_weapon_throw12;
         }
         if(CLIP_ID == 233)
         {
            return this.stock_weapon_throw13;
         }
         if(CLIP_ID == 234)
         {
            return this.stock_weapon_throw14;
         }
         if(CLIP_ID == 235)
         {
            return this.stock_weapon_throw15;
         }
         if(CLIP_ID == 236)
         {
            return this.stock_weapon_throw16;
         }
         if(CLIP_ID == 201)
         {
            return this.stock_weapon_gun01;
         }
         if(CLIP_ID == 202)
         {
            return this.stock_weapon_gun02;
         }
         if(CLIP_ID == 203)
         {
            return this.stock_weapon_gun03;
         }
         if(CLIP_ID == 204)
         {
            return this.stock_weapon_gun04;
         }
         if(CLIP_ID == 205)
         {
            return this.stock_weapon_gun05;
         }
         if(CLIP_ID == 206)
         {
            return this.stock_weapon_gun06;
         }
         if(CLIP_ID == 207)
         {
            return this.stock_weapon_gun07;
         }
         if(CLIP_ID == 208)
         {
            return this.stock_weapon_gun08;
         }
         if(CLIP_ID == 209)
         {
            return this.stock_weapon_gun09;
         }
         if(CLIP_ID == 210)
         {
            return this.stock_weapon_gun10;
         }
         if(CLIP_ID == 211)
         {
            return this.stock_weapon_gun11;
         }
         if(CLIP_ID == 212)
         {
            return this.stock_weapon_gun12;
         }
         if(CLIP_ID == 213)
         {
            return this.stock_weapon_gun13;
         }
         if(CLIP_ID == 214)
         {
            return this.stock_weapon_gun14;
         }
         if(CLIP_ID == 215)
         {
            return this.stock_weapon_gun15;
         }
         if(CLIP_ID == 216)
         {
            return this.stock_weapon_gun16;
         }
         return 0;
      }
      
      public function saveData() : *
      {
         var so:SharedObject = SharedObject.getLocal(this.saveFileName);
         so.data.game_save_counter = new int(Math.min(this.game_save_counter + 1,99));
         so.data.game_completed = new int(this.game_completed);
         so.data.bgm_volume = new Number(this.bgm_volume);
         so.data.se_volume = new Number(this.se_volume);
         so.data.stat_money = new int(this.stat_money);
         so.data.stat_total_battle = new int(this.stat_total_battle);
         so.data.opt_show_health_bar = new int(this.opt_show_health_bar);
         so.data.opt_quality_setup = new int(this.opt_quality_setup);
         so.data.help_battle = new int(this.help_battle);
         so.data.help_world = new int(this.help_world);
         so.data.help_upgrade = new int(this.help_upgrade);
         so.data.help_formation = new int(this.help_formation);
         so.data.achive_01 = new int(this.achive_01);
         so.data.achive_02 = new int(this.achive_02);
         so.data.achive_03 = new int(this.achive_03);
         so.data.achive_04 = new int(this.achive_04);
         so.data.achive_05 = new int(this.achive_05);
         so.data.achive_06 = new int(this.achive_06);
         so.data.achive_07 = new int(this.achive_07);
         so.data.achive_08 = new int(this.achive_08);
         so.data.achive_09 = new int(this.achive_09);
         so.data.achive_10 = new int(this.achive_10);
         so.data.mission_stage = new int(this.mission_stage);
         so.data.hero_1_competed = new int(this.hero_1_competed);
         so.data.hero_2_competed = new int(this.hero_2_competed);
         so.data.hero_3_competed = new int(this.hero_3_competed);
         so.data.hero_type = new int(this.hero_type);
         so.data.hero_boost_attack = new int(this.hero_boost_attack);
         so.data.hero_boost_defense = new int(this.hero_boost_defense);
         so.data.hero_boost_mana = new int(this.hero_boost_mana);
         so.data.hero_spell_arrow = new int(this.hero_spell_arrow);
         so.data.hero_spell_fire = new int(this.hero_spell_fire);
         so.data.hero_spell_ice = new int(this.hero_spell_ice);
         so.data.hero_spell_tornado = new int(this.hero_spell_tornado);
         so.data.hero_spell_thunder = new int(this.hero_spell_thunder);
         so.data.hero_spell_meteor = new int(this.hero_spell_meteor);
         so.data.hero_spell_poison = new int(this.hero_spell_poison);
         so.data.hero_spell_heal = new int(this.hero_spell_heal);
         so.data.hero_spell_regen = new int(this.hero_spell_regen);
         so.data.hero_spell_resurrect = new int(this.hero_spell_resurrect);
         so.data.hero_spell_haste = new int(this.hero_spell_haste);
         so.data.hero_spell_slow = new int(this.hero_spell_slow);
         so.data.hero_spell_stop = new int(this.hero_spell_stop);
         so.data.hero_spell_rage = new int(this.hero_spell_rage);
         so.data.hero_spell_shield = new int(this.hero_spell_shield);
         so.data.hero_spell_mini = new int(this.hero_spell_mini);
         so.data.hero_spell_giant = new int(this.hero_spell_giant);
         so.data.hero_spell_super = new int(this.hero_spell_super);
         so.data.char1_class = new int(this.char1_class);
         so.data.char1_skin = new int(this.char1_skin);
         so.data.char1_weapon = new int(this.char1_weapon);
         so.data.char2_class = new int(this.char2_class);
         so.data.char2_skin = new int(this.char2_skin);
         so.data.char2_weapon = new int(this.char2_weapon);
         so.data.char3_class = new int(this.char3_class);
         so.data.char3_skin = new int(this.char3_skin);
         so.data.char3_weapon = new int(this.char3_weapon);
         so.data.char4_class = new int(this.char4_class);
         so.data.char4_skin = new int(this.char4_skin);
         so.data.char4_weapon = new int(this.char4_weapon);
         so.data.unlock_class01 = new int(this.unlock_class01);
         so.data.unlock_class02 = new int(this.unlock_class02);
         so.data.unlock_class03 = new int(this.unlock_class03);
         so.data.unlock_class04 = new int(this.unlock_class04);
         so.data.unlock_class05 = new int(this.unlock_class05);
         so.data.unlock_class06 = new int(this.unlock_class06);
         so.data.unlock_class07 = new int(this.unlock_class07);
         so.data.unlock_class08 = new int(this.unlock_class08);
         so.data.unlock_class09 = new int(this.unlock_class09);
         so.data.unlock_class10 = new int(this.unlock_class10);
         so.data.unlock_class11 = new int(this.unlock_class11);
         so.data.unlock_class12 = new int(this.unlock_class12);
         so.data.unlock_class13 = new int(this.unlock_class13);
         so.data.unlock_class14 = new int(this.unlock_class14);
         so.data.unlock_class15 = new int(this.unlock_class15);
         so.data.unlock_class16 = new int(this.unlock_class16);
         so.data.stock_skin01 = new int(this.stock_skin01);
         so.data.stock_skin02 = new int(this.stock_skin02);
         so.data.stock_skin03 = new int(this.stock_skin03);
         so.data.stock_skin04 = new int(this.stock_skin04);
         so.data.stock_skin05 = new int(this.stock_skin05);
         so.data.stock_skin06 = new int(this.stock_skin06);
         so.data.stock_skin07 = new int(this.stock_skin07);
         so.data.stock_skin08 = new int(this.stock_skin08);
         so.data.stock_skin09 = new int(this.stock_skin09);
         so.data.stock_skin10 = new int(this.stock_skin10);
         so.data.stock_skin11 = new int(this.stock_skin11);
         so.data.stock_skin12 = new int(this.stock_skin12);
         so.data.stock_skin13 = new int(this.stock_skin13);
         so.data.stock_skin14 = new int(this.stock_skin14);
         so.data.stock_skin15 = new int(this.stock_skin15);
         so.data.stock_skin16 = new int(this.stock_skin16);
         so.data.stock_skin17 = new int(this.stock_skin17);
         so.data.stock_skin18 = new int(this.stock_skin18);
         so.data.stock_skin19 = new int(this.stock_skin19);
         so.data.stock_skin20 = new int(this.stock_skin20);
         so.data.stock_skin21 = new int(this.stock_skin21);
         so.data.stock_skin22 = new int(this.stock_skin22);
         so.data.stock_skin23 = new int(this.stock_skin23);
         so.data.stock_skin24 = new int(this.stock_skin24);
         so.data.stock_skin25 = new int(this.stock_skin25);
         so.data.stock_skin26 = new int(this.stock_skin26);
         so.data.stock_skin27 = new int(this.stock_skin27);
         so.data.stock_skin28 = new int(this.stock_skin28);
         so.data.stock_skin29 = new int(this.stock_skin29);
         so.data.stock_skin30 = new int(this.stock_skin30);
         so.data.stock_skin31 = new int(this.stock_skin31);
         so.data.stock_skin32 = new int(this.stock_skin32);
         so.data.stock_skin33 = new int(this.stock_skin33);
         so.data.stock_skin34 = new int(this.stock_skin34);
         so.data.stock_skin35 = new int(this.stock_skin35);
         so.data.stock_skin36 = new int(this.stock_skin36);
         so.data.stock_skin37 = new int(this.stock_skin37);
         so.data.stock_skin38 = new int(this.stock_skin38);
         so.data.stock_skin39 = new int(this.stock_skin39);
         so.data.stock_skin40 = new int(this.stock_skin40);
         so.data.stock_skin41 = new int(this.stock_skin41);
         so.data.stock_skin42 = new int(this.stock_skin42);
         so.data.stock_skin43 = new int(this.stock_skin43);
         so.data.stock_skin44 = new int(this.stock_skin44);
         so.data.stock_skin45 = new int(this.stock_skin45);
         so.data.stock_skin46 = new int(this.stock_skin46);
         so.data.stock_skin47 = new int(this.stock_skin47);
         so.data.stock_skin48 = new int(this.stock_skin48);
         so.data.stock_weapon_sword01 = new int(this.stock_weapon_sword01);
         so.data.stock_weapon_sword02 = new int(this.stock_weapon_sword02);
         so.data.stock_weapon_sword03 = new int(this.stock_weapon_sword03);
         so.data.stock_weapon_sword04 = new int(this.stock_weapon_sword04);
         so.data.stock_weapon_sword05 = new int(this.stock_weapon_sword05);
         so.data.stock_weapon_sword06 = new int(this.stock_weapon_sword06);
         so.data.stock_weapon_sword07 = new int(this.stock_weapon_sword07);
         so.data.stock_weapon_sword08 = new int(this.stock_weapon_sword08);
         so.data.stock_weapon_sword09 = new int(this.stock_weapon_sword09);
         so.data.stock_weapon_sword10 = new int(this.stock_weapon_sword10);
         so.data.stock_weapon_sword11 = new int(this.stock_weapon_sword11);
         so.data.stock_weapon_sword12 = new int(this.stock_weapon_sword12);
         so.data.stock_weapon_sword13 = new int(this.stock_weapon_sword13);
         so.data.stock_weapon_sword14 = new int(this.stock_weapon_sword14);
         so.data.stock_weapon_sword15 = new int(this.stock_weapon_sword15);
         so.data.stock_weapon_sword16 = new int(this.stock_weapon_sword16);
         so.data.stock_weapon_greatsword01 = new int(this.stock_weapon_greatsword01);
         so.data.stock_weapon_greatsword02 = new int(this.stock_weapon_greatsword02);
         so.data.stock_weapon_greatsword03 = new int(this.stock_weapon_greatsword03);
         so.data.stock_weapon_greatsword04 = new int(this.stock_weapon_greatsword04);
         so.data.stock_weapon_greatsword05 = new int(this.stock_weapon_greatsword05);
         so.data.stock_weapon_greatsword06 = new int(this.stock_weapon_greatsword06);
         so.data.stock_weapon_greatsword07 = new int(this.stock_weapon_greatsword07);
         so.data.stock_weapon_greatsword08 = new int(this.stock_weapon_greatsword08);
         so.data.stock_weapon_greatsword09 = new int(this.stock_weapon_greatsword09);
         so.data.stock_weapon_greatsword10 = new int(this.stock_weapon_greatsword10);
         so.data.stock_weapon_greatsword11 = new int(this.stock_weapon_greatsword11);
         so.data.stock_weapon_greatsword12 = new int(this.stock_weapon_greatsword12);
         so.data.stock_weapon_greatsword13 = new int(this.stock_weapon_greatsword13);
         so.data.stock_weapon_greatsword14 = new int(this.stock_weapon_greatsword14);
         so.data.stock_weapon_greatsword15 = new int(this.stock_weapon_greatsword15);
         so.data.stock_weapon_greatsword16 = new int(this.stock_weapon_greatsword16);
         so.data.stock_weapon_spear01 = new int(this.stock_weapon_spear01);
         so.data.stock_weapon_spear02 = new int(this.stock_weapon_spear02);
         so.data.stock_weapon_spear03 = new int(this.stock_weapon_spear03);
         so.data.stock_weapon_spear04 = new int(this.stock_weapon_spear04);
         so.data.stock_weapon_spear05 = new int(this.stock_weapon_spear05);
         so.data.stock_weapon_spear06 = new int(this.stock_weapon_spear06);
         so.data.stock_weapon_spear07 = new int(this.stock_weapon_spear07);
         so.data.stock_weapon_spear08 = new int(this.stock_weapon_spear08);
         so.data.stock_weapon_spear09 = new int(this.stock_weapon_spear09);
         so.data.stock_weapon_spear10 = new int(this.stock_weapon_spear10);
         so.data.stock_weapon_spear11 = new int(this.stock_weapon_spear11);
         so.data.stock_weapon_spear12 = new int(this.stock_weapon_spear12);
         so.data.stock_weapon_spear13 = new int(this.stock_weapon_spear13);
         so.data.stock_weapon_spear14 = new int(this.stock_weapon_spear14);
         so.data.stock_weapon_spear15 = new int(this.stock_weapon_spear15);
         so.data.stock_weapon_spear16 = new int(this.stock_weapon_spear16);
         so.data.stock_weapon_bow01 = new int(this.stock_weapon_bow01);
         so.data.stock_weapon_bow02 = new int(this.stock_weapon_bow02);
         so.data.stock_weapon_bow03 = new int(this.stock_weapon_bow03);
         so.data.stock_weapon_bow04 = new int(this.stock_weapon_bow04);
         so.data.stock_weapon_bow05 = new int(this.stock_weapon_bow05);
         so.data.stock_weapon_bow06 = new int(this.stock_weapon_bow06);
         so.data.stock_weapon_bow07 = new int(this.stock_weapon_bow07);
         so.data.stock_weapon_bow08 = new int(this.stock_weapon_bow08);
         so.data.stock_weapon_bow09 = new int(this.stock_weapon_bow09);
         so.data.stock_weapon_bow10 = new int(this.stock_weapon_bow10);
         so.data.stock_weapon_bow11 = new int(this.stock_weapon_bow11);
         so.data.stock_weapon_bow12 = new int(this.stock_weapon_bow12);
         so.data.stock_weapon_bow13 = new int(this.stock_weapon_bow13);
         so.data.stock_weapon_bow14 = new int(this.stock_weapon_bow14);
         so.data.stock_weapon_bow15 = new int(this.stock_weapon_bow15);
         so.data.stock_weapon_bow16 = new int(this.stock_weapon_bow16);
         so.data.stock_weapon_staff01 = new int(this.stock_weapon_staff01);
         so.data.stock_weapon_staff02 = new int(this.stock_weapon_staff02);
         so.data.stock_weapon_staff03 = new int(this.stock_weapon_staff03);
         so.data.stock_weapon_staff04 = new int(this.stock_weapon_staff04);
         so.data.stock_weapon_staff05 = new int(this.stock_weapon_staff05);
         so.data.stock_weapon_staff06 = new int(this.stock_weapon_staff06);
         so.data.stock_weapon_staff07 = new int(this.stock_weapon_staff07);
         so.data.stock_weapon_staff08 = new int(this.stock_weapon_staff08);
         so.data.stock_weapon_staff09 = new int(this.stock_weapon_staff09);
         so.data.stock_weapon_staff10 = new int(this.stock_weapon_staff10);
         so.data.stock_weapon_staff11 = new int(this.stock_weapon_staff11);
         so.data.stock_weapon_staff12 = new int(this.stock_weapon_staff12);
         so.data.stock_weapon_staff12 = new int(this.stock_weapon_staff12);
         so.data.stock_weapon_staff14 = new int(this.stock_weapon_staff14);
         so.data.stock_weapon_staff15 = new int(this.stock_weapon_staff15);
         so.data.stock_weapon_staff16 = new int(this.stock_weapon_staff16);
         so.data.stock_weapon_glove01 = new int(this.stock_weapon_glove01);
         so.data.stock_weapon_glove02 = new int(this.stock_weapon_glove02);
         so.data.stock_weapon_glove03 = new int(this.stock_weapon_glove03);
         so.data.stock_weapon_glove04 = new int(this.stock_weapon_glove04);
         so.data.stock_weapon_glove05 = new int(this.stock_weapon_glove05);
         so.data.stock_weapon_glove06 = new int(this.stock_weapon_glove06);
         so.data.stock_weapon_glove07 = new int(this.stock_weapon_glove07);
         so.data.stock_weapon_glove08 = new int(this.stock_weapon_glove08);
         so.data.stock_weapon_glove09 = new int(this.stock_weapon_glove09);
         so.data.stock_weapon_glove10 = new int(this.stock_weapon_glove10);
         so.data.stock_weapon_glove11 = new int(this.stock_weapon_glove11);
         so.data.stock_weapon_glove12 = new int(this.stock_weapon_glove12);
         so.data.stock_weapon_glove13 = new int(this.stock_weapon_glove13);
         so.data.stock_weapon_glove14 = new int(this.stock_weapon_glove14);
         so.data.stock_weapon_glove15 = new int(this.stock_weapon_glove15);
         so.data.stock_weapon_glove16 = new int(this.stock_weapon_glove16);
         so.data.stock_weapon_throw01 = new int(this.stock_weapon_throw01);
         so.data.stock_weapon_throw02 = new int(this.stock_weapon_throw02);
         so.data.stock_weapon_throw03 = new int(this.stock_weapon_throw03);
         so.data.stock_weapon_throw04 = new int(this.stock_weapon_throw04);
         so.data.stock_weapon_throw05 = new int(this.stock_weapon_throw05);
         so.data.stock_weapon_throw06 = new int(this.stock_weapon_throw06);
         so.data.stock_weapon_throw07 = new int(this.stock_weapon_throw07);
         so.data.stock_weapon_throw08 = new int(this.stock_weapon_throw08);
         so.data.stock_weapon_throw09 = new int(this.stock_weapon_throw09);
         so.data.stock_weapon_throw10 = new int(this.stock_weapon_throw10);
         so.data.stock_weapon_throw11 = new int(this.stock_weapon_throw11);
         so.data.stock_weapon_throw12 = new int(this.stock_weapon_throw12);
         so.data.stock_weapon_throw13 = new int(this.stock_weapon_throw13);
         so.data.stock_weapon_throw14 = new int(this.stock_weapon_throw14);
         so.data.stock_weapon_throw15 = new int(this.stock_weapon_throw15);
         so.data.stock_weapon_throw16 = new int(this.stock_weapon_throw16);
         so.data.stock_weapon_gun01 = new int(this.stock_weapon_gun01);
         so.data.stock_weapon_gun02 = new int(this.stock_weapon_gun02);
         so.data.stock_weapon_gun03 = new int(this.stock_weapon_gun03);
         so.data.stock_weapon_gun04 = new int(this.stock_weapon_gun04);
         so.data.stock_weapon_gun05 = new int(this.stock_weapon_gun05);
         so.data.stock_weapon_gun06 = new int(this.stock_weapon_gun06);
         so.data.stock_weapon_gun07 = new int(this.stock_weapon_gun07);
         so.data.stock_weapon_gun08 = new int(this.stock_weapon_gun08);
         so.data.stock_weapon_gun09 = new int(this.stock_weapon_gun09);
         so.data.stock_weapon_gun10 = new int(this.stock_weapon_gun10);
         so.data.stock_weapon_gun11 = new int(this.stock_weapon_gun11);
         so.data.stock_weapon_gun12 = new int(this.stock_weapon_gun12);
         so.data.stock_weapon_gun13 = new int(this.stock_weapon_gun13);
         so.data.stock_weapon_gun14 = new int(this.stock_weapon_gun14);
         so.data.stock_weapon_gun15 = new int(this.stock_weapon_gun15);
         so.data.stock_weapon_gun16 = new int(this.stock_weapon_gun16);
         so.flush();
         trace("save data ..... ok");
      }
      
      public function loadData() : Boolean
      {
         var so:SharedObject = null;
         so = SharedObject.getLocal(this.saveFileName);
         this.game_save_counter = so.data.game_save_counter;
         if(this.game_save_counter <= 0)
         {
            trace("load data .... failed !!");
            return false;
         }
         this.game_completed = so.data.game_completed;
         this.bgm_volume = so.data.bgm_volume;
         this.se_volume = so.data.se_volume;
         this.stat_money = so.data.stat_money;
         this.stat_total_battle = so.data.stat_total_battle;
         this.opt_show_health_bar = so.data.opt_show_health_bar;
         this.opt_quality_setup = so.data.opt_quality_setup;
         this.help_battle = so.data.help_battle;
         this.help_world = so.data.help_world;
         this.help_upgrade = so.data.help_upgrade;
         this.help_formation = so.data.help_formation;
         this.achive_01 = so.data.achive_01;
         this.achive_02 = so.data.achive_02;
         this.achive_03 = so.data.achive_03;
         this.achive_04 = so.data.achive_04;
         this.achive_05 = so.data.achive_05;
         this.achive_06 = so.data.achive_06;
         this.achive_07 = so.data.achive_07;
         this.achive_08 = so.data.achive_08;
         this.achive_09 = so.data.achive_09;
         this.achive_10 = so.data.achive_10;
         this.mission_stage = so.data.mission_stage;
         this.hero_1_competed = so.data.hero_1_competed;
         this.hero_2_competed = so.data.hero_2_competed;
         this.hero_3_competed = so.data.hero_3_competed;
         this.hero_type = so.data.hero_type;
         this.hero_boost_attack = so.data.hero_boost_attack;
         this.hero_boost_defense = so.data.hero_boost_defense;
         this.hero_boost_mana = so.data.hero_boost_mana;
         this.hero_spell_arrow = so.data.hero_spell_arrow;
         this.hero_spell_fire = so.data.hero_spell_fire;
         this.hero_spell_ice = so.data.hero_spell_ice;
         this.hero_spell_tornado = so.data.hero_spell_tornado;
         this.hero_spell_thunder = so.data.hero_spell_thunder;
         this.hero_spell_meteor = so.data.hero_spell_meteor;
         this.hero_spell_poison = so.data.hero_spell_poison;
         this.hero_spell_heal = so.data.hero_spell_heal;
         this.hero_spell_regen = so.data.hero_spell_regen;
         this.hero_spell_resurrect = so.data.hero_spell_resurrect;
         this.hero_spell_haste = so.data.hero_spell_haste;
         this.hero_spell_slow = so.data.hero_spell_slow;
         this.hero_spell_stop = so.data.hero_spell_stop;
         this.hero_spell_rage = so.data.hero_spell_rage;
         this.hero_spell_shield = so.data.hero_spell_shield;
         this.hero_spell_mini = so.data.hero_spell_mini;
         this.hero_spell_giant = so.data.hero_spell_giant;
         this.hero_spell_super = so.data.hero_spell_super;
         this.char1_class = so.data.char1_class;
         this.char1_skin = so.data.char1_skin;
         this.char1_weapon = so.data.char1_weapon;
         this.char2_class = so.data.char2_class;
         this.char2_skin = so.data.char2_skin;
         this.char2_weapon = so.data.char2_weapon;
         this.char3_class = so.data.char3_class;
         this.char3_skin = so.data.char3_skin;
         this.char3_weapon = so.data.char3_weapon;
         this.char4_class = so.data.char4_class;
         this.char4_skin = so.data.char4_skin;
         this.char4_weapon = so.data.char4_weapon;
         this.unlock_class01 = so.data.unlock_class01;
         this.unlock_class02 = so.data.unlock_class02;
         this.unlock_class03 = so.data.unlock_class03;
         this.unlock_class04 = so.data.unlock_class04;
         this.unlock_class05 = so.data.unlock_class05;
         this.unlock_class06 = so.data.unlock_class06;
         this.unlock_class07 = so.data.unlock_class07;
         this.unlock_class08 = so.data.unlock_class08;
         this.unlock_class09 = so.data.unlock_class09;
         this.unlock_class10 = so.data.unlock_class10;
         this.unlock_class11 = so.data.unlock_class11;
         this.unlock_class12 = so.data.unlock_class12;
         this.unlock_class13 = so.data.unlock_class13;
         this.unlock_class14 = so.data.unlock_class14;
         this.unlock_class15 = so.data.unlock_class15;
         this.unlock_class16 = so.data.unlock_class16;
         this.stock_skin01 = so.data.stock_skin01;
         this.stock_skin02 = so.data.stock_skin02;
         this.stock_skin03 = so.data.stock_skin03;
         this.stock_skin04 = so.data.stock_skin04;
         this.stock_skin05 = so.data.stock_skin05;
         this.stock_skin06 = so.data.stock_skin06;
         this.stock_skin07 = so.data.stock_skin07;
         this.stock_skin08 = so.data.stock_skin08;
         this.stock_skin09 = so.data.stock_skin09;
         this.stock_skin10 = so.data.stock_skin10;
         this.stock_skin11 = so.data.stock_skin11;
         this.stock_skin12 = so.data.stock_skin12;
         this.stock_skin13 = so.data.stock_skin13;
         this.stock_skin14 = so.data.stock_skin14;
         this.stock_skin15 = so.data.stock_skin15;
         this.stock_skin16 = so.data.stock_skin16;
         this.stock_skin17 = so.data.stock_skin17;
         this.stock_skin18 = so.data.stock_skin18;
         this.stock_skin19 = so.data.stock_skin19;
         this.stock_skin20 = so.data.stock_skin20;
         this.stock_skin21 = so.data.stock_skin21;
         this.stock_skin22 = so.data.stock_skin22;
         this.stock_skin23 = so.data.stock_skin23;
         this.stock_skin24 = so.data.stock_skin24;
         this.stock_skin25 = so.data.stock_skin25;
         this.stock_skin26 = so.data.stock_skin26;
         this.stock_skin27 = so.data.stock_skin27;
         this.stock_skin28 = so.data.stock_skin28;
         this.stock_skin29 = so.data.stock_skin29;
         this.stock_skin30 = so.data.stock_skin30;
         this.stock_skin31 = so.data.stock_skin31;
         this.stock_skin32 = so.data.stock_skin32;
         this.stock_skin33 = so.data.stock_skin33;
         this.stock_skin34 = so.data.stock_skin34;
         this.stock_skin35 = so.data.stock_skin35;
         this.stock_skin36 = so.data.stock_skin36;
         this.stock_skin37 = so.data.stock_skin37;
         this.stock_skin38 = so.data.stock_skin38;
         this.stock_skin39 = so.data.stock_skin39;
         this.stock_skin40 = so.data.stock_skin40;
         this.stock_skin41 = so.data.stock_skin41;
         this.stock_skin42 = so.data.stock_skin42;
         this.stock_skin43 = so.data.stock_skin43;
         this.stock_skin44 = so.data.stock_skin44;
         this.stock_skin45 = so.data.stock_skin45;
         this.stock_skin46 = so.data.stock_skin46;
         this.stock_skin47 = so.data.stock_skin47;
         this.stock_skin48 = so.data.stock_skin48;
         this.stock_weapon_sword01 = so.data.stock_weapon_sword01;
         this.stock_weapon_sword02 = so.data.stock_weapon_sword02;
         this.stock_weapon_sword03 = so.data.stock_weapon_sword03;
         this.stock_weapon_sword04 = so.data.stock_weapon_sword04;
         this.stock_weapon_sword05 = so.data.stock_weapon_sword05;
         this.stock_weapon_sword06 = so.data.stock_weapon_sword06;
         this.stock_weapon_sword07 = so.data.stock_weapon_sword07;
         this.stock_weapon_sword08 = so.data.stock_weapon_sword08;
         this.stock_weapon_sword09 = so.data.stock_weapon_sword09;
         this.stock_weapon_sword10 = so.data.stock_weapon_sword10;
         this.stock_weapon_sword11 = so.data.stock_weapon_sword11;
         this.stock_weapon_sword12 = so.data.stock_weapon_sword12;
         this.stock_weapon_sword13 = so.data.stock_weapon_sword13;
         this.stock_weapon_sword14 = so.data.stock_weapon_sword14;
         this.stock_weapon_sword15 = so.data.stock_weapon_sword15;
         this.stock_weapon_sword16 = so.data.stock_weapon_sword16;
         this.stock_weapon_greatsword01 = so.data.stock_weapon_greatsword01;
         this.stock_weapon_greatsword02 = so.data.stock_weapon_greatsword02;
         this.stock_weapon_greatsword03 = so.data.stock_weapon_greatsword03;
         this.stock_weapon_greatsword04 = so.data.stock_weapon_greatsword04;
         this.stock_weapon_greatsword05 = so.data.stock_weapon_greatsword05;
         this.stock_weapon_greatsword06 = so.data.stock_weapon_greatsword06;
         this.stock_weapon_greatsword07 = so.data.stock_weapon_greatsword07;
         this.stock_weapon_greatsword08 = so.data.stock_weapon_greatsword08;
         this.stock_weapon_greatsword09 = so.data.stock_weapon_greatsword09;
         this.stock_weapon_greatsword10 = so.data.stock_weapon_greatsword10;
         this.stock_weapon_greatsword11 = so.data.stock_weapon_greatsword11;
         this.stock_weapon_greatsword12 = so.data.stock_weapon_greatsword12;
         this.stock_weapon_greatsword13 = so.data.stock_weapon_greatsword13;
         this.stock_weapon_greatsword14 = so.data.stock_weapon_greatsword14;
         this.stock_weapon_greatsword15 = so.data.stock_weapon_greatsword15;
         this.stock_weapon_greatsword16 = so.data.stock_weapon_greatsword16;
         this.stock_weapon_spear01 = so.data.stock_weapon_spear01;
         this.stock_weapon_spear02 = so.data.stock_weapon_spear02;
         this.stock_weapon_spear03 = so.data.stock_weapon_spear03;
         this.stock_weapon_spear04 = so.data.stock_weapon_spear04;
         this.stock_weapon_spear05 = so.data.stock_weapon_spear05;
         this.stock_weapon_spear06 = so.data.stock_weapon_spear06;
         this.stock_weapon_spear07 = so.data.stock_weapon_spear07;
         this.stock_weapon_spear08 = so.data.stock_weapon_spear08;
         this.stock_weapon_spear09 = so.data.stock_weapon_spear09;
         this.stock_weapon_spear10 = so.data.stock_weapon_spear10;
         this.stock_weapon_spear11 = so.data.stock_weapon_spear11;
         this.stock_weapon_spear12 = so.data.stock_weapon_spear12;
         this.stock_weapon_spear13 = so.data.stock_weapon_spear13;
         this.stock_weapon_spear14 = so.data.stock_weapon_spear14;
         this.stock_weapon_spear15 = so.data.stock_weapon_spear15;
         this.stock_weapon_spear16 = so.data.stock_weapon_spear16;
         this.stock_weapon_bow01 = so.data.stock_weapon_bow01;
         this.stock_weapon_bow02 = so.data.stock_weapon_bow02;
         this.stock_weapon_bow03 = so.data.stock_weapon_bow03;
         this.stock_weapon_bow04 = so.data.stock_weapon_bow04;
         this.stock_weapon_bow05 = so.data.stock_weapon_bow05;
         this.stock_weapon_bow06 = so.data.stock_weapon_bow06;
         this.stock_weapon_bow07 = so.data.stock_weapon_bow07;
         this.stock_weapon_bow08 = so.data.stock_weapon_bow08;
         this.stock_weapon_bow09 = so.data.stock_weapon_bow09;
         this.stock_weapon_bow10 = so.data.stock_weapon_bow10;
         this.stock_weapon_bow11 = so.data.stock_weapon_bow11;
         this.stock_weapon_bow12 = so.data.stock_weapon_bow12;
         this.stock_weapon_bow13 = so.data.stock_weapon_bow13;
         this.stock_weapon_bow14 = so.data.stock_weapon_bow14;
         this.stock_weapon_bow15 = so.data.stock_weapon_bow15;
         this.stock_weapon_bow16 = so.data.stock_weapon_bow16;
         this.stock_weapon_staff01 = so.data.stock_weapon_staff01;
         this.stock_weapon_staff02 = so.data.stock_weapon_staff02;
         this.stock_weapon_staff03 = so.data.stock_weapon_staff03;
         this.stock_weapon_staff04 = so.data.stock_weapon_staff04;
         this.stock_weapon_staff05 = so.data.stock_weapon_staff05;
         this.stock_weapon_staff06 = so.data.stock_weapon_staff06;
         this.stock_weapon_staff07 = so.data.stock_weapon_staff07;
         this.stock_weapon_staff08 = so.data.stock_weapon_staff08;
         this.stock_weapon_staff09 = so.data.stock_weapon_staff09;
         this.stock_weapon_staff10 = so.data.stock_weapon_staff10;
         this.stock_weapon_staff11 = so.data.stock_weapon_staff11;
         this.stock_weapon_staff12 = so.data.stock_weapon_staff12;
         this.stock_weapon_staff12 = so.data.stock_weapon_staff12;
         this.stock_weapon_staff14 = so.data.stock_weapon_staff14;
         this.stock_weapon_staff15 = so.data.stock_weapon_staff15;
         this.stock_weapon_staff16 = so.data.stock_weapon_staff16;
         this.stock_weapon_glove01 = so.data.stock_weapon_glove01;
         this.stock_weapon_glove02 = so.data.stock_weapon_glove02;
         this.stock_weapon_glove03 = so.data.stock_weapon_glove03;
         this.stock_weapon_glove04 = so.data.stock_weapon_glove04;
         this.stock_weapon_glove05 = so.data.stock_weapon_glove05;
         this.stock_weapon_glove06 = so.data.stock_weapon_glove06;
         this.stock_weapon_glove07 = so.data.stock_weapon_glove07;
         this.stock_weapon_glove08 = so.data.stock_weapon_glove08;
         this.stock_weapon_glove09 = so.data.stock_weapon_glove09;
         this.stock_weapon_glove10 = so.data.stock_weapon_glove10;
         this.stock_weapon_glove11 = so.data.stock_weapon_glove11;
         this.stock_weapon_glove12 = so.data.stock_weapon_glove12;
         this.stock_weapon_glove13 = so.data.stock_weapon_glove13;
         this.stock_weapon_glove14 = so.data.stock_weapon_glove14;
         this.stock_weapon_glove15 = so.data.stock_weapon_glove15;
         this.stock_weapon_glove16 = so.data.stock_weapon_glove16;
         this.stock_weapon_throw01 = so.data.stock_weapon_throw01;
         this.stock_weapon_throw02 = so.data.stock_weapon_throw02;
         this.stock_weapon_throw03 = so.data.stock_weapon_throw03;
         this.stock_weapon_throw04 = so.data.stock_weapon_throw04;
         this.stock_weapon_throw05 = so.data.stock_weapon_throw05;
         this.stock_weapon_throw06 = so.data.stock_weapon_throw06;
         this.stock_weapon_throw07 = so.data.stock_weapon_throw07;
         this.stock_weapon_throw08 = so.data.stock_weapon_throw08;
         this.stock_weapon_throw09 = so.data.stock_weapon_throw09;
         this.stock_weapon_throw10 = so.data.stock_weapon_throw10;
         this.stock_weapon_throw11 = so.data.stock_weapon_throw11;
         this.stock_weapon_throw12 = so.data.stock_weapon_throw12;
         this.stock_weapon_throw13 = so.data.stock_weapon_throw13;
         this.stock_weapon_throw14 = so.data.stock_weapon_throw14;
         this.stock_weapon_throw15 = so.data.stock_weapon_throw15;
         this.stock_weapon_throw16 = so.data.stock_weapon_throw16;
         this.stock_weapon_gun01 = so.data.stock_weapon_gun01;
         this.stock_weapon_gun02 = so.data.stock_weapon_gun02;
         this.stock_weapon_gun03 = so.data.stock_weapon_gun03;
         this.stock_weapon_gun04 = so.data.stock_weapon_gun04;
         this.stock_weapon_gun05 = so.data.stock_weapon_gun05;
         this.stock_weapon_gun06 = so.data.stock_weapon_gun06;
         this.stock_weapon_gun07 = so.data.stock_weapon_gun07;
         this.stock_weapon_gun08 = so.data.stock_weapon_gun08;
         this.stock_weapon_gun09 = so.data.stock_weapon_gun09;
         this.stock_weapon_gun10 = so.data.stock_weapon_gun10;
         this.stock_weapon_gun11 = so.data.stock_weapon_gun11;
         this.stock_weapon_gun12 = so.data.stock_weapon_gun12;
         this.stock_weapon_gun13 = so.data.stock_weapon_gun13;
         this.stock_weapon_gun14 = so.data.stock_weapon_gun14;
         this.stock_weapon_gun15 = so.data.stock_weapon_gun15;
         this.stock_weapon_gun16 = so.data.stock_weapon_gun16;
         trace("load data ..... ok");
         return true;
      }
      
      public function deleteData() : *
      {
         this.resetGameData();
         this.game_save_counter = -1;
         this.saveData();
      }
   }
}

