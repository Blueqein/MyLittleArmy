package Game.System.Character
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class Character extends MovieClip
   {
      
      public var ikNode_125:MovieClip;
      
      public var ikNode_1235:MovieClip;
      
      public var ikNode_1213:MovieClip;
      
      public var ikNode_1099:MovieClip;
      
      public var ikNode_1123:MovieClip;
      
      public var ikNode_1022:MovieClip;
      
      public var ikNode_958:MovieClip;
      
      public var ikNode_969:MovieClip;
      
      public var ikNode_1088:MovieClip;
      
      public var ikNode_884:MovieClip;
      
      public var ikNode_848:MovieClip;
      
      public var ikNode_770:MovieClip;
      
      public var ikNode_671:MovieClip;
      
      public var ikNode_588:MovieClip;
      
      public var ikNode_532:MovieClip;
      
      public var ikNode_602:MovieClip;
      
      public var ikNode_624:MovieClip;
      
      public var ikNode_510:MovieClip;
      
      public var bodyBox:MovieClip;
      
      public var ikNode_126:MovieClip;
      
      public var ikNode_1223:MovieClip;
      
      public var ikNode_1212:MovieClip;
      
      public var ikNode_1201:MovieClip;
      
      public var ikNode_1122:MovieClip;
      
      public var ikNode_1010:MovieClip;
      
      public var ikNode_948:MovieClip;
      
      public var ikNode_959:MovieClip;
      
      public var ikNode_885:MovieClip;
      
      public var ikNode_896:MovieClip;
      
      public var ikNode_995:MovieClip;
      
      public var ikNode_849:MovieClip;
      
      public var ikNode_589:MovieClip;
      
      public var ikNode_533:MovieClip;
      
      public var ikNode_702:MovieClip;
      
      public var ikNode_713:MovieClip;
      
      public var ikNode_625:MovieClip;
      
      public var ikNode_500:MovieClip;
      
      public var ikNode_650:MovieClip;
      
      public var ikNode_105:MovieClip;
      
      public var ikNode_116:MovieClip;
      
      public var ikNode_1233:MovieClip;
      
      public var ikNode_1211:MovieClip;
      
      public var ikNode_1110:MovieClip;
      
      public var ikNode_1121:MovieClip;
      
      public var ikNode_1031:MovieClip;
      
      public var ikNode_985:MovieClip;
      
      public var ikNode_662:MovieClip;
      
      public var ikNode_512:MovieClip;
      
      public var ikNode_637:MovieClip;
      
      public var ikNode_640:MovieClip;
      
      public var ikNode_651:MovieClip;
      
      public var ikNode_1210:MovieClip;
      
      public var ikNode_1120:MovieClip;
      
      public var ikNode_930:MovieClip;
      
      public var ikNode_1086:MovieClip;
      
      public var ikNode_887:MovieClip;
      
      public var ikNode_898:MovieClip;
      
      public var ikNode_997:MovieClip;
      
      public var ikNode_820:MovieClip;
      
      public var ikNode_831:MovieClip;
      
      public var ikNode_773:MovieClip;
      
      public var ikNode_674:MovieClip;
      
      public var ikNode_535:MovieClip;
      
      public var ikNode_715:MovieClip;
      
      public var ikNode_605:MovieClip;
      
      public var ikNode_627:MovieClip;
      
      public var ikNode_513:MovieClip;
      
      public var ikNode_107:MovieClip;
      
      public var ikNode_1231:MovieClip;
      
      public var ikNode_1220:MovieClip;
      
      public var ikNode_1186:MovieClip;
      
      public var ikNode_1096:MovieClip;
      
      public var ikNode_1085:MovieClip;
      
      public var ikNode_1048:MovieClip;
      
      public var ikNode_998:MovieClip;
      
      public var ikNode_675:MovieClip;
      
      public var ikNode_536:MovieClip;
      
      public var ikNode_705:MovieClip;
      
      public var ikNode_716:MovieClip;
      
      public var ikNode_617:MovieClip;
      
      public var ikNode_628:MovieClip;
      
      public var ikNode_514:MovieClip;
      
      public var ikNode_653:MovieClip;
      
      public var ikNode_108:MovieClip;
      
      public var ikNode_99:MovieClip;
      
      public var ikNode_119:MovieClip;
      
      public var ikNode_1196:MovieClip;
      
      public var ikNode_921:MovieClip;
      
      public var ikNode_932:MovieClip;
      
      public var ikNode_1095:MovieClip;
      
      public var ikNode_1058:MovieClip;
      
      public var ikNode_889:MovieClip;
      
      public var ikNode_988:MovieClip;
      
      public var ikNode_833:MovieClip;
      
      public var ikNode_811:MovieClip;
      
      public var ikNode_676:MovieClip;
      
      public var ikNode_573:MovieClip;
      
      public var ikNode_526:MovieClip;
      
      public var ikNode_537:MovieClip;
      
      public var ikNode_706:MovieClip;
      
      public var ikNode_717:MovieClip;
      
      public var ikNode_618:MovieClip;
      
      public var ikNode_504:MovieClip;
      
      public var ikNode_654:MovieClip;
      
      public var ikNode_1047:MovieClip;
      
      public var ikNode_933:MovieClip;
      
      public var ikNode_1079:MovieClip;
      
      public var ikNode_900:MovieClip;
      
      public var ikNode_823:MovieClip;
      
      public var ikNode_776:MovieClip;
      
      public var ikNode_790:MovieClip;
      
      public var ikNode_680:MovieClip;
      
      public var ikNode_552:MovieClip;
      
      public var ikNode_563:MovieClip;
      
      public var ikNode_541:MovieClip;
      
      public var ikNode_691:MovieClip;
      
      public var ikNode_707:MovieClip;
      
      public var ikNode_718:MovieClip;
      
      public var ikNode_608:MovieClip;
      
      public var ikNode_516:MovieClip;
      
      public var ikNode_644:MovieClip;
      
      public var weapon2:MovieClip;
      
      public var rangeBox:MovieClip;
      
      public var ikNode_934:MovieClip;
      
      public var ikNode_970:MovieClip;
      
      public var ikNode_912:MovieClip;
      
      public var ikNode_923:MovieClip;
      
      public var ikNode_1093:MovieClip;
      
      public var ikNode_1082:MovieClip;
      
      public var ikNode_1078:MovieClip;
      
      public var ikNode_1009:MovieClip;
      
      public var ikNode_835:MovieClip;
      
      public var ikNode_780:MovieClip;
      
      public var ikNode_802:MovieClip;
      
      public var ikNode_813:MovieClip;
      
      public var ikNode_667:MovieClip;
      
      public var ikNode_678:MovieClip;
      
      public var ikNode_681:MovieClip;
      
      public var ikNode_539:MovieClip;
      
      public var ikNode_542:MovieClip;
      
      public var ikNode_1193:MovieClip;
      
      public var ikNode_1045:MovieClip;
      
      public var ikNode_1019:MovieClip;
      
      public var ikNode_971:MovieClip;
      
      public var ikNode_924:MovieClip;
      
      public var ikNode_1092:MovieClip;
      
      public var ikNode_1067:MovieClip;
      
      public var ikNode_872:MovieClip;
      
      public var ikNode_902:MovieClip;
      
      public var ikNode_1008:MovieClip;
      
      public var ikNode_792:MovieClip;
      
      public var ikNode_682:MovieClip;
      
      public var ikNode_576:MovieClip;
      
      public var ikNode_554:MovieClip;
      
      public var ikNode_565:MovieClip;
      
      public var ikNode_543:MovieClip;
      
      public var ikNode_709:MovieClip;
      
      public var ikNode_507:MovieClip;
      
      public var ikNode_1209:MovieClip;
      
      public var ikNode_1108:MovieClip;
      
      public var ikNode_1119:MovieClip;
      
      public var ikNode_1029:MovieClip;
      
      public var ikNode_950:MovieClip;
      
      public var ikNode_914:MovieClip;
      
      public var ikNode_1091:MovieClip;
      
      public var ikNode_1077:MovieClip;
      
      public var ikNode_1055:MovieClip;
      
      public var ikNode_862:MovieClip;
      
      public var ikNode_903:MovieClip;
      
      public var ikNode_972:MovieClip;
      
      public var ikNode_826:MovieClip;
      
      public var ikNode_840:MovieClip;
      
      public var ikNode_851:MovieClip;
      
      public var ikNode_793:MovieClip;
      
      public var ikNode_815:MovieClip;
      
      public var ikNode_580:MovieClip;
      
      public var ikNode_591:MovieClip;
      
      public var ikNode_544:MovieClip;
      
      public var ikNode_555:MovieClip;
      
      public var ikNode_566:MovieClip;
      
      public var ikNode_492:MovieClip;
      
      public var ikNode_508:MovieClip;
      
      public var ikNode_1245:MovieClip;
      
      public var ikNode_1208:MovieClip;
      
      public var ikNode_1043:MovieClip;
      
      public var ikNode_1039:MovieClip;
      
      public var ikNode_1028:MovieClip;
      
      public var ikNode_962:MovieClip;
      
      public var ikNode_926:MovieClip;
      
      public var ikNode_1090:MovieClip;
      
      public var ikNode_1065:MovieClip;
      
      public var ikNode_863:MovieClip;
      
      public var ikNode_904:MovieClip;
      
      public var ikNode_1007:MovieClip;
      
      public var ikNode_841:MovieClip;
      
      public var ikNode_783:MovieClip;
      
      public var ikNode_794:MovieClip;
      
      public var ikNode_816:MovieClip;
      
      public var ikNode_659:MovieClip;
      
      public var ikNode_684:MovieClip;
      
      public var ikNode_567:MovieClip;
      
      public var shadow:MovieClip;
      
      public var hitBox:MovieClip;
      
      public var ikNode_1244:MovieClip;
      
      public var ikNode_1190:MovieClip;
      
      public var ikNode_1038:MovieClip;
      
      public var ikNode_938:MovieClip;
      
      public var ikNode_941:MovieClip;
      
      public var ikNode_952:MovieClip;
      
      public var ikNode_916:MovieClip;
      
      public var ikNode_927:MovieClip;
      
      public var ikNode_1064:MovieClip;
      
      public var ikNode_905:MovieClip;
      
      public var ikNode_1006:MovieClip;
      
      public var ikNode_839:MovieClip;
      
      public var ikNode_853:MovieClip;
      
      public var ikNode_817:MovieClip;
      
      public var ikNode_593:MovieClip;
      
      public var ikNode_557:MovieClip;
      
      public var ikNode_649:MovieClip;
      
      public var ikNode_1243:MovieClip;
      
      public var ikNode_1239:MovieClip;
      
      public var ikNode_1041:MovieClip;
      
      public var ikNode_1027:MovieClip;
      
      public var ikNode_1016:MovieClip;
      
      public var ikNode_939:MovieClip;
      
      public var ikNode_906:MovieClip;
      
      public var ikNode_1063:MovieClip;
      
      public var ikNode_1052:MovieClip;
      
      public var ikNode_890:MovieClip;
      
      public var ikNode_1005:MovieClip;
      
      public var ikNode_975:MovieClip;
      
      public var ikNode_854:MovieClip;
      
      public var ikNode_796:MovieClip;
      
      public var ikNode_807:MovieClip;
      
      public var ikNode_818:MovieClip;
      
      public var ikNode_686:MovieClip;
      
      public var ikNode_594:MovieClip;
      
      public var ikNode_547:MovieClip;
      
      public var ikNode_558:MovieClip;
      
      public var ikNode_569:MovieClip;
      
      public var ikNode_630:MovieClip;
      
      public var ikNode_495:MovieClip;
      
      public var ikNode_121:MovieClip;
      
      public var ikNode_1242:MovieClip;
      
      public var ikNode_1238:MovieClip;
      
      public var ikNode_1105:MovieClip;
      
      public var ikNode_1116:MovieClip;
      
      public var ikNode_1040:MovieClip;
      
      public var ikNode_1026:MovieClip;
      
      public var ikNode_954:MovieClip;
      
      public var ikNode_965:MovieClip;
      
      public var ikNode_929:MovieClip;
      
      public var ikNode_1073:MovieClip;
      
      public var ikNode_866:MovieClip;
      
      public var ikNode_877:MovieClip;
      
      public var ikNode_891:MovieClip;
      
      public var ikNode_1004:MovieClip;
      
      public var ikNode_990:MovieClip;
      
      public var ikNode_844:MovieClip;
      
      public var ikNode_855:MovieClip;
      
      public var ikNode_786:MovieClip;
      
      public var ikNode_797:MovieClip;
      
      public var ikNode_819:MovieClip;
      
      public var ikNode_687:MovieClip;
      
      public var ikNode_595:MovieClip;
      
      public var ikNode_698:MovieClip;
      
      public var ikNode_620:MovieClip;
      
      public var ikNode_631:MovieClip;
      
      public var ikNode_111:MovieClip;
      
      public var ikNode_122:MovieClip;
      
      public var ikNode_1241:MovieClip;
      
      public var ikNode_1216:MovieClip;
      
      public var ikNode_1205:MovieClip;
      
      public var ikNode_955:MovieClip;
      
      public var ikNode_1061:MovieClip;
      
      public var ikNode_881:MovieClip;
      
      public var ikNode_892:MovieClip;
      
      public var ikNode_991:MovieClip;
      
      public var ikNode_856:MovieClip;
      
      public var ikNode_787:MovieClip;
      
      public var ikNode_809:MovieClip;
      
      public var ikNode_585:MovieClip;
      
      public var ikNode_596:MovieClip;
      
      public var ikNode_632:MovieClip;
      
      public var weapon:MovieClip;
      
      public var skin:MovieClip;
      
      public var ikNode_112:MovieClip;
      
      public var ikNode_1240:MovieClip;
      
      public var ikNode_1226:MovieClip;
      
      public var ikNode_1215:MovieClip;
      
      public var ikNode_1114:MovieClip;
      
      public var ikNode_1125:MovieClip;
      
      public var ikNode_1035:MovieClip;
      
      public var ikNode_1013:MovieClip;
      
      public var ikNode_967:MovieClip;
      
      public var ikNode_909:MovieClip;
      
      public var ikNode_879:MovieClip;
      
      public var ikNode_978:MovieClip;
      
      public var ikNode_857:MovieClip;
      
      public var ikNode_799:MovieClip;
      
      public var ikNode_586:MovieClip;
      
      public var ikNode_530:MovieClip;
      
      public var ikNode_611:MovieClip;
      
      public var ikNode_102:MovieClip;
      
      public var ikNode_113:MovieClip;
      
      public var ikNode_1214:MovieClip;
      
      public var ikNode_1203:MovieClip;
      
      public var ikNode_1102:MovieClip;
      
      public var ikNode_1124:MovieClip;
      
      public var ikNode_1034:MovieClip;
      
      public var ikNode_957:MovieClip;
      
      public var ikNode_968:MovieClip;
      
      public var ikNode_1089:MovieClip;
      
      public var ikNode_1070:MovieClip;
      
      public var ikNode_858:MovieClip;
      
      public var ikNode_869:MovieClip;
      
      public var ikNode_883:MovieClip;
      
      public var ikNode_1001:MovieClip;
      
      public var ikNode_993:MovieClip;
      
      public var ikNode_982:MovieClip;
      
      public var ikNode_847:MovieClip;
      
      public var ikNode_789:MovieClip;
      
      public var ikNode_711:MovieClip;
      
      public var ikNode_612:MovieClip;
      
      public var mGF:*;
      
      public var bSys:*;
      
      public var dispCont:*;
      
      public var clipHealth:*;
      
      private var colorTransformDefault:ColorTransform = new ColorTransform(1,1,1,1,0,0,0,0);
      
      private var colorTransformFreeze:ColorTransform = new ColorTransform(0.8,0.8,0.8,1,50,50,255,0);
      
      private var colorTransformPoison:ColorTransform = new ColorTransform(0.8,0.8,0.8,1,150,10,190,0);
      
      private var colorTransformBerserk:ColorTransform = new ColorTransform(0.9,0.9,0.9,1,255,0,0,0);
      
      private var colorTransformInvincible:ColorTransform = new ColorTransform(1,1,1,1,100,100,0,0);
      
      public var type:String = "";
      
      public var health:int = 100;
      
      public var healthMax:int = 100;
      
      public var speed:Number = 1;
      
      public var chrClass:* = new CHRClassStat();
      
      public var chrSkin:* = new CHRSkinStat();
      
      public var chrWeapon:* = new CHRWeaponStat();
      
      public var atkDamage:* = new ATKDamageStat();
      
      public var atkDefense:* = new ATKDefenseStat();
      
      private var _vx:Number = 0;
      
      private var _vy:Number = 0;
      
      private var _vr:Number = 0;
      
      private var _size_scale:Number = 0;
      
      private var _mult_scale:Number = 1;
      
      private var _mult_speed:Number = 1;
      
      private var _invert_x:int = -1;
      
      private var _frame_skip:int = 0;
      
      private var _act_delay:int = 0;
      
      private var _is_flying:Boolean = false;
      
      private var _is_win:Boolean = false;
      
      private var _is_enable_move:Boolean = true;
      
      private var _is_static:Boolean = false;
      
      private var _is_auto_destroy:Boolean = true;
      
      private var _is_pos_ready:Boolean = false;
      
      private var _targetX:int = 0;
      
      private var _targetY:int = 0;
      
      private var _timer_freeze:int = 0;
      
      private var _timer_shield:int = 0;
      
      private var _timer_rage:int = 0;
      
      private var _timer_slow:int = 0;
      
      private var _timer_haste:int = 0;
      
      private var _timer_stop:int = 0;
      
      private var _timer_poison:int = 0;
      
      private var _timer_regen:int = 0;
      
      private var _timer_mini:int = 0;
      
      private var _timer_giant:int = 0;
      
      private var _timer_super:int = 0;
      
      public var isMiniLock:Boolean = false;
      
      public var isGiantLock:Boolean = false;
      
      public var isSuperLock:Boolean = false;
      
      internal const _PARAM_GRAVITY:* = 0.3;
      
      internal const _PARAM_FRICTION:* = 0.9;
      
      public function Character()
      {
         super();
      }
      
      public function init(_mGF:*, _bSys:*, _TYPE:String = "", _CLASS:int = 1, _SKIN:int = 1, _WEAPON:int = 1, _X:int = 0, _SCALE:Number = 1) : *
      {
         this.mGF = _mGF;
         this.bSys = _bSys;
         this.type = _TYPE;
         this.chrClass.init(_CLASS);
         this.chrSkin.init(_SKIN);
         this.chrWeapon.init(_CLASS,_WEAPON);
         this.health = this.healthMax = this.chrClass.health + this.chrSkin.health + this.chrWeapon.health;
         this.speed = this.chrClass.speed + this.chrSkin.speed + this.chrWeapon.speed + Math.random() * 0.2;
         this.atkDamage.power = this.chrClass.power + this.chrSkin.power + this.chrWeapon.power;
         this.atkDamage.element = this.chrWeapon.getElementName();
         this.atkDamage.addStun = this.chrWeapon.addStun;
         this.atkDamage.addCritical = this.chrWeapon.addCritical;
         this.atkDamage.addFreeze = this.chrWeapon.addFreeze;
         this.atkDamage.addFly = this.chrWeapon.addFly;
         this.atkDamage.addPoison = this.chrWeapon.addPoison;
         this.atkDamage.addDrain = this.chrWeapon.addDrain;
         this.atkDamage.addMini = this.chrWeapon.addMini;
         this.atkDamage.addSlow = this.chrWeapon.addSlow;
         this.atkDamage.addStop = this.chrWeapon.addStop;
         this.atkDamage.soundSwing = this.chrWeapon.soundSwing;
         this.atkDamage.soundHit = this.chrWeapon.soundHit;
         this.atkDefense.melee = Math.min(Math.max(this.chrClass.melee + this.chrSkin.melee + this.chrWeapon.melee,-0.99),0.99);
         this.atkDefense.slash = Math.min(Math.max(this.chrClass.slash + this.chrSkin.slash + this.chrWeapon.slash,-0.99),0.99);
         this.atkDefense.pierce = Math.min(Math.max(this.chrClass.pierce + this.chrSkin.pierce + this.chrWeapon.pierce,-0.99),0.99);
         this.atkDefense.fire = Math.min(Math.max(this.chrClass.fire + this.chrSkin.fire + this.chrWeapon.fire,-0.99),0.99);
         this.atkDefense.ice = Math.min(Math.max(this.chrClass.ice + this.chrSkin.ice + this.chrWeapon.ice,-0.99),0.99);
         this.atkDefense.thunder = Math.min(Math.max(this.chrClass.thunder + this.chrSkin.thunder + this.chrWeapon.thunder,-0.99),0.99);
         this.atkDefense.isIgnorehit = this.chrClass.isIgnorehit;
         if(Boolean(this.chrClass.isHero) || Boolean(this.chrClass.isTower) || Boolean(this.chrClass.isPortal))
         {
            this._is_static = true;
         }
         this._is_auto_destroy = true;
         if(this.chrClass.isHero)
         {
            this._is_auto_destroy = false;
         }
         this.dispCont = this.mGF.contUNIT;
         this.dispCont.addChild(this);
         this.gotoAndPlay("standby");
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         this.x = _X;
         this.y = this.bSys.bgMgr.getPointY(this.x);
         this.scaleX = this.scaleY = this._size_scale = Math.abs(_SCALE);
         this.showHealthBar();
         this._frame_skip = this.bSys.getFrameNumberGenerator();
         this.transform.colorTransform = this.colorTransformDefault;
         trace("Character created !! (" + this.type + ")");
         if(this.type == "ally")
         {
            this.playSoundVoiceVictory(1);
         }
      }
      
      public function destroy() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.removeHealthBar();
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("Character destroyed !! (" + this.type + ")");
      }
      
      public function setPosition(_X:int = 0, _Y:int = 0) : *
      {
         this.x = _X;
         if(_Y < this.bSys.bgMgr.getPointY(this.x))
         {
            this.y = _Y;
            this.gotoAndPlay("fly");
            this._is_flying = true;
         }
         else
         {
            this.y = this.bSys.bgMgr.getPointY(this.x);
            this.gotoAndPlay("standby");
         }
      }
      
      public function setHealthAdjust(newVal:int = 1000) : *
      {
         this.chrClass.health = newVal;
         this.health = this.healthMax = this.chrClass.health + this.chrSkin.health + this.chrWeapon.health;
      }
      
      public function setDead() : *
      {
         this.isMiniLock = false;
         this.isGiantLock = false;
         this.isSuperLock = false;
         this.health = 0;
         this.gotoAndPlay("dead");
         this._vx = 0;
         this._vy = 0;
         this._vr = 0;
         this._is_flying = false;
         this._timer_freeze = 0;
         this._timer_shield = 0;
         this._timer_rage = 0;
         this._timer_slow = 0;
         this._timer_haste = 0;
         this._timer_stop = 0;
         this._timer_poison = 0;
         this._timer_regen = 0;
         this._timer_mini = 0;
         this._timer_giant = 0;
         this._timer_super = 0;
         if(this.type == "ally")
         {
            if(this.chrClass.isSoldier)
            {
               this.bSys.battleAllySoldierKill += 1;
            }
            if(this.chrClass.isHero)
            {
               this.bSys.battleAllyHeroKill += 1;
            }
         }
         else if(this.type == "enemy")
         {
            if(this.chrClass.isSoldier)
            {
               this.bSys.battleEnemySoldierKill += 1;
            }
            if(this.chrClass.isUndead)
            {
               this.bSys.battleEnemySoldierKill += 1;
            }
            if(this.chrClass.isTower)
            {
               this.bSys.battleEnemySoldierKill += 5;
            }
            if(this.chrClass.isPortal)
            {
               this.bSys.battleEnemySoldierKill += 10;
            }
            if(this.chrClass.isHero)
            {
               this.bSys.battleEnemyHeroKill += 1;
            }
            if(this.chrClass.isBoss)
            {
               this.bSys.battleEnemyBossKill += 1;
            }
         }
         if(this.chrClass.isSoldier)
         {
            this.playSoundVoiceDead(0.5);
         }
         else if(this.chrClass.isTower)
         {
            this.mGF.soundMgr.playSoundEffect("destroy_tower");
         }
         else if(this.chrClass.isPortal)
         {
            this.mGF.soundMgr.playSoundEffect("destroy_crypt");
         }
      }
      
      public function setWin(VAL:Boolean = true) : *
      {
         this._is_win = VAL;
      }
      
      public function setEnableMove(VAL:Boolean = true) : *
      {
         this._is_enable_move = VAL;
      }
      
      private function updatePosition() : *
      {
         if(this._is_flying)
         {
            if(this.y > this.bSys.bgMgr.getPointY(this.x) - 30 && this._vy > 0)
            {
               this.y = this.bSys.bgMgr.getPointY(this.x);
               this.rotation = 0;
               if(this.health <= 0)
               {
                  this.gotoAndPlay("dead");
               }
               else
               {
                  this.gotoAndPlay("fall");
               }
               this._is_flying = false;
               this.mGF.soundMgr.playSoundEffect("falling_ground");
            }
            else
            {
               this._vx *= 0.98;
               this._vy += 0.32;
               this._vr *= 0.9;
               this.x += this._vx;
               this.y += this._vy;
               this.rotation += this._vr;
            }
         }
         else
         {
            if(this.type == "ally")
            {
               this.faceRight();
               if(this.x > this.mGF.areaWidth - 100)
               {
                  this.x = this.mGF.areaWidth - 100;
               }
            }
            else
            {
               this.faceLeft();
               if(this.x < 100)
               {
                  this.x = 100;
               }
            }
            this.y = this.bSys.bgMgr.getPointY(this.x);
         }
         if(this._is_static == false)
         {
            this._vx *= this._PARAM_FRICTION;
            this.x += this._vx;
         }
         if(Math.abs(this.scaleX) > this._mult_scale * this._size_scale)
         {
            this.scaleX = Math.abs(this.scaleX) - 0.02;
            if(Math.abs(this.scaleX) < this._mult_scale * this._size_scale)
            {
               this.scaleX = this._mult_scale * this._size_scale * (this.scaleX / Math.abs(this.scaleX));
            }
            this.scaleY = Math.abs(this.scaleX);
            if(this.type == "ally")
            {
               this.faceRight();
            }
            else
            {
               this.faceLeft();
            }
         }
         else if(Math.abs(this.scaleX) < this._mult_scale * this._size_scale)
         {
            this.scaleX = Math.abs(this.scaleX) + 0.02;
            if(Math.abs(this.scaleX) > this._mult_scale * this._size_scale)
            {
               this.scaleX = this._mult_scale * this._size_scale * (this.scaleX / Math.abs(this.scaleX));
            }
            this.scaleY = Math.abs(this.scaleX);
            if(this.type == "ally")
            {
               this.faceRight();
            }
            else
            {
               this.faceLeft();
            }
         }
         if(this.type == "ally")
         {
            if(this.bSys.walkOpenAreaX < this.x)
            {
               this.bSys.walkOpenAreaX = this.x;
            }
         }
         if(this._is_flying || this._timer_rage > 0 || this._timer_freeze > 0 || this._timer_shield > 0 || this._timer_poison > 0)
         {
            if(this.shadow)
            {
               this.shadow.visible = false;
            }
         }
         else if(this.shadow)
         {
            this.shadow.visible = true;
         }
         if(this.type == "ally")
         {
            if(this._is_pos_ready)
            {
               if(this._vx < 0)
               {
                  if(this.x < 50)
                  {
                     this.x = 50;
                     this.y = this.bSys.bgMgr.getPointY(this.x);
                  }
               }
            }
            else if(this.x > 50)
            {
               this._is_pos_ready = true;
            }
         }
         else if(this.type == "enemy")
         {
            if(this._is_pos_ready)
            {
               if(this._vx > 0)
               {
                  if(this.x > this.mGF.areaWidth - 50)
                  {
                     this.x = this.mGF.areaWidth - 50;
                     this.y = this.bSys.bgMgr.getPointY(this.x);
                  }
               }
            }
            else if(this.x < this.mGF.areaWidth - 50)
            {
               this._is_pos_ready = true;
            }
         }
      }
      
      private function updateAction() : *
      {
         var numChildren:int = 0;
         var child:* = undefined;
         var i:* = undefined;
         if(this._act_delay <= 0)
         {
            if(this.currentLabel == "standby" || this.currentLabel == "move")
            {
               numChildren = int(this.mGF.contUNIT.numChildren);
               for(i = 0; i < numChildren; i++)
               {
                  child = this.mGF.contUNIT.getChildAt(i);
                  if(this != child)
                  {
                     if(child.isEnableHit(this.type))
                     {
                        if(this.rangeBox.hitTestObject(child.bodyBox))
                        {
                           if(this.chrClass.isPortal)
                           {
                              if(this.bSys.battleEnemyUndeadOnScreen < 5)
                              {
                                 this.gotoAndPlay("attack");
                              }
                           }
                           else
                           {
                              this.gotoAndPlay("attack");
                           }
                           this._act_delay = 24 * this.chrClass.hitActionDelay + Math.random() * 24 * 1;
                           if(this._timer_giant > 0)
                           {
                              this._act_delay += 24 * 1.5;
                           }
                           if(this._timer_super > 0)
                           {
                              this._act_delay += 24 * 2;
                           }
                           this._targetX = child.x;
                           this._targetY = child.y - child.height * 0.75;
                           if(child.isGiant())
                           {
                              this._targetY = child.y - child.height * 0.5;
                           }
                           if(this.chrClass.hitCustom == "throw")
                           {
                              this._targetY = child.y - child.height * 1.5;
                           }
                           if(this.chrClass.hitCustom == "magic")
                           {
                              this._targetY = child.y - child.height * 0.5;
                           }
                           return;
                        }
                     }
                  }
               }
               if(this.currentLabel == "standby")
               {
                  if(this._is_static == false && this._is_enable_move)
                  {
                     this.gotoAndPlay("move");
                  }
               }
               this._act_delay = 24 * 1;
               return;
            }
         }
         if(this.currentLabel == "standby" || this.currentLabel == "move")
         {
            this._act_delay = Math.max(this._act_delay - 1,0);
            if(this._timer_haste > 0)
            {
               this._act_delay = Math.max(this._act_delay - 2,0);
            }
         }
         if(this.currentLabel == "move")
         {
            if(this.type == "ally")
            {
               this.x += this.speed * this._mult_speed;
            }
            else
            {
               this.x -= this.speed * this._mult_speed;
            }
         }
      }
      
      private function updateAttack() : *
      {
         var comboGroupHitMax:int = 0;
         var numChildren:int = 0;
         var child:* = undefined;
         var i:* = undefined;
         var totalHit:int = 0;
         var totalDmg:int = 0;
         if(this.currentLabel == "attack")
         {
            if(this.currentFrame == this.chrClass.hitFrame - 10)
            {
               this.playSoundVoiceAttack(0.5);
            }
            if(this.currentFrame == this.chrClass.hitFrame - 3)
            {
               this.playSoundEffect(this.atkDamage.soundSwing);
            }
            if(this.currentFrame == this.chrClass.hitFrame)
            {
               if(this.chrClass.hitCustom == "")
               {
                  comboGroupHitMax = 3;
                  numChildren = int(this.mGF.contUNIT.numChildren);
                  totalHit = 0;
                  totalDmg = 0;
                  for(i = 0; i < numChildren; i++)
                  {
                     child = this.mGF.contUNIT.getChildAt(i);
                     if(this != child)
                     {
                        if(child.isEnableHit(this.type))
                        {
                           if(this.hitBox.hitTestObject(child.bodyBox))
                           {
                              totalDmg += child.hitCalculate(this.atkDamage);
                              if(Math.random() < this.atkDamage.addMini)
                              {
                                 child.hitEffect("mini",1,360);
                              }
                              if(Math.random() < this.atkDamage.addSlow)
                              {
                                 child.hitEffect("slow",1,360);
                              }
                              if(Math.random() < this.atkDamage.addStop)
                              {
                                 child.hitEffect("stop",1,360);
                              }
                              if(++totalHit >= comboGroupHitMax)
                              {
                                 break;
                              }
                           }
                        }
                     }
                  }
                  if(Math.random() < this.atkDamage.addDrain && totalDmg > 0)
                  {
                     this.hitHeal(totalDmg * 0.1);
                  }
                  if(totalHit > 0)
                  {
                     this.playSoundEffect(this.atkDamage.soundHit);
                  }
               }
               else
               {
                  this.shootWeapon();
               }
            }
         }
      }
      
      private function updateStat() : *
      {
         if(this.currentLabel == "dead")
         {
            this._timer_freeze = 0;
            this._timer_shield = 0;
            this._timer_rage = 0;
            this._timer_slow = 0;
            this._timer_haste = 0;
            this._timer_stop = 0;
            this._timer_poison = 0;
            this._timer_regen = 0;
            this._timer_mini = 0;
            this._timer_giant = 0;
            this._timer_super = 0;
            this._is_flying = false;
         }
         else
         {
            if(this.isMiniLock)
            {
               this._timer_mini = 9999;
            }
            if(this.isGiantLock)
            {
               this._timer_giant = 9999;
            }
            if(this.isSuperLock)
            {
               this._timer_super = 9999;
            }
            if(this._timer_slow > 0)
            {
               this._timer_slow = Math.max(this._timer_slow - 1,0);
            }
            if(this._timer_haste > 0)
            {
               this._timer_haste = Math.max(this._timer_haste - 1,0);
            }
            if(this._timer_stop > 0)
            {
               this._timer_stop = Math.max(this._timer_stop - 1,0);
            }
            if(this._timer_mini > 0)
            {
               this._timer_mini = Math.max(this._timer_mini - 1,0);
            }
            if(this._timer_giant > 0)
            {
               this._timer_giant = Math.max(this._timer_giant - 1,0);
            }
            if(this._timer_super > 0)
            {
               this._timer_super = Math.max(this._timer_super - 1,0);
            }
            if(this._timer_slow)
            {
               this._mult_speed = 0.5;
            }
            else if(this._timer_haste)
            {
               this._mult_speed = 2;
            }
            else if(this._timer_stop)
            {
               this._mult_speed = 0;
            }
            else
            {
               this._mult_speed = 1;
            }
            if(this._timer_mini)
            {
               this._mult_scale = 0.5;
            }
            else if(this._timer_giant)
            {
               this._mult_scale = 2;
            }
            else if(this._timer_super)
            {
               this._mult_scale = 4;
            }
            else
            {
               this._mult_scale = 1;
            }
            if(this._timer_regen > 0)
            {
               this._timer_regen = Math.max(this._timer_regen - 1,0);
               if(this._timer_regen % 60 == 0)
               {
                  this.hitHeal(this.healthMax * 0.1);
               }
            }
            if(this._timer_rage > 0)
            {
               this.transform.colorTransform = this.colorTransformBerserk;
               this._timer_rage = Math.max(this._timer_rage - 1,0);
               if(this._timer_rage <= 0)
               {
                  this.transform.colorTransform = this.colorTransformDefault;
               }
            }
            if(this._timer_shield > 0)
            {
               this.transform.colorTransform = this.colorTransformInvincible;
               this._timer_shield = Math.max(this._timer_shield - 1,0);
               if(this._timer_shield <= 0)
               {
                  this.transform.colorTransform = this.colorTransformDefault;
               }
            }
            if(this._timer_poison > 0)
            {
               this.transform.colorTransform = this.colorTransformPoison;
               this._timer_poison = Math.max(this._timer_poison - 1,0);
               if(this._timer_poison <= 0)
               {
                  this.transform.colorTransform = this.colorTransformDefault;
               }
               if(this._timer_poison % 60 == 0)
               {
                  this.hitPoison(this.health * 0.1);
               }
            }
            if(this._timer_freeze > 0)
            {
               if(this.currentLabel != "freeze" || this.currentLabel != "fly" || this.currentLabel != "dead")
               {
                  this.gotoAndPlay("freeze");
                  this.transform.colorTransform = this.colorTransformFreeze;
               }
               this._timer_freeze = Math.max(this._timer_freeze - 1,0);
               if(this._timer_freeze <= 0)
               {
                  this.gotoAndPlay("stand");
                  this.transform.colorTransform = this.colorTransformDefault;
               }
            }
            this.atkDamage.updateRage(this._timer_rage);
            this.atkDamage.updateMini(this._timer_mini);
            this.atkDamage.updateGiant(this._timer_giant);
            this.atkDamage.updateSuper(this._timer_super);
            this.atkDefense.updateFreeze(this._timer_freeze);
            this.atkDefense.updateShield(this._timer_shield);
            this.atkDefense.updatePoison(this._timer_poison);
            this.atkDefense.updateMini(this._timer_mini);
            this.atkDefense.updateGiant(this._timer_giant);
            this.atkDefense.updateSuper(this._timer_super);
         }
      }
      
      private function updateWin() : *
      {
         if(this._is_win)
         {
            if(this.currentLabel == "standby" || this.currentLabel == "move")
            {
               if(this.chrClass.isSoldier)
               {
                  this.gotoAndPlay("win");
               }
            }
         }
      }
      
      private function updateDeadHandle() : *
      {
         var clip:* = undefined;
         if(this.currentLabel == "dead")
         {
            if(this._is_auto_destroy)
            {
               if(this.currentFrame == this.totalFrames)
               {
                  if(this.chrClass.isSoldier)
                  {
                     clip = new RIP();
                     clip.init(this.mGF,this.bSys,this.chrClass.id,this.chrSkin.id,this.chrWeapon.id,this.x);
                  }
                  this.destroy();
               }
            }
         }
      }
      
      private function frameHandle(event:Event) : void
      {
         if(this.type == "")
         {
            return;
         }
         if(this.mGF.isPaused)
         {
            this.stop();
         }
         else
         {
            if(this.currentFrame < this.totalFrames)
            {
               this.play();
            }
            if(this.bSys.battleEvent == "engage")
            {
               this.updateAction();
            }
            this.updateWin();
            this.updatePosition();
            this.updateAttack();
            this.updateStat();
            this.updateHealthBar();
            this.updateDeadHandle();
         }
      }
      
      public function isEnableHit(TARGETtype:String = "") : Boolean
      {
         if(this.health > 0 && this.currentLabel != "dead" && this.currentLabel != "fly")
         {
            if(TARGETtype == "ally")
            {
               if(this.type == "enemy")
               {
                  return true;
               }
            }
            else if(TARGETtype == "enemy")
            {
               if(this.type == "ally")
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function isEnableUnitBoost(TARGETtype:String = "") : Boolean
      {
         if(this.health > 0 && this.currentLabel != "dead" && this.currentLabel != "fly")
         {
            if(TARGETtype == this.type)
            {
               if(this.chrClass.isSoldier)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function isGiant() : Boolean
      {
         if(this._timer_giant > 0 || this._timer_super > 0)
         {
            return true;
         }
         return false;
      }
      
      private function shootWeapon() : *
      {
         var clip:* = undefined;
         if(this.chrClass.hitCustom == "arrow")
         {
            if(this.atkDamage.element == "melee")
            {
               clip = new ARROW_MELEE();
            }
            else if(this.atkDamage.element == "slash")
            {
               clip = new ARROW_SLASH();
            }
            else if(this.atkDamage.element == "pierce")
            {
               clip = new ARROW_PIERCE();
            }
            else if(this.atkDamage.element == "fire")
            {
               clip = new ARROW_FIRE();
            }
            else if(this.atkDamage.element == "ice")
            {
               clip = new ARROW_ICE();
            }
            else if(this.atkDamage.element == "thunder")
            {
               clip = new ARROW_THUNDER();
            }
            clip.init(this.mGF,this.bSys,this.type,this.atkDamage,this.x,this.y - this.height / 2,this._targetX,this._targetY,Math.abs(this.scaleX));
         }
         if(this.chrClass.hitCustom == "magic")
         {
            if(this.atkDamage.element == "melee")
            {
               clip = new MAGIC_MELEE();
            }
            else if(this.atkDamage.element == "slash")
            {
               clip = new MAGIC_SLASH();
            }
            else if(this.atkDamage.element == "pierce")
            {
               clip = new MAGIC_PIERCE();
            }
            else if(this.atkDamage.element == "fire")
            {
               clip = new MAGIC_FIRE();
            }
            else if(this.atkDamage.element == "ice")
            {
               clip = new MAGIC_ICE();
            }
            else if(this.atkDamage.element == "thunder")
            {
               clip = new MAGIC_THUNDER();
            }
            clip.init(this.mGF,this.bSys,this.type,this.atkDamage,this.x,this.y - this.height / 2,this._targetX,this._targetY,Math.abs(this.scaleX));
         }
         if(this.chrClass.hitCustom == "throw")
         {
            if(this.chrWeapon.id == 1)
            {
               clip = new THROW_01_EGG();
            }
            else if(this.chrWeapon.id == 2)
            {
               clip = new THROW_02_POT();
            }
            else if(this.chrWeapon.id == 3)
            {
               clip = new THROW_03_GRENADE();
            }
            else if(this.chrWeapon.id == 4)
            {
               clip = new THROW_04_RADIO();
            }
            else if(this.chrWeapon.id == 5)
            {
               clip = new THROW_05_POISON();
            }
            else if(this.chrWeapon.id == 6)
            {
               clip = new THROW_06_TNT();
            }
            else if(this.chrWeapon.id == 7)
            {
               clip = new THROW_07_ANIMAL();
            }
            else if(this.chrWeapon.id == 8)
            {
               clip = new THROW_08_ROCK();
            }
            else if(this.chrWeapon.id == 9)
            {
               clip = new THROW_09_DYNAMIT();
            }
            else if(this.chrWeapon.id == 10)
            {
               clip = new THROW_10_MELON();
            }
            else if(this.chrWeapon.id == 11)
            {
               clip = new THROW_11_TV();
            }
            else if(this.chrWeapon.id == 12)
            {
               clip = new THROW_12_NUCLEAR();
            }
            if(clip)
            {
               if(this.chrWeapon.id == 11 || this.chrWeapon.id == 12)
               {
                  clip.init(this.mGF,this.bSys,this.type,this.atkDamage,this.x,this.y - this.height,this._targetX,this._targetY - 100,Math.abs(this.scaleX));
               }
               else
               {
                  clip.init(this.mGF,this.bSys,this.type,this.atkDamage,this.x,this.y - this.height / 2,this._targetX,this._targetY,Math.abs(this.scaleX));
               }
            }
         }
         if(this.chrClass.hitCustom == "tower_arrow")
         {
            if(this.atkDamage.element == "melee")
            {
               clip = new ARROW_MELEE();
            }
            else if(this.atkDamage.element == "slash")
            {
               clip = new ARROW_SLASH();
            }
            else if(this.atkDamage.element == "pierce")
            {
               clip = new ARROW_PIERCE();
            }
            else if(this.atkDamage.element == "fire")
            {
               clip = new ARROW_FIRE();
            }
            else if(this.atkDamage.element == "ice")
            {
               clip = new ARROW_ICE();
            }
            else if(this.atkDamage.element == "thunder")
            {
               clip = new ARROW_THUNDER();
            }
            clip.init(this.mGF,this.bSys,this.type,this.atkDamage,this.x,this.y - this.height * 0.7,this._targetX,this._targetY,0.25);
         }
         if(this.chrClass.hitCustom == "tower_magic")
         {
            if(this.atkDamage.element == "melee")
            {
               clip = new MAGIC_MELEE();
            }
            else if(this.atkDamage.element == "slash")
            {
               clip = new MAGIC_SLASH();
            }
            else if(this.atkDamage.element == "pierce")
            {
               clip = new MAGIC_PIERCE();
            }
            else if(this.atkDamage.element == "fire")
            {
               clip = new MAGIC_FIRE();
            }
            else if(this.atkDamage.element == "ice")
            {
               clip = new MAGIC_ICE();
            }
            else if(this.atkDamage.element == "thunder")
            {
               clip = new MAGIC_THUNDER();
            }
            clip.init(this.mGF,this.bSys,this.type,this.atkDamage,this.x,this.y - this.height / 2,this._targetX,this._targetY,0.25);
         }
         if(this.chrClass.hitCustom == "summon_zombie")
         {
            this.bSys.charMgr.createUnitZombie(this.type,this.x);
         }
         else if(this.chrClass.hitCustom == "summon_skeleton")
         {
            this.bSys.charMgr.createUnitSkeleton(this.type,this.x);
         }
         else if(this.chrClass.hitCustom == "summon_ghost")
         {
            this.bSys.charMgr.createUnitGhost(this.type,this.x);
         }
      }
      
      public function showHealthBar() : *
      {
         if(this.clipHealth == null)
         {
            if(this.type == "ally")
            {
               this.clipHealth = new player_hbar_mc();
            }
            else
            {
               this.clipHealth = new enemy_hbar_mc();
            }
            this.addChild(this.clipHealth);
            this.clipHealth.y = -this.height;
         }
      }
      
      public function removeHealthBar() : *
      {
         if(this.clipHealth)
         {
            this.removeChild(this.clipHealth);
            this.clipHealth = null;
         }
      }
      
      public function updateHealthBar() : *
      {
         if(this.mGF.datMgr.opt_show_health_bar >= 1)
         {
            this.showHealthBar();
         }
         else
         {
            this.removeHealthBar();
         }
         if(this.clipHealth)
         {
            if(this.currentLabel == "fly")
            {
               this.clipHealth.visible = false;
            }
            else
            {
               this.clipHealth.visible = true;
            }
            this.clipHealth.bar.scaleX = this.health / this.healthMax;
            if(this.isFaceLeft())
            {
               this.clipHealth.scaleX = -1;
            }
            else if(this.isFaceRight())
            {
               this.clipHealth.scaleX = 1;
            }
            if(Boolean(this.chrClass.isTower) || Boolean(this.chrClass.isPortal))
            {
               if(this.isFaceLeft())
               {
                  this.clipHealth.scaleX = -0.25;
               }
               else if(this.isFaceRight())
               {
                  this.clipHealth.scaleX = 0.25;
               }
               this.clipHealth.scaleY = 0.25;
            }
         }
      }
      
      public function hitCalculate(targetAtkDamage:*) : int
      {
         var atkResult:* = new ATKEffectStat(targetAtkDamage,this.atkDefense);
         if(atkResult.damage > 0)
         {
            if(this._is_static)
            {
               if(Math.random() < atkResult.hitCritical)
               {
                  atkResult.damage *= 2;
                  this.mGF.effectMgr.setHitCritText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               }
               else if(Math.random() < atkResult.hitStun)
               {
                  atkResult.damage *= 1.1;
                  this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               }
               else
               {
                  this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               }
            }
            else if(Math.random() < atkResult.hitFly)
            {
               if(this._timer_freeze > 0)
               {
                  this._timer_freeze = 0;
               }
               this.gotoAndPlay("fly");
               this.y = this.bSys.bgMgr.getPointY(this.x) - this.height / 2;
               this._vx = 0;
               this._vy = -(8 + Math.random() * 4);
               this._vr = -20 + Math.random() * 40;
               this._is_flying = true;
               this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               this.playSoundVoiceHit(0.8);
            }
            else if(Math.random() < atkResult.hitFreeze)
            {
               this.gotoAndPlay("freeze");
               this._timer_freeze = 24 * (5 + Math.random() * 5);
               this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               this.playSoundVoiceHit(0.5);
            }
            else if(Math.random() < atkResult.hitCritical)
            {
               atkResult.damage *= 1.5;
               if(this.currentLabel != "freeze")
               {
                  this.gotoAndPlay("hit");
               }
               if(this.isFaceRight())
               {
                  this._vx = -10 + Math.random() * -5;
               }
               else
               {
                  this._vx = 10 + Math.random() * 5;
               }
               this.mGF.effectMgr.setHitCritText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               this.playSoundVoiceHit(1);
            }
            else if(Math.random() < atkResult.hitPoison)
            {
               atkResult.damage *= 1.1;
               if(this.currentLabel != "freeze")
               {
                  this.gotoAndPlay("hit");
               }
               this._timer_poison = 24 * (10 + Math.random() * 5);
               this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               this.playSoundVoiceHit(0.5);
            }
            else if(Math.random() < atkResult.hitStun)
            {
               atkResult.damage *= 1.1;
               if(this.currentLabel != "freeze")
               {
                  this.gotoAndPlay("hit");
               }
               this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
               this.playSoundVoiceHit(0.5);
            }
            else
            {
               this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(atkResult.damage)));
            }
         }
         else if(atkResult.damage < 0)
         {
            this.mGF.effectMgr.setHitHealText(this.x,this.y - this.height * 0.5,String("+" + Math.abs(atkResult.damage)));
         }
         else
         {
            this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("0"));
         }
         this.health = Math.min(Math.max(this.health - atkResult.damage,0),this.healthMax);
         if(this.health <= 0)
         {
            this.setDead();
         }
         this._is_enable_move = true;
         return atkResult.damage;
      }
      
      public function hitHeal(VAL:int = 0) : *
      {
         if(this.currentLabel != "dead")
         {
            this.health = Math.min(Math.max(this.health + VAL,0),this.healthMax);
            this.mGF.effectMgr.setHitHealText(this.x,this.y - this.height * 0.5,String("+" + Math.abs(VAL)));
         }
      }
      
      public function hitPoison(VAL:int = 0) : *
      {
         if(this.currentLabel != "dead")
         {
            this.health = Math.min(Math.max(this.health - VAL,0),this.healthMax);
            this.mGF.effectMgr.setHitText(this.x,this.y - this.height * 0.5,String("-" + Math.abs(VAL)));
            if(this.currentLabel == "move")
            {
               this.gotoAndPlay("hit");
            }
            if(this.health <= 0)
            {
               this.gotoAndPlay("dead");
            }
         }
      }
      
      public function hitEffect(EFFECT:String = "", RAND:Number = 1, TIMER:int = 360) : *
      {
         trace("Effect=" + EFFECT + " HP=" + this.health + " state=" + this.currentLabel);
         if(this.health <= 0 || this.currentLabel == "dead" || this.currentLabel == "fly")
         {
            return;
         }
         if(this._is_static)
         {
            return;
         }
         if(Math.random() < RAND && !this.atkDefense.isIgnorehit)
         {
            if(EFFECT == "fly")
            {
               if(this._timer_freeze > 0)
               {
                  this._timer_freeze = 0;
               }
               this.gotoAndPlay("fly");
               this.y = this.bSys.bgMgr.getPointY(this.x) - this.height / 2;
               this._vx = 0;
               this._vy = -(8 + Math.random() * 4);
               this._vr = -20 + Math.random() * 40;
               this._is_flying = true;
            }
            else if(EFFECT == "regen")
            {
               this._timer_regen = TIMER;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("regen"));
            }
            else if(EFFECT == "freeze")
            {
               this.gotoAndPlay("freeze");
               this._timer_freeze = TIMER;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("freeze"));
            }
            else if(EFFECT == "poison")
            {
               this._timer_poison = TIMER;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("poison"));
            }
            else if(EFFECT == "rage")
            {
               this._timer_rage = TIMER;
               this._timer_shield = 0;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("rage"));
            }
            else if(EFFECT == "shield")
            {
               this._timer_rage = 0;
               this._timer_shield = TIMER;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("iron skin"));
            }
            else if(EFFECT == "slow")
            {
               this._timer_slow = TIMER;
               this._timer_haste = 0;
               this._timer_stop = 0;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("slow"));
            }
            else if(EFFECT == "haste")
            {
               this._timer_slow = 0;
               this._timer_haste = TIMER;
               this._timer_stop = 0;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("haste"));
            }
            else if(EFFECT == "stop")
            {
               this._timer_slow = 0;
               this._timer_haste = 0;
               this._timer_stop = TIMER;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("stop"));
            }
            else if(EFFECT == "mini")
            {
               this._timer_mini = TIMER;
               this._timer_giant = 0;
               this._timer_super = 0;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("mini"));
            }
            else if(EFFECT == "giant")
            {
               this._timer_mini = 0;
               this._timer_giant = TIMER;
               this._timer_super = 0;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("giant"));
            }
            else if(EFFECT == "super")
            {
               this._timer_mini = 0;
               this._timer_giant = 0;
               this._timer_super = TIMER;
               this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("super"));
            }
         }
         else
         {
            this.mGF.effectMgr.setHitEffectText(this.x,this.y - this.height * 0.5,String("miss!"));
         }
         trace(EFFECT);
      }
      
      private function faceLeft() : *
      {
         this.scaleX = Math.abs(this.scaleX) * this._invert_x;
      }
      
      private function faceRight() : *
      {
         this.scaleX = Math.abs(this.scaleX) * -1 * this._invert_x;
      }
      
      public function isFaceLeft() : Boolean
      {
         if(this.scaleX * this._invert_x > 0)
         {
            return true;
         }
         return false;
      }
      
      public function isFaceRight() : Boolean
      {
         if(this.scaleX * this._invert_x < 0)
         {
            return true;
         }
         return false;
      }
      
      private function playSoundVoiceVictory(RANDVAL:Number = 1) : *
      {
         if(Math.random() < RANDVAL)
         {
            if(this.chrSkin.soundVoice == "male")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_victory1");
            }
            if(this.chrSkin.soundVoice == "male2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_victory2");
            }
            if(this.chrSkin.soundVoice == "girl")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_victory1");
            }
            if(this.chrSkin.soundVoice == "girl2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_victory2");
            }
            if(this.chrSkin.soundVoice == "alien")
            {
               this.mGF.soundMgr.playSoundEffect("voice_alien_victory1");
            }
         }
      }
      
      private function playSoundVoiceAttack(RANDVAL:Number = 1) : *
      {
         if(Math.random() < RANDVAL)
         {
            if(this.chrSkin.soundVoice == "male")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_attack1");
            }
            if(this.chrSkin.soundVoice == "male2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_attack2");
            }
            if(this.chrSkin.soundVoice == "girl")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_attack1");
            }
            if(this.chrSkin.soundVoice == "girl2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_attack2");
            }
            if(this.chrSkin.soundVoice == "alien")
            {
               this.mGF.soundMgr.playSoundEffect("voice_alien_attack1");
            }
         }
      }
      
      private function playSoundVoiceHit(RANDVAL:Number = 1) : *
      {
         if(Math.random() < RANDVAL)
         {
            if(this.chrSkin.soundVoice == "male")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_hit1");
            }
            if(this.chrSkin.soundVoice == "male2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_hit2");
            }
            if(this.chrSkin.soundVoice == "girl")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_hit1");
            }
            if(this.chrSkin.soundVoice == "girl2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_hit2");
            }
            if(this.chrSkin.soundVoice == "alien")
            {
               this.mGF.soundMgr.playSoundEffect("voice_alien_hit1");
            }
         }
      }
      
      private function playSoundVoiceDead(RANDVAL:Number = 1) : *
      {
         if(Math.random() < RANDVAL)
         {
            if(this.chrSkin.soundVoice == "male")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_die1");
            }
            if(this.chrSkin.soundVoice == "male2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_male_die2");
            }
            if(this.chrSkin.soundVoice == "girl")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_die1");
            }
            if(this.chrSkin.soundVoice == "girl2")
            {
               this.mGF.soundMgr.playSoundEffect("voice_girl_die2");
            }
            if(this.chrSkin.soundVoice == "alien")
            {
               this.mGF.soundMgr.playSoundEffect("voice_alien_die1");
            }
         }
      }
      
      private function playSoundEffect(NAME:String = "", RANDVAL:Number = 1) : *
      {
         if(Math.random() < RANDVAL)
         {
            this.mGF.soundMgr.playSoundEffect(NAME,RANDVAL);
         }
      }
   }
}

