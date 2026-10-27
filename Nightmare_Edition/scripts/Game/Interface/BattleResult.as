package Game.Interface
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.*;
   import flash.text.TextField;
   
   public class BattleResult extends MovieClip
   {
      
      public var btn_close:SimpleButton;
      
      public var result_bg:MovieClip;
      
      public var btn_playmore:SimpleButton;
      
      public var ads:MovieClip;
      
      public var result_pic:MovieClip;
      
      public var promo:MovieClip;
      
      public var reward:TextField;
      
      public var promo2:MovieClip;
      
      public var killbonus:TextField;
      
      public var result:TextField;
      
      public var loot1:MovieClip;
      
      public var promo3:MovieClip;
      
      public var loot2:MovieClip;
      
      public var promo4:MovieClip;
      
      public var objective:TextField;
      
      public var loot3:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var lootInfo1:int = 0;
      
      private var lootInfo2:int = 0;
      
      private var lootInfo3:int = 0;
      
      private var endingFlag:Boolean = false;
      
      public function BattleResult()
      {
         super();
      }
      
      public function init(_mGF:*) : *
      {
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this.btn_playmore.addEventListener(MouseEvent.CLICK,this.playmoreClick,false,0,true);
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         this.promo.addEventListener(MouseEvent.CLICK,this.promoClick);
         this.promo.buttonMode = true;
         this.promo2.addEventListener(MouseEvent.CLICK,this.promo2Click);
         this.promo2.buttonMode = true;
         this.promo3.addEventListener(MouseEvent.CLICK,this.promo3Click);
         this.promo3.buttonMode = true;
         this.promo4.addEventListener(MouseEvent.CLICK,this.promo4Click);
         this.promo4.buttonMode = true;
         trace("init result ... ok !");
         var randVal:Number = Math.random();
         this.ads.visible = false;
         this.promo.visible = false;
         this.promo2.visible = false;
         this.promo3.visible = false;
         this.promo4.visible = false;
         if(this.mGF.hostMgr._host_name == "kongregate")
         {
            if(randVal <= 0.5)
            {
               this.promo4.visible = true;
            }
            else
            {
               this.ads.visible = true;
               this.mGF.hostMgr.adsShowKong(this.ads);
            }
         }
         else if(this.mGF.hostMgr._host_name != "armorgames")
         {
            if(this.mGF.hostMgr._host_name != "andkon")
            {
               if(randVal <= 0.4)
               {
                  this.ads.visible = true;
                  this.mGF.hostMgr.adsShowInGame(this.ads);
               }
               else if(randVal > 0.4 && randVal <= 0.7)
               {
                  this.promo4.visible = true;
               }
               else
               {
                  this.ads.visible = true;
                  this.mGF.hostMgr.adsShowKong(this.ads);
               }
            }
         }
      }
      
      public function setObjectiveName(NAME:String = "") : *
      {
         this.objective.htmlText = NAME;
      }
      
      public function setResult(NAME:String = "") : *
      {
         this.result.htmlText = NAME;
      }
      
      public function setKillBonus(NAME:String = "") : *
      {
         this.killbonus.htmlText = NAME;
      }
      
      public function setQuestReward(NAME:String = "") : *
      {
         this.reward.htmlText = NAME;
      }
      
      public function setQuestLoot(UNLOCK_ID:int = 0, COMMON_ID:int = 0, RARE_ID:int = 0) : *
      {
         var SLOT1:int = 0;
         var SLOT2:int = 0;
         var SLOT3:int = 0;
         if(UNLOCK_ID > 0)
         {
            SLOT1 = UNLOCK_ID;
         }
         if(COMMON_ID > 0)
         {
            if(SLOT1 <= 0)
            {
               SLOT1 = COMMON_ID;
            }
            else
            {
               SLOT2 = COMMON_ID;
            }
         }
         if(RARE_ID > 0)
         {
            if(SLOT1 <= 0)
            {
               SLOT1 = RARE_ID;
            }
            else if(SLOT2 <= 0)
            {
               SLOT2 = RARE_ID;
            }
            else
            {
               SLOT3 = RARE_ID;
            }
         }
         this.loot1.gotoAndStop(1);
         this.loot2.gotoAndStop(1);
         this.loot3.gotoAndStop(1);
         this.lootInfo1 = this.lootInfo2 = this.lootInfo3 = 0;
         if(SLOT1 > 0)
         {
            this.lootInfo1 = SLOT1;
            this.loot1.gotoAndStop(SLOT1);
            this.loot1.addEventListener(MouseEvent.MOUSE_OVER,this.loot1Over,false,0,true);
         }
         if(SLOT2 > 0)
         {
            this.lootInfo2 = SLOT2;
            this.loot2.gotoAndStop(SLOT2);
            this.loot2.addEventListener(MouseEvent.MOUSE_OVER,this.loot2Over,false,0,true);
         }
         if(SLOT3 > 0)
         {
            this.lootInfo3 = SLOT3;
            this.loot3.gotoAndStop(SLOT3);
            this.loot3.addEventListener(MouseEvent.MOUSE_OVER,this.loot3Over,false,0,true);
         }
      }
      
      public function setHeroWin() : *
      {
         if(this.mGF.datMgr.hero_type == 1)
         {
            this.result_pic.gotoAndStop(1);
         }
         if(this.mGF.datMgr.hero_type == 2)
         {
            this.result_pic.gotoAndStop(2);
         }
         if(this.mGF.datMgr.hero_type == 3)
         {
            this.result_pic.gotoAndStop(3);
         }
         this.result_bg.gotoAndStop(1);
      }
      
      public function setHeroLose() : *
      {
         if(this.mGF.datMgr.hero_type == 1)
         {
            this.result_pic.gotoAndStop(4);
         }
         if(this.mGF.datMgr.hero_type == 2)
         {
            this.result_pic.gotoAndStop(5);
         }
         if(this.mGF.datMgr.hero_type == 3)
         {
            this.result_pic.gotoAndStop(6);
         }
         this.result_bg.gotoAndStop(2);
      }
      
      public function setEnding() : *
      {
         this.endingFlag = true;
         trace("ENDING INIT ... ");
      }
      
      private function playStoryEnding() : *
      {
         var clip:* = undefined;
         if(this.mGF.datMgr.hero_type == 1)
         {
            clip = new hero1_story_ending_mc();
            clip.init(this.mGF);
         }
         else if(this.mGF.datMgr.hero_type == 2)
         {
            clip = new hero2_story_ending_mc();
            clip.init(this.mGF);
         }
         else
         {
            clip = new hero3_story_ending_mc();
            clip.init(this.mGF);
         }
      }
      
      private function itemOver(CLIP:*, ID:int = 0) : *
      {
         var classStat:* = new CHRClassStat(1);
         var skinStat:* = new CHRSkinStat(1);
         var weaponStat:* = new CHRWeaponStat(1,1);
         if(ID >= 2 && ID <= 9)
         {
            classStat.init2(ID);
            this.mGF.utilMgr.infoTip(CLIP,10,classStat.name,String(""),String("Health\t\t" + classStat.health + "\n" + "Power\t\t" + classStat.power + "\n" + "Speed\t\t" + classStat.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(classStat.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(classStat.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(classStat.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(classStat.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(classStat.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(classStat.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + classStat.costMana));
         }
         if(ID >= 21 && ID <= 80)
         {
            skinStat.init2(ID);
            this.mGF.utilMgr.infoTip(CLIP,10,skinStat.name,String(""),String("Health\t\t" + skinStat.health + "\n" + "Power\t\t" + skinStat.power + "\n" + "Speed\t\t" + skinStat.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(skinStat.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(skinStat.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(skinStat.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(skinStat.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(skinStat.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(skinStat.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + skinStat.costMana));
         }
         else if(ID >= 81)
         {
            weaponStat.init2(ID);
            this.mGF.utilMgr.infoTip(CLIP,10,weaponStat.name,String(""),String("Health\t\t" + weaponStat.health + "\n" + "Power\t\t" + weaponStat.power + "\t" + weaponStat.desc + "\n" + "Speed\t\t" + weaponStat.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(weaponStat.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(weaponStat.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(weaponStat.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(weaponStat.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(weaponStat.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(weaponStat.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + weaponStat.costMana));
         }
      }
      
      public function destroy() : *
      {
         this.mGF.hostMgr.adRemove();
         this.btn_playmore.removeEventListener(MouseEvent.CLICK,this.playmoreClick);
         this.loot1.removeEventListener(MouseEvent.MOUSE_OVER,this.loot1Over);
         this.loot2.removeEventListener(MouseEvent.MOUSE_OVER,this.loot2Over);
         this.loot3.removeEventListener(MouseEvent.MOUSE_OVER,this.loot3Over);
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.promo.removeEventListener(MouseEvent.CLICK,this.promoClick);
         this.promo2.removeEventListener(MouseEvent.CLICK,this.promo2Click);
         this.promo3.removeEventListener(MouseEvent.CLICK,this.promo3Click);
         this.promo4.removeEventListener(MouseEvent.CLICK,this.promo4Click);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy result ... ok !");
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         var clip:* = new worldmap_mc();
         clip.init(this.mGF);
         if(this.endingFlag)
         {
            this.playStoryEnding();
         }
         this.mGF.requestSave();
         this.destroy();
      }
      
      private function promoClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo);
         navigateToURL(targetURL,"_blank");
      }
      
      private function promo2Click(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo2);
         navigateToURL(targetURL,"_blank");
      }
      
      private function promo3Click(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo3);
         navigateToURL(targetURL,"_blank");
      }
      
      private function promo4Click(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_promo4);
         navigateToURL(targetURL,"_blank");
      }
      
      private function playmoreClick(event:MouseEvent) : void
      {
         var targetURL:URLRequest = new URLRequest(this.mGF.hostMgr._link_sponsor);
         navigateToURL(targetURL,"_blank");
      }
      
      private function loot1Over(event:MouseEvent) : void
      {
         this.itemOver(this.loot1,this.lootInfo1);
      }
      
      private function loot2Over(event:MouseEvent) : void
      {
         this.itemOver(this.loot2,this.lootInfo2);
      }
      
      private function loot3Over(event:MouseEvent) : void
      {
         this.itemOver(this.loot3,this.lootInfo3);
      }
   }
}

