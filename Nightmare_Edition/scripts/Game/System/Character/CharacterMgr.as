package Game.System.Character
{
   import Game.System.StatDef.*;
   
   public class CharacterMgr
   {
      
      private var mGF:*;
      
      private var bSys:*;
      
      public function CharacterMgr(_mGF:*, _bSys:*)
      {
         super();
         this.mGF = _mGF;
         this.bSys = _bSys;
      }
      
      public function destroy() : *
      {
         this.mGF.destroyObjectInContainer(this.mGF.contUNIT);
         this.mGF.destroyObjectInContainer(this.mGF.contUNITDEAD);
         this.mGF.destroyObjectInContainer(this.mGF.contEFFECT);
         this.bSys = null;
         this.mGF = null;
      }
      
      public function init() : *
      {
      }
      
      public function createUnit(TYPE:String = "static", XPOS:int = 0, CLASS:int = 1, SKIN:int = 1, WEAPON:int = 1, SCALE:Number = 0.25, ENABLE_MOVE:Boolean = true) : Object
      {
         var clip:* = undefined;
         if(CLASS == 1)
         {
            clip = new WARRIOR();
         }
         else if(CLASS == 2)
         {
            clip = new ARCHER();
         }
         else if(CLASS == 3)
         {
            clip = new MAGE();
         }
         else if(CLASS == 4)
         {
            clip = new FIGHTER();
         }
         else if(CLASS == 5)
         {
            clip = new CAVALRY();
         }
         else if(CLASS == 6)
         {
            clip = new SWORDMASTER();
         }
         else if(CLASS == 7)
         {
            clip = new THROWER();
         }
         else if(CLASS == 8)
         {
            clip = new TANKER();
         }
         else if(CLASS == 101)
         {
            clip = new CREATURE_ZOMBIE();
         }
         else if(CLASS == 102)
         {
            clip = new CREATURE_SKELETON();
         }
         else if(CLASS == 103)
         {
            clip = new CREATURE_GHOST();
         }
         else if(CLASS == 201)
         {
            clip = new TOWER_BIRD();
         }
         else if(CLASS == 202)
         {
            clip = new TOWER_SNAKE();
         }
         else if(CLASS == 203)
         {
            clip = new TOWER_MONKEY();
         }
         else if(CLASS == 2001)
         {
            clip = new PORTAL_ZOMBIE();
         }
         else if(CLASS == 2002)
         {
            clip = new PORTAL_SKELETON();
         }
         else if(CLASS == 2003)
         {
            clip = new PORTAL_GHOST();
         }
         if(clip)
         {
            if(clip.skin)
            {
               clip.skin.gotoAndStop(SKIN);
            }
            if(clip.weapon)
            {
               clip.weapon.gotoAndStop(WEAPON);
            }
            if(clip.weapon2)
            {
               clip.weapon2.gotoAndStop(WEAPON);
            }
            clip.init(this.mGF,this.bSys,TYPE,CLASS,SKIN,WEAPON,XPOS,SCALE);
            clip.setEnableMove(ENABLE_MOVE);
            return clip;
         }
         return null;
      }
      
      public function createUnitZombie(TYPE:String = "static", XPOS:int = 0, SCALE:Number = 0.25, ENABLE_MOVE:Boolean = true) : *
      {
         var classID:int = 101;
         var skinID:int = 9999;
         var weaponID:int = 101;
         var clip:* = new CREATURE_ZOMBIE();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,SCALE);
         clip.setEnableMove(ENABLE_MOVE);
      }
      
      public function createUnitSkeleton(TYPE:String = "static", XPOS:int = 0, SCALE:Number = 0.25, ENABLE_MOVE:Boolean = true) : *
      {
         var classID:int = 102;
         var skinID:int = 9999;
         var weaponID:int = 102;
         var clip:* = new CREATURE_SKELETON();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,SCALE);
         clip.setEnableMove(ENABLE_MOVE);
      }
      
      public function createUnitGhost(TYPE:String = "static", XPOS:int = 0, SCALE:Number = 0.25, ENABLE_MOVE:Boolean = true) : *
      {
         var classID:int = 103;
         var skinID:int = 9999;
         var weaponID:int = 103;
         var clip:* = new CREATURE_GHOST();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,SCALE);
         clip.setEnableMove(ENABLE_MOVE);
      }
      
      public function createTowerBird(TYPE:String = "static", XPOS:int = 0) : *
      {
         var classID:int = 201;
         var skinID:int = 9999;
         var weaponID:int = 201;
         var clip:* = new TOWER_BIRD();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,1);
         clip.setEnableMove(false);
      }
      
      public function createTowerSnake(TYPE:String = "static", XPOS:int = 0) : *
      {
         var classID:int = 202;
         var skinID:int = 9999;
         var weaponID:int = 202;
         var clip:* = new TOWER_SNAKE();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,1);
         clip.setEnableMove(false);
      }
      
      public function createTowerMonkey(TYPE:String = "static", XPOS:int = 0) : *
      {
         var classID:int = 203;
         var skinID:int = 9999;
         var weaponID:int = 203;
         var clip:* = new TOWER_MONKEY();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,1);
         clip.setEnableMove(false);
      }
      
      public function createPortalZombie(TYPE:String = "static", XPOS:int = 0) : *
      {
         var classID:int = 2001;
         var skinID:int = 9999;
         var weaponID:int = 2000;
         var clip:* = new PORTAL_ZOMBIE();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,1);
         clip.setEnableMove(false);
      }
      
      public function createPortalSkeleton(TYPE:String = "static", XPOS:int = 0) : *
      {
         var classID:int = 2002;
         var skinID:int = 9999;
         var weaponID:int = 2000;
         var clip:* = new PORTAL_SKELETON();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,1);
         clip.setEnableMove(false);
      }
      
      public function createPortalGhost(TYPE:String = "static", XPOS:int = 0) : *
      {
         var classID:int = 2003;
         var skinID:int = 9999;
         var weaponID:int = 2000;
         var clip:* = new PORTAL_GHOST();
         clip.init(this.mGF,this.bSys,TYPE,classID,skinID,weaponID,XPOS,1);
         clip.setEnableMove(false);
      }
      
      public function getRequirmentManaUnit(SLOT:int = 1) : int
      {
         var manaCost:int = 0;
         var charStat:* = new CHRClassStat();
         var skinStat:* = new CHRSkinStat();
         var weaponStat:* = new CHRWeaponStat();
         var char_class:int = 1;
         var char_skin:int = 1;
         var char_weapon:int = 1;
         if(SLOT == 1)
         {
            char_class = int(this.mGF.datMgr.char1_class);
            char_skin = int(this.mGF.datMgr.char1_skin);
            char_weapon = int(this.mGF.datMgr.char1_weapon);
         }
         else if(SLOT == 2)
         {
            char_class = int(this.mGF.datMgr.char2_class);
            char_skin = int(this.mGF.datMgr.char2_skin);
            char_weapon = int(this.mGF.datMgr.char2_weapon);
         }
         else if(SLOT == 3)
         {
            char_class = int(this.mGF.datMgr.char3_class);
            char_skin = int(this.mGF.datMgr.char3_skin);
            char_weapon = int(this.mGF.datMgr.char3_weapon);
         }
         else if(SLOT == 4)
         {
            char_class = int(this.mGF.datMgr.char4_class);
            char_skin = int(this.mGF.datMgr.char4_skin);
            char_weapon = int(this.mGF.datMgr.char4_weapon);
         }
         charStat.init(char_class);
         skinStat.init(char_skin);
         weaponStat.init(char_class,char_weapon);
         return int(charStat.costMana + skinStat.costMana + weaponStat.costMana);
      }
      
      public function createPlayerUnit(SLOT:int = 1, manaSupply:int = 999) : int
      {
         if(this.bSys.battleAllySoldierOnScreen >= this.bSys.PLAYER_UNIT_CAP)
         {
            return -2;
         }
         var manaCost:int = 0;
         var charStat:* = new CHRClassStat();
         var skinStat:* = new CHRSkinStat();
         var weaponStat:* = new CHRWeaponStat();
         var char_class:int = 1;
         var char_skin:int = 1;
         var char_weapon:int = 1;
         if(SLOT == 1)
         {
            char_class = int(this.mGF.datMgr.char1_class);
            char_skin = int(this.mGF.datMgr.char1_skin);
            char_weapon = int(this.mGF.datMgr.char1_weapon);
         }
         else if(SLOT == 2)
         {
            char_class = int(this.mGF.datMgr.char2_class);
            char_skin = int(this.mGF.datMgr.char2_skin);
            char_weapon = int(this.mGF.datMgr.char2_weapon);
         }
         else if(SLOT == 3)
         {
            char_class = int(this.mGF.datMgr.char3_class);
            char_skin = int(this.mGF.datMgr.char3_skin);
            char_weapon = int(this.mGF.datMgr.char3_weapon);
         }
         else if(SLOT == 4)
         {
            char_class = int(this.mGF.datMgr.char4_class);
            char_skin = int(this.mGF.datMgr.char4_skin);
            char_weapon = int(this.mGF.datMgr.char4_weapon);
         }
         charStat.init(char_class);
         skinStat.init(char_skin);
         weaponStat.init(char_class,char_weapon);
         manaCost = charStat.costMana + skinStat.costMana + weaponStat.costMana;
         if(manaCost <= manaSupply)
         {
            this.createUnit("ally",0,char_class,char_skin,char_weapon);
            return manaCost;
         }
         return -1;
      }
      
      public function createPlayerHero() : *
      {
         var clip:* = undefined;
         var heroClass:int = 1001;
         var heroDef:int = 1000;
         var heroAtk:int = 1000;
         if(this.mGF.datMgr.hero_type == 1)
         {
            clip = new HERO1_MONKEY();
            heroClass = 1001;
         }
         else if(this.mGF.datMgr.hero_type == 2)
         {
            clip = new HERO2_SNOWBEAR();
            heroClass = 1002;
         }
         else if(this.mGF.datMgr.hero_type == 3)
         {
            clip = new HERO3_TURTLE();
            heroClass = 1003;
         }
         else if(this.mGF.datMgr.hero_type == 4)
         {
            clip = new HERO4_CLOWN();
            heroClass = 1004;
         }
         else if(this.mGF.datMgr.hero_type == 5)
         {
            clip = new HERO5_SNAKE();
            heroClass = 1005;
         }
         if(this.mGF.datMgr.hero_boost_defense == 1)
         {
            heroDef = 1001;
         }
         else if(this.mGF.datMgr.hero_boost_defense == 2)
         {
            heroDef = 1002;
         }
         else if(this.mGF.datMgr.hero_boost_defense == 3)
         {
            heroDef = 1003;
         }
         else
         {
            heroDef = 1000;
         }
         if(this.mGF.datMgr.hero_boost_attack == 1)
         {
            heroAtk = 1001;
         }
         else if(this.mGF.datMgr.hero_boost_attack == 2)
         {
            heroAtk = 1002;
         }
         else if(this.mGF.datMgr.hero_boost_attack == 3)
         {
            heroAtk = 1003;
         }
         else
         {
            heroAtk = 1000;
         }
         if(clip)
         {
            clip.init(this.mGF,this.bSys,"ally",heroClass,heroDef,heroAtk,100,0.25);
            clip.setEnableMove(false);
            trace("HERO CREATED : HP=" + clip.health + " POW=" + clip.atkDamage.power);
         }
      }
      
      public function setPlayerWin() : *
      {
         var child:* = undefined;
         var i:* = undefined;
         var numChildren:int = int(this.mGF.contUNIT.numChildren);
         for(i = 0; i < numChildren; i++)
         {
            child = this.mGF.contUNIT.getChildAt(i);
            if(child.type == "ally")
            {
               child.setWin(true);
               trace("Set win");
            }
         }
      }
      
      public function createEnemyHero(TYPE:String = "monkey", DEF:int = 1, ATK:int = 1, POS:int = 0) : *
      {
         var clip:* = undefined;
         var heroClass:int = 1001;
         var heroDef:int = 2000;
         var heroAtk:int = 1000;
         if(TYPE == "monkey")
         {
            clip = new HERO1_MONKEY2();
            heroClass = 1001;
         }
         else if(TYPE == "snowbear")
         {
            clip = new HERO2_SNOWBEAR2();
            heroClass = 1002;
         }
         else if(TYPE == "clown")
         {
            clip = new HERO4_CLOWN();
            heroClass = 1003;
         }
         else if(TYPE == "turtle")
         {
            clip = new HERO3_TURTLE2();
            heroClass = 1004;
         }
         else if(TYPE == "snake")
         {
            clip = new HERO5_SNAKE();
            heroClass = 1005;
         }
         else if(TYPE == "monkeyP")
         {
            clip = new HERO1_MONKEY();
            heroClass = 1001;
         }
         else if(TYPE == "snowbearP")
         {
            clip = new HERO2_SNOWBEAR();
            heroClass = 1002;
         }
         else if(TYPE == "turtleP")
         {
            clip = new HERO3_TURTLE();
            heroClass = 1004;
         }
         if(DEF == 1)
         {
            heroDef = 2001;
         }
         else if(DEF == 2)
         {
            heroDef = 2002;
         }
         else if(DEF == 3)
         {
            heroDef = 2003;
         }
         else if(DEF == 4)
         {
            heroDef = 2004;
         }
         else if(DEF == 5)
         {
            heroDef = 2005;
         }
         else
         {
            heroDef = 2000;
         }
         if(ATK == 1)
         {
            heroAtk = 1001;
         }
         else if(ATK == 2)
         {
            heroAtk = 1002;
         }
         else if(ATK == 3)
         {
            heroAtk = 1003;
         }
         else
         {
            heroAtk = 1000;
         }
         if(clip)
         {
            clip.init(this.mGF,this.bSys,"enemy",heroClass,heroDef,heroAtk,POS,0.25);
            clip.setEnableMove(false);
            trace("HERO CREATED " + TYPE + " : HP=" + clip.health + " POW=" + clip.atkDamage.power);
         }
      }
      
      public function createEnemyBoss(TYPE:String = "demon", POS:int = 0) : *
      {
         var clip:* = undefined;
         var bossClass:int = 666;
         var bossDef:int = 9999;
         var bossAtk:int = 666;
         if(TYPE == "demon")
         {
            clip = new BOSS_DEMON();
            bossClass = 666;
         }
         else if(TYPE == "snow")
         {
            clip = new BOSS_SNOW();
            bossClass = 667;
         }
         if(clip)
         {
            clip.init(this.mGF,this.bSys,"enemy",bossClass,bossDef,bossAtk,POS,0.2);
            clip.setEnableMove(false);
            trace("BOSS CREATED " + TYPE + " : HP=" + clip.health + " POW=" + clip.atkDamage.power);
         }
      }
      
      public function createEnemyUnit(CLASS:String = "warrior", TYPE:String = "", POS:int = 0, MOVE:Boolean = true, PROPERTY_LOCK:String = "", HEALTH_ADJUST:int = 0, AS_BOSS:Boolean = false) : *
      {
         var classID:int = 1;
         if(CLASS == "warrior")
         {
            classID = 1;
         }
         else if(CLASS == "archer")
         {
            classID = 2;
         }
         else if(CLASS == "mage")
         {
            classID = 3;
         }
         else if(CLASS == "fighter")
         {
            classID = 4;
         }
         else if(CLASS == "cavalry")
         {
            classID = 5;
         }
         else if(CLASS == "swordmaster")
         {
            classID = 6;
         }
         else if(CLASS == "thrower")
         {
            classID = 7;
         }
         else if(CLASS == "tanker")
         {
            classID = 8;
         }
         var skinID:int = 1;
         var weaponID:int = 1;
         if(TYPE == "superhero_ex")
         {
            classID = 4;
            skinID = 12;
            weaponID = 5;
         }
         if(TYPE == "superhero_ex2")
         {
            classID = 6;
            skinID = 12;
            weaponID = 12;
         }
         if(TYPE == "superhero_ex3")
         {
            classID = 4;
            skinID = 12;
            weaponID = 9;
         }
         if(TYPE == "elephant_ex")
         {
            classID = 1;
            skinID = 23;
            weaponID = 12;
         }
         if(TYPE == "knight_ex")
         {
            classID = 5;
            skinID = 21;
            weaponID = 12;
         }
         if(TYPE == "peasant_ex")
         {
            classID = 3;
            skinID = 1;
            weaponID = 12;
         }
         if(TYPE == "maid_ex")
         {
            classID = 7;
            skinID = 39;
            weaponID = 12;
         }
         if(TYPE == "p-bot")
         {
            skinID = 24;
            weaponID = 12;
         }
         if(TYPE == "merman")
         {
            skinID = 38;
            weaponID = 12;
         }
         if(TYPE == "badgirl_ex")
         {
            classID = 3;
            skinID = 27;
            weaponID = 12;
         }
         if(TYPE == "pirate_ex")
         {
            classID = 8;
            skinID = 28;
            weaponID = 11;
         }
         if(TYPE == "greg_boss")
         {
            classID = 5;
            skinID = 42;
            weaponID = 12;
         }
         if(TYPE == "demon")
         {
            skinID = 8;
            weaponID = 11;
         }
         if(TYPE == "demon_ex")
         {
            classID = 1;
            skinID = 8;
            weaponID = 12;
         }
         if(TYPE == "gatotkaca")
         {
            skinID = 9;
            weaponID = 8;
         }
         if(TYPE == "gatotkaca_ex")
         {
            classID = 6;
            skinID = 9;
            weaponID = 7;
         }
         if(TYPE == "cyborg")
         {
            skinID = 10;
            weaponID = 6;
         }
         if(TYPE == "cyborg_ex")
         {
            classID = 1;
            skinID = 10;
            weaponID = 7;
         }
         if(TYPE == "superhero")
         {
            skinID = 12;
            weaponID = 11;
         }
         if(TYPE == "angel")
         {
            skinID = 20;
            weaponID = 9;
         }
         if(TYPE == "angel_ex")
         {
            classID = 2;
            skinID = 20;
            weaponID = 11;
         }
         if(TYPE == "valkyrie")
         {
            skinID = 19;
            weaponID = 9;
         }
         if(TYPE == "valkyrie_ex")
         {
            classID = 1;
            skinID = 19;
            weaponID = 11;
         }
         if(TYPE == "knight")
         {
            skinID = 21;
            weaponID = 8;
         }
         if(TYPE == "templar")
         {
            skinID = 22;
            weaponID = 9;
         }
         if(TYPE == "templar_ex")
         {
            classID = 6;
            skinID = 22;
            weaponID = 10;
         }
         if(TYPE == "elephant")
         {
            skinID = 23;
            weaponID = 8;
         }
         if(TYPE == "ntank")
         {
            skinID = 11;
            weaponID = 6;
         }
         if(TYPE == "mochi")
         {
            skinID = 35;
            weaponID = 9;
         }
         if(TYPE == "flash")
         {
            skinID = 36;
            weaponID = 9;
         }
         if(TYPE == "boxer")
         {
            skinID = 6;
            weaponID = 5;
         }
         if(TYPE == "boxer_ex")
         {
            classID = 6;
            skinID = 6;
            weaponID = 6;
         }
         if(TYPE == "mike")
         {
            skinID = 7;
            weaponID = 6;
         }
         if(TYPE == "mike_ex")
         {
            classID = 4;
            skinID = 7;
            weaponID = 8;
         }
         if(TYPE == "viking")
         {
            skinID = 15;
            weaponID = 5;
         }
         if(TYPE == "roman")
         {
            skinID = 16;
            weaponID = 6;
         }
         if(TYPE == "roman_ex")
         {
            classID = 5;
            skinID = 16;
            weaponID = 7;
         }
         if(TYPE == "samurai")
         {
            skinID = 17;
            weaponID = 5;
         }
         if(TYPE == "samurai_ex")
         {
            classID = 6;
            skinID = 17;
            weaponID = 3;
         }
         if(TYPE == "goblin")
         {
            skinID = 18;
            weaponID = 6;
         }
         if(TYPE == "kangroo")
         {
            skinID = 33;
            weaponID = 4;
         }
         if(TYPE == "kangroo_ex")
         {
            classID = 4;
            skinID = 33;
            weaponID = 8;
         }
         if(TYPE == "mercenary")
         {
            skinID = 4;
            weaponID = 4;
         }
         if(TYPE == "phantom")
         {
            skinID = 5;
            weaponID = 4;
         }
         if(TYPE == "killer")
         {
            skinID = 29;
            weaponID = 4;
         }
         if(TYPE == "ninjaboy")
         {
            skinID = 30;
            weaponID = 3;
         }
         if(TYPE == "ninjagirl")
         {
            skinID = 32;
            weaponID = 3;
         }
         if(TYPE == "greenguy")
         {
            skinID = 41;
            weaponID = 3;
         }
         if(TYPE == "cowboy")
         {
            skinID = 41;
            weaponID = 3;
         }
         if(TYPE == "mafia")
         {
            skinID = 45;
            weaponID = 3;
         }
         if(TYPE == "hermit")
         {
            skinID = 41;
            weaponID = 4;
         }
         if(TYPE == "chef")
         {
            skinID = 44;
            weaponID = 3;
         }
         if(TYPE == "tuxedo")
         {
            skinID = 31;
            weaponID = 5;
         }
         if(TYPE == "handsome")
         {
            skinID = 40;
            weaponID = 3;
         }
         if(TYPE == "handsome_ex")
         {
            classID = 3;
            skinID = 40;
            weaponID = 12;
         }
         if(TYPE == "shinobi")
         {
            skinID = 2;
            weaponID = 2;
         }
         if(TYPE == "slasher")
         {
            skinID = 29;
            weaponID = 2;
         }
         if(TYPE == "slasher_ex")
         {
            classID = 1;
            skinID = 29;
            weaponID = 6;
         }
         if(TYPE == "totem")
         {
            skinID = 14;
            weaponID = 2;
         }
         if(TYPE == "robin")
         {
            skinID = 26;
            weaponID = 2;
         }
         if(TYPE == "badgirl")
         {
            skinID = 27;
            weaponID = 2;
         }
         if(TYPE == "pirate")
         {
            skinID = 28;
            weaponID = 2;
         }
         if(TYPE == "maid")
         {
            skinID = 39;
            weaponID = 2;
         }
         if(TYPE == "scout")
         {
            skinID = 43;
            weaponID = 3;
         }
         if(TYPE == "peasant")
         {
            skinID = 1;
            weaponID = 1;
         }
         if(TYPE == "cubbyboy")
         {
            skinID = 13;
            weaponID = 1;
         }
         if(TYPE == "hobbit")
         {
            skinID = 25;
            weaponID = 1;
         }
         if(TYPE == "druid")
         {
            skinID = 37;
            weaponID = 1;
         }
         var newUnit:* = this.createUnit("enemy",POS,classID,skinID,weaponID,0.25,MOVE);
         if(PROPERTY_LOCK == "mini")
         {
            newUnit.isMiniLock = true;
         }
         if(PROPERTY_LOCK == "giant")
         {
            newUnit.isGiantLock = true;
         }
         if(PROPERTY_LOCK == "super")
         {
            newUnit.isSuperLock = true;
         }
         if(HEALTH_ADJUST > 0)
         {
            newUnit.setHealthAdjust(HEALTH_ADJUST);
         }
         if(AS_BOSS)
         {
            newUnit.chrClass.isBoss = true;
         }
      }
      
      public function createEnemyTower(TYPE:String = "bird", POS:int = 0) : *
      {
         if(TYPE == "bird")
         {
            this.createTowerBird("enemy",POS);
         }
         else if(TYPE == "snake")
         {
            this.createTowerSnake("enemy",POS);
         }
         else if(TYPE == "monkey")
         {
            this.createTowerMonkey("enemy",POS);
         }
      }
      
      public function createEnemyPortal(TYPE:String = "zombie", POS:int = 0) : *
      {
         if(TYPE == "zombie")
         {
            this.createPortalZombie("enemy",POS);
         }
         else if(TYPE == "skeleton")
         {
            this.createPortalSkeleton("enemy",POS);
         }
         else if(TYPE == "ghost")
         {
            this.createPortalGhost("enemy",POS);
         }
      }
      
      public function setEnemyWin() : *
      {
         var child:* = undefined;
         var i:* = undefined;
         var numChildren:int = int(this.mGF.contUNIT.numChildren);
         for(i = 0; i < numChildren; i++)
         {
            child = this.mGF.contUNIT.getChildAt(i);
            if(child.type == "enemy")
            {
               child.setWin(true);
            }
         }
      }
      
      public function update() : *
      {
      }
   }
}

