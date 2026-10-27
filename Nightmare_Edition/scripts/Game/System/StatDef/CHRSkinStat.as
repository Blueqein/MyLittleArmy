package Game.System.StatDef
{
   public class CHRSkinStat
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
      
      public var costMana:int = 0;
      
      public var costPrice:int = 0;
      
      public var soundVoice:String = "";
      
      public var CLIP_FRAME_ID:int = 0;
      
      public function CHRSkinStat(ID:int = 1)
      {
         super();
         this.init(ID);
      }
      
      public function init(ID:int = 1) : *
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
         if(ID == 1)
         {
            this.name = "Peasant";
            this.health = 100;
            this.power = 5;
            this.costMana = 0;
            this.costPrice = 1000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 21;
         }
         else if(ID == 2)
         {
            this.name = "Ronin";
            this.health = 150;
            this.power = 10;
            this.slash = 0.2;
            this.speed = 0.2;
            this.costMana = 2;
            this.costPrice = 2500;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 22;
         }
         else if(ID == 3)
         {
            this.name = "Screamer";
            this.health = 160;
            this.power = 15;
            this.speed = 0.5;
            this.costMana = 3;
            this.costPrice = 2500;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 23;
         }
         else if(ID == 4)
         {
            this.name = "Mercenary";
            this.health = 200;
            this.power = 20;
            this.speed = 0.2;
            this.costMana = 4;
            this.costPrice = 2500;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 24;
         }
         else if(ID == 5)
         {
            this.name = "Spectre";
            this.health = 210;
            this.power = 15;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.speed = 0.5;
            this.costMana = 5;
            this.costPrice = 5000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 25;
         }
         else if(ID == 6)
         {
            this.name = "Boxer Champ";
            this.health = 350;
            this.power = 50;
            this.melee = 0.5;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.fire = -0.1;
            this.ice = -0.1;
            this.thunder = -0.1;
            this.speed = 0.3;
            this.costMana = 7;
            this.costPrice = 7500;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 26;
         }
         else if(ID == 7)
         {
            this.name = "Mike T";
            this.health = 390;
            this.power = 60;
            this.melee = 0.6;
            this.speed = 0.4;
            this.costMana = 8;
            this.costPrice = 7500;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 27;
         }
         else if(ID == 8)
         {
            this.name = "Demon";
            this.health = 666;
            this.power = 66;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.5;
            this.costMana = 15;
            this.costPrice = 15000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 28;
         }
         else if(ID == 9)
         {
            this.name = "Gatotkaca";
            this.health = 700;
            this.power = 60;
            this.fire = 0.3;
            this.ice = 0.3;
            this.thunder = 0.3;
            this.speed = 1;
            this.costMana = 15;
            this.costPrice = 15000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 29;
         }
         else if(ID == 10)
         {
            this.name = "Cyborg";
            this.health = 650;
            this.power = 70;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.thunder = -0.3;
            this.speed = 1;
            this.costMana = 15;
            this.costPrice = 15000;
            this.soundVoice = "alien";
            this.CLIP_FRAME_ID = 30;
         }
         else if(ID == 11)
         {
            this.name = "N Tank";
            this.health = 550;
            this.power = 50;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.speed = 0.5;
            this.costMana = 10;
            this.costPrice = 250000;
            this.soundVoice = "alien";
            this.CLIP_FRAME_ID = 31;
         }
         else if(ID == 12)
         {
            this.name = "Super ALG";
            this.health = 1200;
            this.power = 100;
            this.melee = 0.3;
            this.slash = 0.3;
            this.pierce = 0.3;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 1.2;
            this.costMana = 20;
            this.costPrice = 250000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 32;
         }
         else if(ID == 13)
         {
            this.name = "Scholar";
            this.health = 150;
            this.melee = 0.2;
            this.speed = 0;
            this.soundVoice = "male";
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 33;
         }
         else if(ID == 14)
         {
            this.name = "Totem Warrior";
            this.health = 180;
            this.power = 5;
            this.melee = 0.1;
            this.slash = 0.1;
            this.pierce = 0.1;
            this.speed = 0.1;
            this.costMana = 2;
            this.costPrice = 2500;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 34;
         }
         else if(ID == 15)
         {
            this.name = "Viking";
            this.health = 300;
            this.power = 15;
            this.melee = 0.2;
            this.slash = 0.2;
            this.costMana = 5;
            this.costPrice = 5000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 35;
         }
         else if(ID == 16)
         {
            this.name = "Spartan";
            this.health = 450;
            this.power = 20;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.speed = 0.1;
            this.costMana = 7;
            this.costPrice = 5000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 36;
         }
         else if(ID == 17)
         {
            this.name = "Samurai";
            this.health = 400;
            this.power = 35;
            this.speed = 0.2;
            this.costMana = 8;
            this.costPrice = 5000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 37;
         }
         else if(ID == 18)
         {
            this.name = "Troll";
            this.health = 500;
            this.power = 25;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.fire = -0.2;
            this.speed = 0.3;
            this.costMana = 10;
            this.costPrice = 7500;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 38;
         }
         else if(ID == 19)
         {
            this.name = "Valkyrie";
            this.health = 750;
            this.power = 50;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.5;
            this.costMana = 12;
            this.costPrice = 7500;
            this.soundVoice = "girl";
            this.CLIP_FRAME_ID = 39;
         }
         else if(ID == 20)
         {
            this.name = "Angel";
            this.health = 900;
            this.power = 60;
            this.melee = 0.3;
            this.slash = 0.3;
            this.pierce = 0.3;
            this.fire = 0.3;
            this.ice = 0.3;
            this.thunder = 0.3;
            this.speed = 0.5;
            this.costMana = 15;
            this.costPrice = 15000;
            this.soundVoice = "girl2";
            this.CLIP_FRAME_ID = 40;
         }
         else if(ID == 21)
         {
            this.name = "Armor Knight";
            this.health = 850;
            this.power = 30;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.5;
            this.fire = 0.2;
            this.ice = -0.2;
            this.thunder = -0.2;
            this.speed = 0.2;
            this.costMana = 15;
            this.costPrice = 15000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 41;
         }
         else if(ID == 22)
         {
            this.name = "Templar Knight";
            this.health = 1000;
            this.power = 40;
            this.melee = 0.3;
            this.slash = 0.5;
            this.pierce = 0.3;
            this.costMana = 20;
            this.costPrice = 15000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 42;
         }
         else if(ID == 23)
         {
            this.name = "Elephant";
            this.health = 1500;
            this.power = 10;
            this.melee = 0.5;
            this.speed = -0.2;
            this.costMana = 20;
            this.costPrice = 250000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 43;
         }
         else if(ID == 24)
         {
            this.name = "P-Bot";
            this.health = 1350;
            this.power = 30;
            this.melee = 0.5;
            this.slash = 0.5;
            this.pierce = 0.5;
            this.fire = -0.3;
            this.ice = -0.3;
            this.thunder = -0.3;
            this.speed = -0.1;
            this.costMana = 20;
            this.costPrice = 250000;
            this.soundVoice = "alien";
            this.CLIP_FRAME_ID = 44;
         }
         else if(ID == 25)
         {
            this.name = "Novice";
            this.health = 50;
            this.power = 5;
            this.speed = 0.3;
            this.soundVoice = "male";
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 45;
         }
         else if(ID == 26)
         {
            this.name = "Ranger";
            this.health = 100;
            this.power = 10;
            this.speed = 0.4;
            this.costMana = 2;
            this.costPrice = 2500;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 46;
         }
         else if(ID == 27)
         {
            this.name = "Bad girl";
            this.health = 120;
            this.power = 10;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.5;
            this.costMana = 3;
            this.costPrice = 2500;
            this.soundVoice = "girl";
            this.CLIP_FRAME_ID = 47;
         }
         else if(ID == 28)
         {
            this.name = "Pirate";
            this.health = 150;
            this.power = 20;
            this.melee = 0.1;
            this.slash = 0.1;
            this.pierce = 0.1;
            this.fire = 0.1;
            this.ice = 0.1;
            this.thunder = 0.1;
            this.speed = 0.4;
            this.costMana = 4;
            this.costPrice = 2500;
            this.soundVoice = "girl2";
            this.CLIP_FRAME_ID = 48;
         }
         else if(ID == 29)
         {
            this.name = "Slasher";
            this.health = 200;
            this.power = 25;
            this.fire = -0.5;
            this.ice = 0.5;
            this.speed = 0.6;
            this.costMana = 5;
            this.costPrice = 2500;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 49;
         }
         else if(ID == 30)
         {
            this.name = "Shinobi";
            this.health = 350;
            this.power = 40;
            this.speed = 1;
            this.costMana = 8;
            this.costPrice = 5000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 50;
         }
         else if(ID == 31)
         {
            this.name = "Tuxedo";
            this.health = 420;
            this.power = 45;
            this.melee = -0.2;
            this.slash = -0.2;
            this.pierce = -0.2;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.9;
            this.costMana = 9;
            this.costPrice = 5000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 51;
         }
         else if(ID == 32)
         {
            this.name = "Kunoichi";
            this.health = 320;
            this.power = 45;
            this.speed = 1.2;
            this.costMana = 8;
            this.costPrice = 5000;
            this.soundVoice = "girl2";
            this.CLIP_FRAME_ID = 52;
         }
         else if(ID == 33)
         {
            this.name = "Kangroo";
            this.health = 470;
            this.power = 50;
            this.melee = 0.1;
            this.slash = 0.1;
            this.pierce = 0.1;
            this.fire = 0.1;
            this.ice = 0.1;
            this.thunder = 0.1;
            this.speed = 0.7;
            this.costMana = 10;
            this.costPrice = 5000;
            this.soundVoice = "girl";
            this.CLIP_FRAME_ID = 53;
         }
         else if(ID == 34)
         {
            this.name = "Joker";
            this.health = 500;
            this.power = 55;
            this.speed = 1.5;
            this.costMana = 15;
            this.costPrice = 15000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 54;
         }
         else if(ID == 35)
         {
            this.name = "Kong\'s Alien";
            this.health = 530;
            this.power = 35;
            this.melee = -0.1;
            this.slash = -0.1;
            this.pierce = -0.1;
            this.speed = 2.5;
            this.costMana = 15;
            this.costPrice = 250000;
            this.soundVoice = "alien";
            this.CLIP_FRAME_ID = 55;
         }
         else if(ID == 36)
         {
            this.name = "Super Flasher";
            this.health = 700;
            this.power = 60;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 4;
            this.costMana = 20;
            this.costPrice = 250000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 56;
         }
         else if(ID == 37)
         {
            this.name = "Hippie";
            this.health = 100;
            this.melee = -0.2;
            this.slash = -0.2;
            this.pierce = -0.2;
            this.fire = 0.9;
            this.soundVoice = "male";
            this.costPrice = 1000;
            this.CLIP_FRAME_ID = 57;
         }
         else if(ID == 38)
         {
            this.name = "Merman";
            this.health = 200;
            this.power = 5;
            this.fire = 0.3;
            this.ice = 0.5;
            this.thunder = -0.3;
            this.costMana = 2;
            this.costPrice = 2500;
            this.soundVoice = "girl";
            this.CLIP_FRAME_ID = 58;
         }
         else if(ID == 39)
         {
            this.name = "Maid";
            this.health = 160;
            this.power = 5;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.1;
            this.costMana = 2;
            this.costPrice = 2500;
            this.soundVoice = "girl2";
            this.CLIP_FRAME_ID = 59;
         }
         else if(ID == 40)
         {
            this.name = "Handsome";
            this.health = 240;
            this.power = 10;
            this.melee = 0.2;
            this.speed = 0.2;
            this.costMana = 3;
            this.costPrice = 2500;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 60;
         }
         else if(ID == 41)
         {
            this.name = "Hermit";
            this.health = 250;
            this.power = 15;
            this.melee = -0.2;
            this.slash = -0.2;
            this.pierce = -0.2;
            this.fire = 0.3;
            this.ice = 0.3;
            this.thunder = 0.3;
            this.speed = 0.2;
            this.costMana = 5;
            this.costPrice = 2500;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 61;
         }
         else if(ID == 42)
         {
            this.name = "Kong\'s Warrior";
            this.health = 320;
            this.power = 20;
            this.pierce = 0.5;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.5;
            this.costMana = 7;
            this.costPrice = 5000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 62;
         }
         else if(ID == 43)
         {
            this.name = "Scout";
            this.health = 290;
            this.power = 50;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.5;
            this.costMana = 8;
            this.costPrice = 5000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 63;
         }
         else if(ID == 44)
         {
            this.name = "Chef";
            this.health = 600;
            this.power = 25;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = -0.1;
            this.costMana = 12;
            this.costPrice = 15000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 64;
         }
         else if(ID == 45)
         {
            this.name = "Mafia";
            this.health = 300;
            this.power = 60;
            this.melee = -0.1;
            this.slash = -0.1;
            this.pierce = -0.1;
            this.speed = 0.2;
            this.costMana = 10;
            this.costPrice = 15000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 65;
         }
         else if(ID == 46)
         {
            this.name = "War Chief";
            this.health = 470;
            this.power = 35;
            this.melee = 0.2;
            this.slash = 0.2;
            this.pierce = 0.2;
            this.fire = 0.2;
            this.ice = 0.2;
            this.thunder = 0.2;
            this.speed = 0.3;
            this.costMana = 12;
            this.costPrice = 15000;
            this.soundVoice = "male2";
            this.CLIP_FRAME_ID = 66;
         }
         else if(ID == 47)
         {
            this.name = "Noble";
            this.health = 460;
            this.power = 5;
            this.melee = -0.2;
            this.slash = -0.2;
            this.pierce = -0.2;
            this.fire = -0.2;
            this.ice = -0.2;
            this.thunder = -0.2;
            this.speed = 0.2;
            this.costMana = 8;
            this.costPrice = 15000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 67;
         }
         else if(ID == 48)
         {
            this.name = "Egypt";
            this.health = 800;
            this.power = 40;
            this.melee = -0.2;
            this.slash = -0.2;
            this.pierce = -0.2;
            this.fire = 0.5;
            this.ice = 0.5;
            this.thunder = 0.5;
            this.costMana = 20;
            this.costPrice = 250000;
            this.soundVoice = "male";
            this.CLIP_FRAME_ID = 68;
         }
         else if(ID == 1000)
         {
            this.name = "DEF lv0";
            this.health = 0;
            this.power = 50;
         }
         else if(ID == 1001)
         {
            this.name = "DEF lv1";
            this.health = 1000;
            this.power = 50;
         }
         else if(ID == 1002)
         {
            this.name = "DEF lv2";
            this.health = 2500;
            this.power = 50;
         }
         else if(ID == 1003)
         {
            this.name = "DEF lv3";
            this.health = 5000;
            this.power = 50;
         }
         else if(ID == 2000)
         {
            this.name = "DEF lv0";
            this.health = 1000;
         }
         else if(ID == 2001)
         {
            this.name = "DEF lv1";
            this.health = 2000;
         }
         else if(ID == 2002)
         {
            this.name = "DEF lv2";
            this.health = 4000;
         }
         else if(ID == 2003)
         {
            this.name = "DEF lv3";
            this.health = 8000;
         }
         else if(ID == 2004)
         {
            this.name = "DEF lv4";
            this.health = 12000;
         }
         else if(ID == 2005)
         {
            this.name = "DEF lv5";
            this.health = 20000;
         }
         else if(ID == 9999)
         {
            this.name = "Dummy";
            this.health = 0;
         }
      }
      
      public function init2(CLIP_ID:int = 21) : *
      {
         if(CLIP_ID == 21)
         {
            this.init(1);
         }
         if(CLIP_ID == 22)
         {
            this.init(2);
         }
         if(CLIP_ID == 23)
         {
            this.init(3);
         }
         if(CLIP_ID == 24)
         {
            this.init(4);
         }
         if(CLIP_ID == 25)
         {
            this.init(5);
         }
         if(CLIP_ID == 26)
         {
            this.init(6);
         }
         if(CLIP_ID == 27)
         {
            this.init(7);
         }
         if(CLIP_ID == 28)
         {
            this.init(8);
         }
         if(CLIP_ID == 29)
         {
            this.init(9);
         }
         if(CLIP_ID == 30)
         {
            this.init(10);
         }
         if(CLIP_ID == 31)
         {
            this.init(11);
         }
         if(CLIP_ID == 32)
         {
            this.init(12);
         }
         if(CLIP_ID == 33)
         {
            this.init(13);
         }
         if(CLIP_ID == 34)
         {
            this.init(14);
         }
         if(CLIP_ID == 35)
         {
            this.init(15);
         }
         if(CLIP_ID == 36)
         {
            this.init(16);
         }
         if(CLIP_ID == 37)
         {
            this.init(17);
         }
         if(CLIP_ID == 38)
         {
            this.init(18);
         }
         if(CLIP_ID == 39)
         {
            this.init(19);
         }
         if(CLIP_ID == 40)
         {
            this.init(20);
         }
         if(CLIP_ID == 41)
         {
            this.init(21);
         }
         if(CLIP_ID == 42)
         {
            this.init(22);
         }
         if(CLIP_ID == 43)
         {
            this.init(23);
         }
         if(CLIP_ID == 44)
         {
            this.init(24);
         }
         if(CLIP_ID == 45)
         {
            this.init(25);
         }
         if(CLIP_ID == 46)
         {
            this.init(26);
         }
         if(CLIP_ID == 47)
         {
            this.init(27);
         }
         if(CLIP_ID == 48)
         {
            this.init(28);
         }
         if(CLIP_ID == 49)
         {
            this.init(29);
         }
         if(CLIP_ID == 50)
         {
            this.init(30);
         }
         if(CLIP_ID == 51)
         {
            this.init(31);
         }
         if(CLIP_ID == 52)
         {
            this.init(32);
         }
         if(CLIP_ID == 53)
         {
            this.init(33);
         }
         if(CLIP_ID == 54)
         {
            this.init(34);
         }
         if(CLIP_ID == 55)
         {
            this.init(35);
         }
         if(CLIP_ID == 56)
         {
            this.init(36);
         }
         if(CLIP_ID == 57)
         {
            this.init(37);
         }
         if(CLIP_ID == 58)
         {
            this.init(38);
         }
         if(CLIP_ID == 59)
         {
            this.init(39);
         }
         if(CLIP_ID == 60)
         {
            this.init(40);
         }
         if(CLIP_ID == 61)
         {
            this.init(41);
         }
         if(CLIP_ID == 62)
         {
            this.init(42);
         }
         if(CLIP_ID == 63)
         {
            this.init(43);
         }
         if(CLIP_ID == 64)
         {
            this.init(44);
         }
         if(CLIP_ID == 65)
         {
            this.init(45);
         }
         if(CLIP_ID == 66)
         {
            this.init(46);
         }
         if(CLIP_ID == 67)
         {
            this.init(47);
         }
         if(CLIP_ID == 68)
         {
            this.init(48);
         }
      }
   }
}

