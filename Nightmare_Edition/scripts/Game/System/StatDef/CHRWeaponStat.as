package Game.System.StatDef
{
   public class CHRWeaponStat
   {
      
      public var id:int = 0;
      
      public var name:String = "";
      
      public var desc:String = "";
      
      public var health:int = 0;
      
      public var power:int = 0;
      
      public var melee:Number = 0;
      
      public var slash:Number = 0;
      
      public var pierce:Number = 0;
      
      public var fire:Number = 0;
      
      public var ice:Number = 0;
      
      public var thunder:Number = 0;
      
      public var speed:Number = 0;
      
      public var element:int = 0;
      
      public var addStun:Number = 0.5;
      
      public var addCritical:Number = 0.2;
      
      public var addFreeze:Number = 0;
      
      public var addFly:Number = 0;
      
      public var addPoison:Number = 0;
      
      public var addDrain:Number = 0;
      
      public var addMini:Number = 0;
      
      public var addSlow:Number = 0;
      
      public var addStop:Number = 0;
      
      public var costMana:int = 0;
      
      public var costPrice:int = 0;
      
      public var soundSwing:String = "";
      
      public var soundHit:String = "";
      
      public var CLIP_FRAME_ID:int = 0;
      
      public function CHRWeaponStat(TYPE:int = 1, ID:int = 1)
      {
         super();
         this.init(TYPE,ID);
      }
      
      public function getElementName() : String
      {
         if(this.element == 1)
         {
            return String("melee");
         }
         if(this.element == 2)
         {
            return String("slash");
         }
         if(this.element == 3)
         {
            return String("pierce");
         }
         if(this.element == 4)
         {
            return String("fire");
         }
         if(this.element == 5)
         {
            return String("ice");
         }
         if(this.element == 6)
         {
            return String("thunder");
         }
         return String("void");
      }
      
      public function init(TYPE:int = 1, ID:int = 1) : *
      {
         this.id = ID;
         this.health = 0;
         this.power = 0;
         this.melee = 0;
         this.slash = 0;
         this.pierce = 0;
         this.fire = 0;
         this.ice = 0;
         this.thunder = 0;
         this.speed = 0;
         this.costMana = 0;
         this.costPrice = 0;
         this.addStun = 0.5;
         this.addCritical = 0.2;
         this.addFreeze = 0;
         this.addFly = 0;
         this.addPoison = 0;
         if(TYPE == 1)
         {
            this.initSword(ID);
         }
         else if(TYPE == 2)
         {
            this.initBow(ID);
         }
         else if(TYPE == 3)
         {
            this.initStaff(ID);
         }
         else if(TYPE == 4)
         {
            this.initGlove(ID);
         }
         else if(TYPE == 5)
         {
            this.initSpear(ID);
         }
         else if(TYPE == 6)
         {
            this.initGreatSword(ID);
         }
         else if(TYPE == 7)
         {
            this.initThrow(ID);
         }
         else if(TYPE == 8)
         {
            this.initGun(ID);
         }
         else if(TYPE >= 100 && TYPE <= 199)
         {
            this.initUndeadATK(ID);
         }
         else if(TYPE >= 200 && TYPE <= 299)
         {
            this.initTowerATK(ID);
         }
         else if(TYPE == 666)
         {
            this.initBossATK(ID);
         }
         else if(TYPE >= 1000 && TYPE <= 1099)
         {
            this.initHeroATK(ID);
         }
         else if(TYPE >= 2000 && TYPE <= 9999)
         {
            this.initDummyATK(ID);
         }
      }
      
      private function initSword(ID:int = 1) : *
      {
         this.soundSwing = "swing_sword";
         this.soundHit = "hit_sword";
         if(ID == 1)
         {
            this.soundHit = "hit_sword_wood";
            this.name = "Wooden Sword";
            this.power = 25;
            this.element = 2;
            this.costMana = 0;
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 81;
         }
         else if(ID == 2)
         {
            this.name = "Iron Sword";
            this.power = 30;
            this.element = 2;
            this.costMana = 1;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 82;
         }
         else if(ID == 3)
         {
            this.name = "Bloody Axe";
            this.power = 50;
            this.element = 2;
            this.costMana = 2;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 83;
         }
         else if(ID == 4)
         {
            this.name = "Gun Blade";
            this.power = 75;
            this.element = 2;
            this.costMana = 4;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 84;
         }
         else if(ID == 5)
         {
            this.name = "Giant Axe";
            this.power = 90;
            this.element = 2;
            this.addCritical = 0.5;
            this.desc = "Effect: Crit Up";
            this.costMana = 5;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 85;
         }
         else if(ID == 6)
         {
            this.name = "Chain Saw";
            this.power = 110;
            this.element = 2;
            this.costMana = 6;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 86;
         }
         else if(ID == 7)
         {
            this.soundSwing = "swing_lightsaber";
            this.name = "Light Saber Z";
            this.power = 120;
            this.element = 3;
            this.addDrain = 1;
            this.desc = "Effect: Drain";
            this.costMana = 7;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 87;
         }
         else if(ID == 8)
         {
            this.name = "Smasher";
            this.power = 150;
            this.element = 1;
            this.costMana = 8;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 88;
         }
         else if(ID == 9)
         {
            this.name = "Thunder Sword";
            this.power = 170;
            this.element = 6;
            this.costMana = 10;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 89;
         }
         else if(ID == 10)
         {
            this.name = "Crusader Sword";
            this.power = 230;
            this.element = 2;
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 90;
         }
         else if(ID == 11)
         {
            this.name = "Mythical Sword";
            this.power = 265;
            this.element = 2;
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 91;
         }
         else if(ID == 12)
         {
            this.soundHit = "hit_sword2";
            this.name = "Hell Breaker";
            this.power = 666;
            this.element = 2;
            this.addStun = 1;
            this.desc = "Effect: Stun Up";
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 92;
         }
      }
      
      private function initBow(ID:int = 1) : *
      {
         this.addStun = 0.3;
         this.addCritical = 0.1;
         this.soundSwing = "shoot_arrow";
         this.soundHit = "hit_arrow";
         if(ID == 1)
         {
            this.name = "Purple Bow";
            this.power = 10;
            this.element = 3;
            this.costMana = 0;
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 141;
         }
         else if(ID == 2)
         {
            this.name = "Green Bow";
            this.power = 15;
            this.element = 3;
            this.costMana = 1;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 142;
         }
         else if(ID == 3)
         {
            this.name = "Snake Bow";
            this.power = 30;
            this.element = 4;
            this.costMana = 2;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 143;
         }
         else if(ID == 4)
         {
            this.name = "Ancient Bow";
            this.power = 35;
            this.element = 3;
            this.costMana = 4;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 144;
         }
         else if(ID == 5)
         {
            this.name = "Octopus Bow";
            this.power = 42;
            this.element = 4;
            this.costMana = 5;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 145;
         }
         else if(ID == 6)
         {
            this.name = "Thunder Bolt";
            this.power = 60;
            this.element = 6;
            this.costMana = 6;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 146;
         }
         else if(ID == 7)
         {
            this.name = "Bone Bow";
            this.power = 90;
            this.element = 3;
            this.costMana = 7;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 147;
         }
         else if(ID == 8)
         {
            this.name = "Sylvian Bow";
            this.power = 120;
            this.element = 5;
            this.addFreeze = 0.5;
            this.desc = "Effect: Freeze";
            this.costMana = 8;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 148;
         }
         else if(ID == 9)
         {
            this.name = "Machine Bow";
            this.power = 132;
            this.element = 1;
            this.costMana = 10;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 149;
         }
         else if(ID == 10)
         {
            this.name = "Razor Claw";
            this.power = 165;
            this.element = 3;
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 150;
         }
         else if(ID == 11)
         {
            this.name = "Cupid Bow";
            this.power = 205;
            this.element = 3;
            this.addStop = 0.5;
            this.desc = "Effect: Slow";
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 151;
         }
         else if(ID == 12)
         {
            this.name = "Grand Stinger";
            this.power = 300;
            this.element = 3;
            this.addStop = 0.5;
            this.desc = "Effect: Stop";
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 152;
         }
      }
      
      private function initStaff(ID:int = 1) : *
      {
         this.addStun = 0.3;
         this.addCritical = 0.1;
         this.soundSwing = "swing_staff";
         this.soundHit = "hit_spell";
         if(ID == 1)
         {
            this.name = "Wood Staff";
            this.power = 20;
            this.element = 5;
            this.costMana = 0;
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 161;
         }
         else if(ID == 2)
         {
            this.name = "Cursed Staff";
            this.power = 35;
            this.element = 4;
            this.costMana = 1;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 162;
         }
         else if(ID == 3)
         {
            this.name = "Moon Staff";
            this.power = 50;
            this.element = 2;
            this.costMana = 2;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 163;
         }
         else if(ID == 4)
         {
            this.name = "Crown Staff";
            this.power = 70;
            this.element = 6;
            this.costMana = 4;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 164;
         }
         else if(ID == 5)
         {
            this.name = "Star Rod";
            this.power = 75;
            this.element = 1;
            this.costMana = 5;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 165;
         }
         else if(ID == 6)
         {
            this.name = "Eagle Staff";
            this.power = 95;
            this.element = 6;
            this.costMana = 6;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 166;
         }
         else if(ID == 7)
         {
            this.name = "Beholder Staff";
            this.power = 125;
            this.element = 3;
            this.addStop = 0.5;
            this.desc = "Effect: Stop";
            this.costMana = 7;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 167;
         }
         else if(ID == 8)
         {
            this.name = "Skull Staff";
            this.power = 165;
            this.element = 4;
            this.costMana = 8;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 168;
         }
         else if(ID == 9)
         {
            this.name = "Orb Staff";
            this.power = 180;
            this.element = 1;
            this.costMana = 10;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 169;
         }
         else if(ID == 10)
         {
            this.name = "Crystal Staff";
            this.power = 210;
            this.element = 5;
            this.addFreeze = 0.5;
            this.desc = "Effect: Freeze";
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 170;
         }
         else if(ID == 11)
         {
            this.name = "Fire Dragon Staff";
            this.power = 235;
            this.element = 4;
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 171;
         }
         else if(ID == 12)
         {
            this.name = "Lollipop";
            this.power = 100;
            this.element = 6;
            this.addMini = 0.5;
            this.desc = "Effect: Mini";
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 172;
         }
      }
      
      private function initGlove(ID:int = 1) : *
      {
         this.soundSwing = "swing_punch";
         this.soundHit = "hit_punch";
         if(ID == 1)
         {
            this.name = "Cestus";
            this.power = 40;
            this.element = 1;
            this.costMana = 0;
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 181;
         }
         else if(ID == 2)
         {
            this.name = "Spiked Knuckles";
            this.power = 55;
            this.element = 3;
            this.costMana = 1;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 182;
         }
         else if(ID == 3)
         {
            this.name = "Iron Gauntlet";
            this.power = 70;
            this.element = 1;
            this.costMana = 2;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 183;
         }
         else if(ID == 4)
         {
            this.name = "Sweeper";
            this.power = 90;
            this.element = 2;
            this.costMana = 4;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 184;
         }
         else if(ID == 5)
         {
            this.name = "Metal Fist";
            this.power = 100;
            this.element = 1;
            this.costMana = 5;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 185;
         }
         else if(ID == 6)
         {
            this.name = "Ripper";
            this.power = 120;
            this.element = 3;
            this.costMana = 6;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 186;
         }
         else if(ID == 7)
         {
            this.name = "Slicer";
            this.power = 140;
            this.element = 2;
            this.addDrain = 1;
            this.desc = "Effect: Drain";
            this.costMana = 7;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 187;
         }
         else if(ID == 8)
         {
            this.name = "Champion Glove";
            this.power = 175;
            this.element = 1;
            this.addCritical = 0.5;
            this.desc = "Effect: Crit Up";
            this.costMana = 8;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 188;
         }
         else if(ID == 9)
         {
            this.name = "Gold Hand";
            this.power = 200;
            this.element = 1;
            this.costMana = 10;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 189;
         }
         else if(ID == 10)
         {
            this.name = "Dragon Claw";
            this.power = 260;
            this.element = 4;
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 190;
         }
         else if(ID == 11)
         {
            this.name = "Devil Fist";
            this.power = 295;
            this.element = 1;
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 191;
         }
         else if(ID == 12)
         {
            this.name = "Cat\'s Paw";
            this.power = 277;
            this.element = 1;
            this.addCritical = 1;
            this.desc = "Effect: Crit 100%";
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 192;
         }
      }
      
      private function initSpear(ID:int = 1) : *
      {
         this.soundSwing = "swing_spear";
         this.soundHit = "hit_spear";
         if(ID == 1)
         {
            this.name = "Soldier Spear";
            this.power = 35;
            this.element = 3;
            this.costMana = 0;
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 121;
         }
         else if(ID == 2)
         {
            this.name = "Iron Pike";
            this.power = 50;
            this.element = 3;
            this.costMana = 1;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 122;
         }
         else if(ID == 3)
         {
            this.name = "Glaive";
            this.power = 60;
            this.element = 3;
            this.costMana = 2;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 123;
         }
         else if(ID == 4)
         {
            this.name = "Guan Dao";
            this.power = 70;
            this.element = 2;
            this.costMana = 4;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 124;
         }
         else if(ID == 5)
         {
            this.name = "Tepoztopilli";
            this.power = 85;
            this.element = 3;
            this.costMana = 5;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 125;
         }
         else if(ID == 6)
         {
            this.name = "Bardiche";
            this.power = 100;
            this.element = 5;
            this.costMana = 6;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 126;
         }
         else if(ID == 7)
         {
            this.name = "Cross Spear";
            this.power = 135;
            this.element = 3;
            this.addStun = 1;
            this.desc = "Effect: Stun Up";
            this.costMana = 7;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 127;
         }
         else if(ID == 8)
         {
            this.name = "Trident";
            this.power = 165;
            this.element = 6;
            this.costMana = 8;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 128;
         }
         else if(ID == 9)
         {
            this.name = "Mighty Lance";
            this.power = 190;
            this.element = 3;
            this.costMana = 10;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 129;
         }
         else if(ID == 10)
         {
            this.name = "Mythical Spear";
            this.power = 245;
            this.element = 3;
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 130;
         }
         else if(ID == 11)
         {
            this.name = "Crystal Spear";
            this.power = 280;
            this.element = 5;
            this.addFreeze = 0.5;
            this.desc = "Effect: Freeze";
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 131;
         }
         else if(ID == 12)
         {
            this.name = "Drill Arm";
            this.power = 450;
            this.element = 3;
            this.addCritical = 0.5;
            this.desc = "Effect: Crit Up";
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 132;
         }
      }
      
      private function initGreatSword(ID:int = 1) : *
      {
         this.soundSwing = "swing_sword2";
         this.soundHit = "hit_sword2";
         if(ID == 1)
         {
            this.name = "Long Sword";
            this.power = 50;
            this.element = 2;
            this.costMana = 0;
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 101;
         }
         else if(ID == 2)
         {
            this.name = "Poison Sword";
            this.power = 60;
            this.element = 2;
            this.addPoison = 0.5;
            this.desc = "Effect: poison";
            this.costMana = 1;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 102;
         }
         else if(ID == 3)
         {
            this.name = "Katana";
            this.power = 90;
            this.element = 2;
            this.costMana = 2;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 103;
         }
         else if(ID == 4)
         {
            this.name = "Flamberge";
            this.power = 120;
            this.element = 4;
            this.costMana = 4;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 104;
         }
         else if(ID == 5)
         {
            this.name = "Dragon Sword";
            this.power = 150;
            this.element = 2;
            this.costMana = 5;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 105;
         }
         else if(ID == 6)
         {
            this.name = "Heavy Metal";
            this.power = 160;
            this.element = 1;
            this.addCritical = 0.5;
            this.desc = "Effect: Crit Up";
            this.costMana = 6;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 106;
         }
         else if(ID == 7)
         {
            this.name = "Keris";
            this.power = 195;
            this.element = 6;
            this.costMana = 7;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 107;
         }
         else if(ID == 8)
         {
            this.name = "Ragnarok";
            this.power = 200;
            this.element = 4;
            this.costMana = 8;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 108;
         }
         else if(ID == 9)
         {
            this.name = "Sword Fish";
            this.power = 225;
            this.element = 3;
            this.addPoison = 1;
            this.desc = "Effect: poison";
            this.costMana = 10;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 109;
         }
         else if(ID == 10)
         {
            this.name = "Templar Sword";
            this.power = 250;
            this.element = 2;
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 110;
         }
         else if(ID == 11)
         {
            this.name = "Caladbolg";
            this.power = 290;
            this.element = 2;
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 111;
         }
         else if(ID == 12)
         {
            this.name = "Evil Dragon\'s Jaw";
            this.power = 950;
            this.element = 2;
            this.addDrain = 1;
            this.desc = "Effect: Drain";
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 112;
         }
      }
      
      private function initThrow(ID:int = 1) : *
      {
         this.soundSwing = "shoot_throw";
         this.soundHit = "hit_stone";
         if(ID == 1)
         {
            this.name = "Egg";
            this.power = 5;
            this.element = 1;
            this.costMana = 0;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 221;
         }
         else if(ID == 2)
         {
            this.name = "Pot";
            this.power = 30;
            this.element = 1;
            this.costMana = 1;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 222;
         }
         else if(ID == 3)
         {
            this.soundHit = "explode_tnt";
            this.name = "Grenade";
            this.power = 65;
            this.element = 5;
            this.addFly = 0.4;
            this.costMana = 4;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 223;
         }
         else if(ID == 4)
         {
            this.name = "Radio";
            this.power = 50;
            this.element = 1;
            this.costMana = 2;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 224;
         }
         else if(ID == 5)
         {
            this.soundHit = "explode_gas";
            this.name = "Poison Tube";
            this.power = 60;
            this.addPoison = 0.5;
            this.desc = "Effect: Poison";
            this.costMana = 5;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 225;
         }
         else if(ID == 6)
         {
            this.soundHit = "explode_tnt";
            this.name = "TNT";
            this.power = 135;
            this.element = 5;
            this.addFly = 0.6;
            this.costMana = 8;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 226;
         }
         else if(ID == 7)
         {
            this.soundHit = "explode_gas";
            this.name = "Skunk";
            this.power = 100;
            this.element = 1;
            this.addPoison = 0.5;
            this.desc = "Effect: Poison";
            this.costMana = 7;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 227;
         }
         else if(ID == 8)
         {
            this.name = "Rock";
            this.power = 130;
            this.element = 1;
            this.costMana = 10;
            this.costPrice = 18000;
            this.CLIP_FRAME_ID = 228;
         }
         else if(ID == 9)
         {
            this.soundHit = "explode_tnt";
            this.name = "Dynamite";
            this.power = 175;
            this.element = 5;
            this.addFly = 0.8;
            this.costMana = 12;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 229;
         }
         else if(ID == 10)
         {
            this.soundHit = "explode_gas";
            this.name = "Melon";
            this.power = 205;
            this.element = 1;
            this.addPoison = 0.5;
            this.desc = "Effect: Poison";
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 230;
         }
         else if(ID == 11)
         {
            this.name = "TV";
            this.power = 230;
            this.element = 1;
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 231;
         }
         else if(ID == 12)
         {
            this.soundHit = "explode_nuclear";
            this.name = "Atomic Bomb";
            this.power = 500;
            this.element = 5;
            this.addFly = 1;
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 232;
         }
      }
      
      private function initGun(ID:int = 1) : *
      {
         this.soundSwing = "shoot_gun";
         this.soundHit = "hit_gun";
         if(ID == 1)
         {
            this.name = "Pistol";
            this.power = 25;
            this.element = 3;
            this.costMana = 0;
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 201;
         }
         else if(ID == 2)
         {
            this.name = "Uzi";
            this.power = 30;
            this.element = 3;
            this.costMana = 1;
            this.costPrice = 2000;
            this.CLIP_FRAME_ID = 202;
         }
         else if(ID == 3)
         {
            this.name = "Magnum";
            this.power = 45;
            this.element = 4;
            this.costMana = 2;
            this.costPrice = 3000;
            this.CLIP_FRAME_ID = 203;
         }
         else if(ID == 4)
         {
            this.soundSwing = "shoot_shotgun";
            this.name = "Sewed-off Shotgun";
            this.power = 65;
            this.element = 3;
            this.costMana = 4;
            this.costPrice = 5000;
            this.CLIP_FRAME_ID = 204;
         }
         else if(ID == 5)
         {
            this.soundSwing = "shoot_beam";
            this.name = "Pulse Gun";
            this.power = 80;
            this.element = 6;
            this.costMana = 5;
            this.costPrice = 7500;
            this.CLIP_FRAME_ID = 205;
         }
         else if(ID == 6)
         {
            this.name = "Power Sniper";
            this.power = 110;
            this.element = 3;
            this.costMana = 6;
            this.costPrice = 9000;
            this.CLIP_FRAME_ID = 206;
         }
         else if(ID == 7)
         {
            this.name = "Kalashnikov";
            this.power = 155;
            this.element = 3;
            this.costMana = 7;
            this.costPrice = 12000;
            this.CLIP_FRAME_ID = 207;
         }
         else if(ID == 8)
         {
            this.name = "Assault Rifle";
            this.power = 175;
            this.element = 3;
            this.costMana = 8;
            this.costPrice = 15000;
            this.CLIP_FRAME_ID = 208;
         }
         else if(ID == 9)
         {
            this.soundSwing = "shoot_shotgun";
            this.name = "Super Shotgun";
            this.power = 215;
            this.element = 3;
            this.costMana = 10;
            this.costPrice = 50000;
            this.CLIP_FRAME_ID = 209;
         }
         else if(ID == 10)
         {
            this.soundSwing = "shoot_machinegun";
            this.name = "Machine Gun";
            this.power = 220;
            this.element = 3;
            this.costMana = 12;
            this.costPrice = 70000;
            this.CLIP_FRAME_ID = 210;
         }
         else if(ID == 11)
         {
            this.soundSwing = "shoot_beam";
            this.name = "Beam Rifle";
            this.power = 250;
            this.element = 3;
            this.costMana = 15;
            this.costPrice = 90000;
            this.CLIP_FRAME_ID = 211;
         }
         else if(ID == 12)
         {
            this.soundSwing = "shoot_beam";
            this.name = "Martian Ray";
            this.power = 195;
            this.element = 3;
            this.addFreeze = 0.5;
            this.desc = "Effect: Freeze";
            this.costMana = 20;
            this.costPrice = 450000;
            this.CLIP_FRAME_ID = 212;
         }
      }
      
      private function initUndeadATK(ID:int = 1) : *
      {
         this.soundSwing = "swing_punch";
         this.soundHit = "hit_punch";
         if(ID == 100)
         {
            this.name = "none";
            this.power = 0;
            this.element = 1;
         }
         else if(ID == 101)
         {
            this.name = "ATK Zombie";
            this.power = 20;
            this.element = 1;
         }
         else if(ID == 102)
         {
            this.name = "ATK Skeleton";
            this.power = 50;
            this.element = 1;
         }
         else if(ID == 103)
         {
            this.name = "ATK Ghost";
            this.power = 80;
            this.element = 0;
         }
      }
      
      private function initTowerATK(ID:int = 1) : *
      {
         this.soundSwing = "shoot_tower";
         this.soundHit = "hit_arrow";
         if(ID == 200)
         {
            this.name = "none";
            this.power = 0;
            this.element = 1;
         }
         else if(ID == 201)
         {
            this.name = "ATK Bird Tower Arrow";
            this.power = 30;
            this.element = 3;
         }
         else if(ID == 202)
         {
            this.name = "ATK Snake Bolt";
            this.power = 70;
            this.element = 6;
         }
         else if(ID == 203)
         {
            this.name = "ATK Monkey Fire Blast";
            this.power = 100;
            this.element = 4;
         }
      }
      
      private function initBossATK(ID:int = 1) : *
      {
         this.soundSwing = "falling_ground";
         this.soundHit = "explode_nuclear";
         this.name = "none";
         this.power = 100;
         this.element = 1;
      }
      
      private function initHeroATK(ID:int = 1) : *
      {
         this.soundSwing = "swing_punch";
         this.soundHit = "hit_punch";
         if(ID == 1000)
         {
            this.name = "ATK lv0";
            this.power = 0;
            this.element = 1;
         }
         else if(ID == 1001)
         {
            this.name = "ATK lv1";
            this.power = 50;
            this.element = 1;
         }
         else if(ID == 1002)
         {
            this.name = "ATK lv2";
            this.power = 100;
            this.element = 1;
         }
         else if(ID == 1003)
         {
            this.name = "ATK lv3";
            this.power = 200;
            this.element = 0;
         }
      }
      
      private function initDummyATK(ID:int = 1) : *
      {
         this.soundSwing = "shoot_tower";
         this.soundHit = "hit_arrow";
         this.name = "dummy";
         this.power = 0;
         this.element = 0;
      }
      
      public function init2(CLIP_ID:int = 81) : *
      {
         if(CLIP_ID == 81)
         {
            this.init(1,1);
         }
         if(CLIP_ID == 82)
         {
            this.init(1,2);
         }
         if(CLIP_ID == 83)
         {
            this.init(1,3);
         }
         if(CLIP_ID == 84)
         {
            this.init(1,4);
         }
         if(CLIP_ID == 85)
         {
            this.init(1,5);
         }
         if(CLIP_ID == 86)
         {
            this.init(1,6);
         }
         if(CLIP_ID == 87)
         {
            this.init(1,7);
         }
         if(CLIP_ID == 88)
         {
            this.init(1,8);
         }
         if(CLIP_ID == 89)
         {
            this.init(1,9);
         }
         if(CLIP_ID == 90)
         {
            this.init(1,10);
         }
         if(CLIP_ID == 91)
         {
            this.init(1,11);
         }
         if(CLIP_ID == 92)
         {
            this.init(1,12);
         }
         if(CLIP_ID == 141)
         {
            this.init(2,1);
         }
         if(CLIP_ID == 142)
         {
            this.init(2,2);
         }
         if(CLIP_ID == 143)
         {
            this.init(2,3);
         }
         if(CLIP_ID == 144)
         {
            this.init(2,4);
         }
         if(CLIP_ID == 145)
         {
            this.init(2,5);
         }
         if(CLIP_ID == 146)
         {
            this.init(2,6);
         }
         if(CLIP_ID == 147)
         {
            this.init(2,7);
         }
         if(CLIP_ID == 148)
         {
            this.init(2,8);
         }
         if(CLIP_ID == 149)
         {
            this.init(2,9);
         }
         if(CLIP_ID == 150)
         {
            this.init(2,10);
         }
         if(CLIP_ID == 151)
         {
            this.init(2,11);
         }
         if(CLIP_ID == 152)
         {
            this.init(2,12);
         }
         if(CLIP_ID == 161)
         {
            this.init(3,1);
         }
         if(CLIP_ID == 162)
         {
            this.init(3,2);
         }
         if(CLIP_ID == 163)
         {
            this.init(3,3);
         }
         if(CLIP_ID == 164)
         {
            this.init(3,4);
         }
         if(CLIP_ID == 165)
         {
            this.init(3,5);
         }
         if(CLIP_ID == 166)
         {
            this.init(3,6);
         }
         if(CLIP_ID == 167)
         {
            this.init(3,7);
         }
         if(CLIP_ID == 168)
         {
            this.init(3,8);
         }
         if(CLIP_ID == 169)
         {
            this.init(3,9);
         }
         if(CLIP_ID == 170)
         {
            this.init(3,10);
         }
         if(CLIP_ID == 171)
         {
            this.init(3,11);
         }
         if(CLIP_ID == 172)
         {
            this.init(3,12);
         }
         if(CLIP_ID == 181)
         {
            this.init(4,1);
         }
         if(CLIP_ID == 182)
         {
            this.init(4,2);
         }
         if(CLIP_ID == 183)
         {
            this.init(4,3);
         }
         if(CLIP_ID == 184)
         {
            this.init(4,4);
         }
         if(CLIP_ID == 185)
         {
            this.init(4,5);
         }
         if(CLIP_ID == 186)
         {
            this.init(4,6);
         }
         if(CLIP_ID == 187)
         {
            this.init(4,7);
         }
         if(CLIP_ID == 188)
         {
            this.init(4,8);
         }
         if(CLIP_ID == 189)
         {
            this.init(4,9);
         }
         if(CLIP_ID == 190)
         {
            this.init(4,10);
         }
         if(CLIP_ID == 191)
         {
            this.init(4,11);
         }
         if(CLIP_ID == 192)
         {
            this.init(4,12);
         }
         if(CLIP_ID == 121)
         {
            this.init(5,1);
         }
         if(CLIP_ID == 122)
         {
            this.init(5,2);
         }
         if(CLIP_ID == 123)
         {
            this.init(5,3);
         }
         if(CLIP_ID == 124)
         {
            this.init(5,4);
         }
         if(CLIP_ID == 125)
         {
            this.init(5,5);
         }
         if(CLIP_ID == 126)
         {
            this.init(5,6);
         }
         if(CLIP_ID == 127)
         {
            this.init(5,7);
         }
         if(CLIP_ID == 128)
         {
            this.init(5,8);
         }
         if(CLIP_ID == 129)
         {
            this.init(5,9);
         }
         if(CLIP_ID == 130)
         {
            this.init(5,10);
         }
         if(CLIP_ID == 131)
         {
            this.init(5,11);
         }
         if(CLIP_ID == 132)
         {
            this.init(5,12);
         }
         if(CLIP_ID == 101)
         {
            this.init(6,1);
         }
         if(CLIP_ID == 102)
         {
            this.init(6,2);
         }
         if(CLIP_ID == 103)
         {
            this.init(6,3);
         }
         if(CLIP_ID == 104)
         {
            this.init(6,4);
         }
         if(CLIP_ID == 105)
         {
            this.init(6,5);
         }
         if(CLIP_ID == 106)
         {
            this.init(6,6);
         }
         if(CLIP_ID == 107)
         {
            this.init(6,7);
         }
         if(CLIP_ID == 108)
         {
            this.init(6,8);
         }
         if(CLIP_ID == 109)
         {
            this.init(6,9);
         }
         if(CLIP_ID == 110)
         {
            this.init(6,10);
         }
         if(CLIP_ID == 111)
         {
            this.init(6,11);
         }
         if(CLIP_ID == 112)
         {
            this.init(6,12);
         }
         if(CLIP_ID == 221)
         {
            this.init(7,1);
         }
         if(CLIP_ID == 222)
         {
            this.init(7,2);
         }
         if(CLIP_ID == 223)
         {
            this.init(7,3);
         }
         if(CLIP_ID == 224)
         {
            this.init(7,4);
         }
         if(CLIP_ID == 225)
         {
            this.init(7,5);
         }
         if(CLIP_ID == 226)
         {
            this.init(7,6);
         }
         if(CLIP_ID == 227)
         {
            this.init(7,7);
         }
         if(CLIP_ID == 228)
         {
            this.init(7,8);
         }
         if(CLIP_ID == 229)
         {
            this.init(7,9);
         }
         if(CLIP_ID == 230)
         {
            this.init(7,10);
         }
         if(CLIP_ID == 231)
         {
            this.init(7,11);
         }
         if(CLIP_ID == 232)
         {
            this.init(7,12);
         }
         if(CLIP_ID == 201)
         {
            this.init(8,1);
         }
         if(CLIP_ID == 202)
         {
            this.init(8,2);
         }
         if(CLIP_ID == 203)
         {
            this.init(8,3);
         }
         if(CLIP_ID == 204)
         {
            this.init(8,4);
         }
         if(CLIP_ID == 205)
         {
            this.init(8,5);
         }
         if(CLIP_ID == 206)
         {
            this.init(8,6);
         }
         if(CLIP_ID == 207)
         {
            this.init(8,7);
         }
         if(CLIP_ID == 208)
         {
            this.init(8,8);
         }
         if(CLIP_ID == 209)
         {
            this.init(8,9);
         }
         if(CLIP_ID == 210)
         {
            this.init(8,10);
         }
         if(CLIP_ID == 211)
         {
            this.init(8,11);
         }
         if(CLIP_ID == 212)
         {
            this.init(8,12);
         }
      }
   }
}

