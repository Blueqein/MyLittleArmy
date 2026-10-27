package Game.System.StatDef
{
   public class CHRClassStat
   {
      
      public var id:int = 0;
      
      public var name:String = "";
      
      public var desc:String = "";
      
      public var health:int = 100;
      
      public var power:int = 0;
      
      public var melee:Number = 0;
      
      public var slash:Number = 0;
      
      public var pierce:Number = 0;
      
      public var fire:Number = 0;
      
      public var ice:Number = 0;
      
      public var thunder:Number = 0;
      
      public var speed:Number = 1;
      
      public var hitFrame:int = 80;
      
      public var hitCustom:String = "";
      
      public var hitActionDelay:Number = 2;
      
      public var isIgnorehit:Boolean = false;
      
      public var isHero:Boolean = false;
      
      public var isSoldier:Boolean = false;
      
      public var isBoss:Boolean = false;
      
      public var isUndead:Boolean = false;
      
      public var isTower:Boolean = false;
      
      public var isPortal:Boolean = false;
      
      public var costMana:int = 0;
      
      public var costPrice:int = 0;
      
      public var CLIP_FRAME_ID:int = 0;
      
      public function CHRClassStat(ID:int = 1)
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
         this.isIgnorehit = false;
         this.isHero = false;
         this.isSoldier = false;
         this.isBoss = false;
         this.isTower = false;
         this.isPortal = false;
         this.hitCustom = "";
         if(ID == 1)
         {
            this.name = "Warrior";
            this.health = 400;
            this.power = 50;
            this.melee = 0;
            this.slash = 0.2;
            this.pierce = 0.3;
            this.fire = 0.3;
            this.ice = -0.3;
            this.thunder = -0.2;
            this.speed = 1.5;
            this.hitFrame = 112;
            this.hitActionDelay = 1.2;
            this.isSoldier = true;
            this.costMana = 20;
            this.CLIP_FRAME_ID = 1;
         }
         else if(ID == 2)
         {
            this.name = "Archer";
            this.health = 200;
            this.power = 20;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0.2;
            this.ice = 0.3;
            this.thunder = 0.2;
            this.speed = 2;
            this.hitFrame = 87;
            this.hitActionDelay = 2;
            this.hitCustom = "arrow";
            this.isSoldier = true;
            this.costMana = 20;
            this.CLIP_FRAME_ID = 2;
         }
         else if(ID == 3)
         {
            this.name = "Mage";
            this.health = 100;
            this.power = 30;
            this.melee = -0.3;
            this.slash = -0.3;
            this.pierce = -0.3;
            this.fire = 0.3;
            this.ice = 0.3;
            this.thunder = 0.3;
            this.speed = 1;
            this.hitFrame = 139;
            this.hitActionDelay = 3;
            this.hitCustom = "magic";
            this.isSoldier = true;
            this.costMana = 25;
            this.CLIP_FRAME_ID = 3;
         }
         else if(ID == 4)
         {
            this.name = "Fighter";
            this.health = 500;
            this.power = 60;
            this.melee = 0.3;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = -0.2;
            this.thunder = 0.3;
            this.speed = 1.5;
            this.hitFrame = 104;
            this.hitActionDelay = 1;
            this.isSoldier = true;
            this.costMana = 20;
            this.CLIP_FRAME_ID = 4;
         }
         if(ID == 5)
         {
            this.name = "Cavalry";
            this.health = 600;
            this.power = 40;
            this.melee = 0;
            this.slash = 0.3;
            this.pierce = 0.2;
            this.fire = -0.3;
            this.ice = 0.2;
            this.thunder = 0;
            this.speed = 2.2;
            this.hitFrame = 82;
            this.hitActionDelay = 1.5;
            this.isSoldier = true;
            this.costMana = 30;
            this.CLIP_FRAME_ID = 5;
         }
         if(ID == 6)
         {
            this.name = "Swordmaster";
            this.health = 300;
            this.power = 70;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = -0.2;
            this.ice = -0.2;
            this.thunder = 0.2;
            this.speed = 1.8;
            this.hitFrame = 76;
            this.hitActionDelay = 1.5;
            this.isSoldier = true;
            this.costMana = 25;
            this.CLIP_FRAME_ID = 6;
         }
         else if(ID == 7)
         {
            this.name = "Thrower";
            this.health = 150;
            this.power = 30;
            this.melee = -0.2;
            this.slash = -0.2;
            this.pierce = -0.2;
            this.fire = 0.3;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 1.2;
            this.hitFrame = 75;
            this.hitActionDelay = 2.5;
            this.hitCustom = "throw";
            this.isSoldier = true;
            this.costMana = 25;
            this.CLIP_FRAME_ID = 7;
         }
         else if(ID == 8)
         {
            this.name = "Tanker";
            this.health = 700;
            this.power = 20;
            this.melee = 0.3;
            this.slash = 0.3;
            this.pierce = 0.3;
            this.fire = -0.3;
            this.ice = -0.3;
            this.thunder = -0.3;
            this.speed = 0.8;
            this.hitFrame = 106;
            this.hitActionDelay = 2;
            this.isSoldier = true;
            this.costMana = 30;
            this.CLIP_FRAME_ID = 8;
         }
         else if(ID == 101)
         {
            this.name = "Zombie";
            this.health = 400;
            this.power = 30;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0.5;
            this.hitFrame = 158;
            this.hitActionDelay = 3;
            this.isUndead = true;
            this.costMana = 0;
         }
         else if(ID == 102)
         {
            this.name = "Skeleton";
            this.health = 550;
            this.power = 30;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 1;
            this.hitFrame = 158;
            this.hitActionDelay = 2.5;
            this.isUndead = true;
            this.costMana = 0;
         }
         else if(ID == 103)
         {
            this.name = "Ghost";
            this.health = 700;
            this.power = 30;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 1.5;
            this.hitFrame = 158;
            this.hitActionDelay = 2;
            this.isUndead = true;
            this.costMana = 0;
         }
         else if(ID == 201)
         {
            this.name = "Tower Bird";
            this.health = 2000;
            this.power = 30;
            this.speed = 0;
            this.hitFrame = 20;
            this.hitActionDelay = 3;
            this.hitCustom = "tower_arrow";
            this.isTower = true;
            this.isIgnorehit = true;
            this.costMana = 0;
         }
         else if(ID == 202)
         {
            this.name = "Tower Snake";
            this.health = 3000;
            this.power = 30;
            this.speed = 0;
            this.hitFrame = 20;
            this.hitActionDelay = 3;
            this.hitCustom = "tower_magic";
            this.isTower = true;
            this.isIgnorehit = true;
            this.costMana = 0;
         }
         else if(ID == 203)
         {
            this.name = "Tower Monkey";
            this.health = 4000;
            this.power = 30;
            this.speed = 0;
            this.hitFrame = 20;
            this.hitActionDelay = 3;
            this.hitCustom = "tower_magic";
            this.isTower = true;
            this.isIgnorehit = true;
            this.costMana = 0;
         }
         else if(ID == 666)
         {
            this.name = "Super Snakeball";
            this.health = 100000;
            this.power = 350;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0.5;
            this.isBoss = true;
            this.isIgnorehit = true;
            this.hitFrame = 118;
            this.hitActionDelay = 4;
         }
         else if(ID == 667)
         {
            this.name = "Super Snowball";
            this.health = 200000;
            this.power = 700;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0.5;
            this.isBoss = true;
            this.isIgnorehit = true;
            this.hitFrame = 118;
            this.hitActionDelay = 4;
         }
         else if(ID == 1001)
         {
            this.name = "HeroMonkey";
            this.health = 2000;
            this.power = 50;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0;
            this.isHero = true;
            this.isIgnorehit = true;
            this.hitFrame = 93;
            this.hitActionDelay = 3;
         }
         else if(ID == 1002)
         {
            this.name = "HeroSnowBear";
            this.health = 2000;
            this.power = 50;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0;
            this.isHero = true;
            this.isIgnorehit = true;
            this.hitFrame = 101;
            this.hitActionDelay = 3;
         }
         else if(ID == 1003)
         {
            this.name = "HeroTurtle";
            this.health = 2000;
            this.power = 50;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0;
            this.isHero = true;
            this.isIgnorehit = true;
            this.hitFrame = 100;
            this.hitActionDelay = 3;
         }
         else if(ID == 1004)
         {
            this.name = "HeroClown";
            this.health = 2000;
            this.power = 50;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0;
            this.isHero = true;
            this.isIgnorehit = true;
            this.hitFrame = 114;
            this.hitActionDelay = 3;
         }
         else if(ID == 1005)
         {
            this.name = "HeroSnake";
            this.health = 2000;
            this.power = 50;
            this.melee = 0;
            this.slash = 0;
            this.pierce = 0;
            this.fire = 0;
            this.ice = 0;
            this.thunder = 0;
            this.speed = 0;
            this.isHero = true;
            this.isIgnorehit = true;
            this.hitFrame = 103;
            this.hitActionDelay = 3;
         }
         else if(ID == 2001)
         {
            this.name = "Portal Zombie";
            this.health = 4000;
            this.power = 0;
            this.speed = 0;
            this.hitFrame = 20;
            this.hitActionDelay = 2;
            this.hitCustom = "summon_zombie";
            this.isPortal = true;
            this.isIgnorehit = true;
            this.costMana = 0;
         }
         else if(ID == 2002)
         {
            this.name = "Portal Skeleton";
            this.health = 6000;
            this.power = 0;
            this.speed = 0;
            this.hitFrame = 20;
            this.hitActionDelay = 2;
            this.hitCustom = "summon_skeleton";
            this.isPortal = true;
            this.isIgnorehit = true;
            this.costMana = 0;
         }
         else if(ID == 2003)
         {
            this.name = "Portal Ghost";
            this.health = 9000;
            this.power = 0;
            this.speed = 0;
            this.hitFrame = 20;
            this.hitActionDelay = 2;
            this.hitCustom = "summon_ghost";
            this.isPortal = true;
            this.isIgnorehit = true;
            this.costMana = 0;
         }
      }
      
      public function init2(CLIP_ID:int = 21) : *
      {
         if(CLIP_ID == 2)
         {
            this.init(1);
         }
         if(CLIP_ID == 3)
         {
            this.init(2);
         }
         if(CLIP_ID == 4)
         {
            this.init(3);
         }
         if(CLIP_ID == 5)
         {
            this.init(4);
         }
         if(CLIP_ID == 6)
         {
            this.init(5);
         }
         if(CLIP_ID == 7)
         {
            this.init(6);
         }
         if(CLIP_ID == 8)
         {
            this.init(7);
         }
         if(CLIP_ID == 9)
         {
            this.init(8);
         }
      }
   }
}

