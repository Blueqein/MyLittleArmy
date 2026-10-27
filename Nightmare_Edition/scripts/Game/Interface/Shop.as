package Game.Interface
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class Shop extends MovieClip
   {
      
      public var btn_close:SimpleButton;
      
      public var item_07:MovieClip;
      
      public var item_08:MovieClip;
      
      public var item_09:MovieClip;
      
      public var btn_buy:SimpleButton;
      
      public var money:TextField;
      
      public var item_01:MovieClip;
      
      public var item_10:MovieClip;
      
      public var price:TextField;
      
      public var item_02:MovieClip;
      
      public var item_03:MovieClip;
      
      public var item_04:MovieClip;
      
      public var item_05:MovieClip;
      
      public var item_06:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var confirmBuy:* = null;
      
      private var itemSelectSlot:int = 0;
      
      private var itemID_01:int = 0;
      
      private var itemID_01_Price:int = 0;
      
      private var itemID_02:int = 0;
      
      private var itemID_02_Price:int = 0;
      
      private var itemID_03:int = 0;
      
      private var itemID_03_Price:int = 0;
      
      private var itemID_04:int = 0;
      
      private var itemID_04_Price:int = 0;
      
      private var itemID_05:int = 0;
      
      private var itemID_05_Price:int = 0;
      
      private var itemID_06:int = 0;
      
      private var itemID_06_Price:int = 0;
      
      private var itemID_07:int = 0;
      
      private var itemID_07_Price:int = 0;
      
      private var itemID_08:int = 0;
      
      private var itemID_08_Price:int = 0;
      
      private var itemID_09:int = 0;
      
      private var itemID_09_Price:int = 0;
      
      private var itemID_10:int = 0;
      
      private var itemID_10_Price:int = 0;
      
      public function Shop()
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
         this.confirmBuy = this.mGF.utilMgr.confirmDialogYesNo("Confirmation","Take it ?");
         this.item_01.gotoAndStop(1);
         this.item_02.gotoAndStop(1);
         this.item_03.gotoAndStop(1);
         this.item_04.gotoAndStop(1);
         this.item_05.gotoAndStop(1);
         this.item_06.gotoAndStop(1);
         this.item_07.gotoAndStop(1);
         this.item_08.gotoAndStop(1);
         this.item_09.gotoAndStop(1);
         this.item_10.gotoAndStop(1);
         this.item_01.select.visible = false;
         this.item_02.select.visible = false;
         this.item_03.select.visible = false;
         this.item_04.select.visible = false;
         this.item_05.select.visible = false;
         this.item_06.select.visible = false;
         this.item_07.select.visible = false;
         this.item_08.select.visible = false;
         this.item_09.select.visible = false;
         this.item_10.select.visible = false;
         this.selectItem(0);
         this.generateRandomItem();
         this.price.htmlText = "-";
         this.money.htmlText = this.mGF.datMgr.stat_money;
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         this.btn_buy.addEventListener(MouseEvent.CLICK,this.buyClick,false,0,true);
         this.btn_buy.visible = false;
         if(this.itemID_01 > 0)
         {
            this.item_01.addEventListener(MouseEvent.CLICK,this.item01Click,false,0,true);
            this.item_01.addEventListener(MouseEvent.MOUSE_OVER,this.item01Over,false,0,true);
         }
         if(this.itemID_02 > 0)
         {
            this.item_02.addEventListener(MouseEvent.CLICK,this.item02Click,false,0,true);
            this.item_02.addEventListener(MouseEvent.MOUSE_OVER,this.item02Over,false,0,true);
         }
         if(this.itemID_03 > 0)
         {
            this.item_03.addEventListener(MouseEvent.CLICK,this.item03Click,false,0,true);
            this.item_03.addEventListener(MouseEvent.MOUSE_OVER,this.item03Over,false,0,true);
         }
         if(this.itemID_04 > 0)
         {
            this.item_04.addEventListener(MouseEvent.CLICK,this.item04Click,false,0,true);
            this.item_04.addEventListener(MouseEvent.MOUSE_OVER,this.item04Over,false,0,true);
         }
         if(this.itemID_05 > 0)
         {
            this.item_05.addEventListener(MouseEvent.CLICK,this.item05Click,false,0,true);
            this.item_05.addEventListener(MouseEvent.MOUSE_OVER,this.item05Over,false,0,true);
         }
         if(this.itemID_06 > 0)
         {
            this.item_06.addEventListener(MouseEvent.CLICK,this.item06Click,false,0,true);
            this.item_06.addEventListener(MouseEvent.MOUSE_OVER,this.item06Over,false,0,true);
         }
         if(this.itemID_07 > 0)
         {
            this.item_07.addEventListener(MouseEvent.CLICK,this.item07Click,false,0,true);
            this.item_07.addEventListener(MouseEvent.MOUSE_OVER,this.item07Over,false,0,true);
         }
         if(this.itemID_08 > 0)
         {
            this.item_08.addEventListener(MouseEvent.CLICK,this.item08Click,false,0,true);
            this.item_08.addEventListener(MouseEvent.MOUSE_OVER,this.item08Over,false,0,true);
         }
         if(this.itemID_09 > 0)
         {
            this.item_09.addEventListener(MouseEvent.CLICK,this.item09Click,false,0,true);
            this.item_09.addEventListener(MouseEvent.MOUSE_OVER,this.item09Over,false,0,true);
         }
         if(this.itemID_10 > 0)
         {
            this.item_10.addEventListener(MouseEvent.CLICK,this.item10Click,false,0,true);
            this.item_10.addEventListener(MouseEvent.MOUSE_OVER,this.item10Over,false,0,true);
         }
         trace("init shop ... ok !");
      }
      
      private function selectItem(SLOT:int = 0) : *
      {
         this.btn_buy.visible = true;
         this.confirmBuy.removeDialog();
         if(this.itemSelectSlot == SLOT)
         {
            return;
         }
         this.itemSelectSlot = SLOT;
         this.item_01.select.visible = false;
         this.item_02.select.visible = false;
         this.item_03.select.visible = false;
         this.item_04.select.visible = false;
         this.item_05.select.visible = false;
         this.item_06.select.visible = false;
         this.item_07.select.visible = false;
         this.item_08.select.visible = false;
         this.item_09.select.visible = false;
         this.item_10.select.visible = false;
         this.price.htmlText = "-";
         if(this.itemSelectSlot == 1 && this.itemID_01 > 0)
         {
            this.item_01.select.visible = true;
            this.price.htmlText = this.itemID_01_Price;
         }
         if(this.itemSelectSlot == 2 && this.itemID_02 > 0)
         {
            this.item_02.select.visible = true;
            this.price.htmlText = this.itemID_02_Price;
         }
         if(this.itemSelectSlot == 3 && this.itemID_03 > 0)
         {
            this.item_03.select.visible = true;
            this.price.htmlText = this.itemID_03_Price;
         }
         if(this.itemSelectSlot == 4 && this.itemID_04 > 0)
         {
            this.item_04.select.visible = true;
            this.price.htmlText = this.itemID_04_Price;
         }
         if(this.itemSelectSlot == 5 && this.itemID_05 > 0)
         {
            this.item_05.select.visible = true;
            this.price.htmlText = this.itemID_05_Price;
         }
         if(this.itemSelectSlot == 6 && this.itemID_06 > 0)
         {
            this.item_06.select.visible = true;
            this.price.htmlText = this.itemID_06_Price;
         }
         if(this.itemSelectSlot == 7 && this.itemID_07 > 0)
         {
            this.item_07.select.visible = true;
            this.price.htmlText = this.itemID_07_Price;
         }
         if(this.itemSelectSlot == 8 && this.itemID_08 > 0)
         {
            this.item_08.select.visible = true;
            this.price.htmlText = this.itemID_08_Price;
         }
         if(this.itemSelectSlot == 9 && this.itemID_09 > 0)
         {
            this.item_09.select.visible = true;
            this.price.htmlText = this.itemID_09_Price;
         }
         if(this.itemSelectSlot == 10 && this.itemID_10 > 0)
         {
            this.item_10.select.visible = true;
            this.price.htmlText = this.itemID_10_Price;
         }
      }
      
      private function itemOver(CLIP:*, SLOT:int = 0) : *
      {
         var CLIP_ID:int = 0;
         if(SLOT == 1)
         {
            CLIP_ID = this.itemID_01;
         }
         if(SLOT == 2)
         {
            CLIP_ID = this.itemID_02;
         }
         if(SLOT == 3)
         {
            CLIP_ID = this.itemID_03;
         }
         if(SLOT == 4)
         {
            CLIP_ID = this.itemID_04;
         }
         if(SLOT == 5)
         {
            CLIP_ID = this.itemID_05;
         }
         if(SLOT == 6)
         {
            CLIP_ID = this.itemID_06;
         }
         if(SLOT == 7)
         {
            CLIP_ID = this.itemID_07;
         }
         if(SLOT == 8)
         {
            CLIP_ID = this.itemID_08;
         }
         if(SLOT == 9)
         {
            CLIP_ID = this.itemID_09;
         }
         if(SLOT == 10)
         {
            CLIP_ID = this.itemID_10;
         }
         var skinStat:* = new CHRSkinStat(1);
         var weaponStat:* = new CHRWeaponStat(1,1);
         if(CLIP_ID >= 21 && CLIP_ID <= 80)
         {
            skinStat.init2(CLIP_ID);
            this.mGF.utilMgr.infoTip(CLIP,10,skinStat.name,"","Health\t\t" + skinStat.health + "\n" + "Power\t\t" + skinStat.power + "\n" + "Speed\t\t" + skinStat.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(skinStat.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(skinStat.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(skinStat.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(skinStat.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(skinStat.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(skinStat.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + skinStat.costMana);
         }
         else if(CLIP_ID >= 81)
         {
            weaponStat.init2(CLIP_ID);
            this.mGF.utilMgr.infoTip(CLIP,10,weaponStat.name,"","Health\t\t" + weaponStat.health + "\n" + "Power\t\t" + weaponStat.power + "\t" + weaponStat.desc + "\n" + "Speed\t\t" + weaponStat.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(weaponStat.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(weaponStat.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(weaponStat.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(weaponStat.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(weaponStat.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(weaponStat.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + weaponStat.costMana);
         }
      }
      
      private function getRandID(ID01:int = 0, ID02:int = 0, ID03:int = 0, ID04:int = 0) : int
      {
         var randVal:Number = Math.random();
         if(randVal < 0.251)
         {
            return ID01;
         }
         if(randVal >= 0.25 && randVal < 0.5)
         {
            return ID02;
         }
         if(randVal >= 0.5 && randVal < 0.75)
         {
            return ID03;
         }
         return ID04;
      }
      
      private function getItemID(SLOT:int = 0) : int
      {
         if(SLOT == 1)
         {
            return this.itemID_01;
         }
         if(SLOT == 2)
         {
            return this.itemID_02;
         }
         if(SLOT == 3)
         {
            return this.itemID_03;
         }
         if(SLOT == 4)
         {
            return this.itemID_04;
         }
         if(SLOT == 5)
         {
            return this.itemID_05;
         }
         if(SLOT == 6)
         {
            return this.itemID_06;
         }
         if(SLOT == 7)
         {
            return this.itemID_07;
         }
         if(SLOT == 8)
         {
            return this.itemID_08;
         }
         if(SLOT == 9)
         {
            return this.itemID_09;
         }
         if(SLOT == 10)
         {
            return this.itemID_10;
         }
         return 0;
      }
      
      private function getItemPrice(SLOT:int = 0) : int
      {
         if(SLOT == 1)
         {
            return this.itemID_01_Price;
         }
         if(SLOT == 2)
         {
            return this.itemID_02_Price;
         }
         if(SLOT == 3)
         {
            return this.itemID_03_Price;
         }
         if(SLOT == 4)
         {
            return this.itemID_04_Price;
         }
         if(SLOT == 5)
         {
            return this.itemID_05_Price;
         }
         if(SLOT == 6)
         {
            return this.itemID_06_Price;
         }
         if(SLOT == 7)
         {
            return this.itemID_07_Price;
         }
         if(SLOT == 8)
         {
            return this.itemID_08_Price;
         }
         if(SLOT == 9)
         {
            return this.itemID_09_Price;
         }
         if(SLOT == 10)
         {
            return this.itemID_10_Price;
         }
         return 0;
      }
      
      private function generateItemPrice(SLOT:int = 0) : int
      {
         var itemPrice:int = 0;
         var CLIP_ID:int = 0;
         if(SLOT == 1)
         {
            CLIP_ID = this.itemID_01;
         }
         if(SLOT == 2)
         {
            CLIP_ID = this.itemID_02;
         }
         if(SLOT == 3)
         {
            CLIP_ID = this.itemID_03;
         }
         if(SLOT == 4)
         {
            CLIP_ID = this.itemID_04;
         }
         if(SLOT == 5)
         {
            CLIP_ID = this.itemID_05;
         }
         if(SLOT == 6)
         {
            CLIP_ID = this.itemID_06;
         }
         if(SLOT == 7)
         {
            CLIP_ID = this.itemID_07;
         }
         if(SLOT == 8)
         {
            CLIP_ID = this.itemID_08;
         }
         if(SLOT == 9)
         {
            CLIP_ID = this.itemID_09;
         }
         if(SLOT == 10)
         {
            CLIP_ID = this.itemID_10;
         }
         var skinStat:* = new CHRSkinStat(1);
         var weaponStat:* = new CHRWeaponStat(1,1);
         if(CLIP_ID >= 21 && CLIP_ID <= 80)
         {
            skinStat.init2(CLIP_ID);
            itemPrice = Math.floor(skinStat.costPrice + skinStat.costPrice * Math.random() * 0.2);
         }
         else if(CLIP_ID >= 81)
         {
            weaponStat.init2(CLIP_ID);
            itemPrice = Math.floor(weaponStat.costPrice + weaponStat.costPrice * Math.random() * 0.2);
         }
         return itemPrice;
      }
      
      private function generateRandomItem() : *
      {
         this.itemSelectSlot = 0;
         this.itemID_01 = 0;
         this.itemID_02 = 0;
         this.itemID_03 = 0;
         this.itemID_04 = 0;
         this.itemID_05 = 0;
         this.itemID_06 = 0;
         this.itemID_07 = 0;
         this.itemID_08 = 0;
         this.itemID_09 = 0;
         this.itemID_10 = 0;
         this.itemID_01_Price = 0;
         this.itemID_02_Price = 0;
         this.itemID_03_Price = 0;
         this.itemID_04_Price = 0;
         this.itemID_05_Price = 0;
         this.itemID_06_Price = 0;
         this.itemID_07_Price = 0;
         this.itemID_08_Price = 0;
         this.itemID_09_Price = 0;
         this.itemID_10_Price = 0;
         if(this.mGF.datMgr.mission_stage == 1)
         {
            this.itemID_01 = this.getRandID(81,81,82,83);
            this.itemID_02 = this.getRandID(22,33,45,57);
         }
         else if(this.mGF.datMgr.mission_stage == 2)
         {
            this.itemID_01 = this.getRandID(81,81,82,83);
            this.itemID_02 = this.getRandID(141,141,142,143);
            this.itemID_03 = this.getRandID(22,33,45,57);
            this.itemID_04 = this.getRandID(23,34,46,58);
         }
         else if(this.mGF.datMgr.mission_stage == 3)
         {
            this.itemID_01 = this.getRandID(81,82,83,84);
            this.itemID_02 = this.getRandID(141,142,143,144);
            this.itemID_03 = this.getRandID(161,162,163,164);
            this.itemID_04 = this.getRandID(22,33,45,57);
            this.itemID_05 = this.getRandID(23,34,46,58);
         }
         else if(this.mGF.datMgr.mission_stage == 4)
         {
            this.itemID_01 = this.getRandID(82,83,84,85);
            this.itemID_02 = this.getRandID(142,143,144,145);
            this.itemID_03 = this.getRandID(162,163,164,165);
            this.itemID_04 = this.getRandID(181,182,183,184);
            this.itemID_05 = this.getRandID(22,33,45,57);
            this.itemID_06 = this.getRandID(23,34,46,58);
            this.itemID_07 = this.getRandID(24,35,47,59);
         }
         else if(this.mGF.datMgr.mission_stage == 5)
         {
            this.itemID_01 = this.getRandID(83,84,85,86);
            this.itemID_02 = this.getRandID(143,144,145,146);
            this.itemID_03 = this.getRandID(163,164,165,166);
            this.itemID_04 = this.getRandID(183,184,185,186);
            this.itemID_05 = this.getRandID(23,34,46,58);
            this.itemID_06 = this.getRandID(24,35,47,59);
            this.itemID_07 = this.getRandID(25,36,48,60);
         }
         else if(this.mGF.datMgr.mission_stage == 6)
         {
            this.itemID_01 = this.getRandID(83,84,85,86);
            this.itemID_02 = this.getRandID(143,144,145,146);
            this.itemID_03 = this.getRandID(163,164,165,166);
            this.itemID_04 = this.getRandID(183,184,185,186);
            this.itemID_05 = this.getRandID(101,102,103,104);
            this.itemID_06 = this.getRandID(24,35,47,59);
            this.itemID_07 = this.getRandID(25,36,48,60);
            this.itemID_08 = this.getRandID(26,37,49,62);
         }
         else if(this.mGF.datMgr.mission_stage == 7)
         {
            this.itemID_01 = this.getRandID(84,85,86,86);
            this.itemID_02 = this.getRandID(144,145,146,146);
            this.itemID_03 = this.getRandID(164,165,166,166);
            this.itemID_04 = this.getRandID(184,185,186,186);
            this.itemID_05 = this.getRandID(103,104,105,106);
            this.itemID_06 = this.getRandID(24,35,47,59);
            this.itemID_07 = this.getRandID(25,36,48,60);
            this.itemID_08 = this.getRandID(26,37,49,62);
         }
         else if(this.mGF.datMgr.mission_stage == 8)
         {
            this.itemID_01 = this.getRandID(84,85,86,122);
            this.itemID_02 = this.getRandID(144,145,146,146);
            this.itemID_03 = this.getRandID(164,165,166,166);
            this.itemID_04 = this.getRandID(184,185,186,186);
            this.itemID_05 = this.getRandID(104,105,106,106);
            this.itemID_06 = this.getRandID(123,124,125,126);
            this.itemID_07 = this.getRandID(24,35,47,59);
            this.itemID_08 = this.getRandID(25,36,48,60);
            this.itemID_09 = this.getRandID(26,37,49,62);
            this.itemID_10 = this.getRandID(27,38,50,63);
         }
         else if(this.mGF.datMgr.mission_stage == 9)
         {
            this.itemID_01 = this.getRandID(85,85,86,122);
            this.itemID_02 = this.getRandID(145,145,146,146);
            this.itemID_03 = this.getRandID(165,165,166,166);
            this.itemID_04 = this.getRandID(185,185,186,186);
            this.itemID_05 = this.getRandID(105,105,106,106);
            this.itemID_06 = this.getRandID(125,125,125,126);
            this.itemID_07 = this.getRandID(25,36,48,60);
            this.itemID_08 = this.getRandID(26,37,49,49);
            this.itemID_09 = this.getRandID(27,38,50,50);
            this.itemID_10 = this.getRandID(61,61,62,63);
         }
         else if(this.mGF.datMgr.mission_stage == 10)
         {
            this.itemID_01 = this.getRandID(85,85,86,87);
            this.itemID_02 = this.getRandID(145,145,146,147);
            this.itemID_03 = this.getRandID(165,165,166,167);
            this.itemID_04 = this.getRandID(185,185,186,187);
            this.itemID_05 = this.getRandID(105,105,106,107);
            this.itemID_06 = this.getRandID(125,125,126,127);
            this.itemID_07 = this.getRandID(221,222,223,224);
            this.itemID_08 = this.getRandID(26,37,49,49);
            this.itemID_09 = this.getRandID(27,38,50,50);
            this.itemID_10 = this.getRandID(62,62,64,65);
         }
         else if(this.mGF.datMgr.mission_stage == 11)
         {
            this.itemID_01 = this.getRandID(85,85,86,87);
            this.itemID_02 = this.getRandID(145,145,146,147);
            this.itemID_03 = this.getRandID(165,165,166,167);
            this.itemID_04 = this.getRandID(185,185,186,187);
            this.itemID_05 = this.getRandID(105,105,106,107);
            this.itemID_06 = this.getRandID(125,125,126,127);
            this.itemID_07 = this.getRandID(224,225,226,227);
            this.itemID_08 = this.getRandID(26,37,49,49);
            this.itemID_09 = this.getRandID(27,38,50,42);
            this.itemID_10 = this.getRandID(63,64,65,66);
         }
         else if(this.mGF.datMgr.mission_stage == 12)
         {
            this.itemID_01 = this.getRandID(85,85,86,87);
            this.itemID_02 = this.getRandID(145,145,146,147);
            this.itemID_03 = this.getRandID(165,165,166,167);
            this.itemID_04 = this.getRandID(185,185,186,187);
            this.itemID_05 = this.getRandID(105,105,106,107);
            this.itemID_06 = this.getRandID(125,125,126,127);
            this.itemID_07 = this.getRandID(224,225,226,227);
            this.itemID_08 = this.getRandID(201,202,203,204);
            this.itemID_09 = this.getRandID(28,39,50,42);
            this.itemID_10 = this.getRandID(64,65,66,67);
         }
         else
         {
            this.itemID_01 = this.getRandID(87,88,89,90);
            this.itemID_02 = this.getRandID(147,148,149,150);
            this.itemID_03 = this.getRandID(167,168,169,170);
            this.itemID_04 = this.getRandID(187,188,189,190);
            this.itemID_05 = this.getRandID(107,108,109,110);
            this.itemID_06 = this.getRandID(127,128,129,130);
            this.itemID_07 = this.getRandID(227,228,229,230);
            this.itemID_08 = this.getRandID(205,206,207,208);
            this.itemID_09 = this.getRandID(29,40,51,59);
            this.itemID_10 = this.getRandID(30,41,52,60);
            if(this.mGF.datMgr.hero_1_competed > 0 || this.mGF.datMgr.hero_2_competed > 0 || this.mGF.datMgr.hero_3_competed > 0)
            {
               if(Math.random() < 0.5)
               {
                  this.itemID_01 = this.getRandID(90,90,91,91);
                  this.itemID_02 = this.getRandID(150,150,151,151);
                  this.itemID_03 = this.getRandID(170,170,171,171);
                  this.itemID_04 = this.getRandID(190,190,191,191);
                  this.itemID_05 = this.getRandID(110,110,111,111);
                  this.itemID_06 = this.getRandID(130,130,131,131);
                  this.itemID_07 = this.getRandID(231,231,232,232);
                  this.itemID_08 = this.getRandID(209,210,211,212);
                  this.itemID_09 = this.getRandID(67,67,66,66);
                  this.itemID_10 = this.getRandID(68,68,68,54);
               }
            }
         }
         this.item_01.gotoAndStop(this.itemID_01);
         this.item_02.gotoAndStop(this.itemID_02);
         this.item_03.gotoAndStop(this.itemID_03);
         this.item_04.gotoAndStop(this.itemID_04);
         this.item_05.gotoAndStop(this.itemID_05);
         this.item_06.gotoAndStop(this.itemID_06);
         this.item_07.gotoAndStop(this.itemID_07);
         this.item_08.gotoAndStop(this.itemID_08);
         this.item_09.gotoAndStop(this.itemID_09);
         this.item_10.gotoAndStop(this.itemID_10);
         this.itemID_01_Price = this.generateItemPrice(1);
         this.itemID_02_Price = this.generateItemPrice(2);
         this.itemID_03_Price = this.generateItemPrice(3);
         this.itemID_04_Price = this.generateItemPrice(4);
         this.itemID_05_Price = this.generateItemPrice(5);
         this.itemID_06_Price = this.generateItemPrice(6);
         this.itemID_07_Price = this.generateItemPrice(7);
         this.itemID_08_Price = this.generateItemPrice(8);
         this.itemID_09_Price = this.generateItemPrice(9);
         this.itemID_10_Price = this.generateItemPrice(10);
      }
      
      public function destroy() : *
      {
         if(this.confirmBuy)
         {
            this.confirmBuy.destroy();
         }
         this.confirmBuy = null;
         this.removeEventListener(Event.ENTER_FRAME,this.frameHandle);
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.btn_buy.removeEventListener(MouseEvent.CLICK,this.buyClick);
         this.item_01.removeEventListener(MouseEvent.CLICK,this.item01Click);
         this.item_01.removeEventListener(MouseEvent.MOUSE_OVER,this.item01Over);
         this.item_02.removeEventListener(MouseEvent.CLICK,this.item02Click);
         this.item_02.removeEventListener(MouseEvent.MOUSE_OVER,this.item02Over);
         this.item_03.removeEventListener(MouseEvent.CLICK,this.item03Click);
         this.item_03.removeEventListener(MouseEvent.MOUSE_OVER,this.item03Over);
         this.item_04.removeEventListener(MouseEvent.CLICK,this.item04Click);
         this.item_04.removeEventListener(MouseEvent.MOUSE_OVER,this.item04Over);
         this.item_05.removeEventListener(MouseEvent.CLICK,this.item05Click);
         this.item_05.removeEventListener(MouseEvent.MOUSE_OVER,this.item05Over);
         this.item_06.removeEventListener(MouseEvent.CLICK,this.item06Click);
         this.item_06.removeEventListener(MouseEvent.MOUSE_OVER,this.item06Over);
         this.item_07.removeEventListener(MouseEvent.CLICK,this.item07Click);
         this.item_07.removeEventListener(MouseEvent.MOUSE_OVER,this.item07Over);
         this.item_08.removeEventListener(MouseEvent.CLICK,this.item08Click);
         this.item_08.removeEventListener(MouseEvent.MOUSE_OVER,this.item08Over);
         this.item_09.removeEventListener(MouseEvent.CLICK,this.item09Click);
         this.item_09.removeEventListener(MouseEvent.MOUSE_OVER,this.item09Over);
         this.item_10.removeEventListener(MouseEvent.CLICK,this.item10Click);
         this.item_10.removeEventListener(MouseEvent.MOUSE_OVER,this.item10Over);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("shop credit ... ok !");
      }
      
      private function frameHandle(event:Event) : void
      {
         var price:int = 0;
         if(this.confirmBuy.isOk())
         {
            price = this.getItemPrice(this.itemSelectSlot);
            this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - price,0);
            this.mGF.datMgr.addItemClipID(this.getItemID(this.itemSelectSlot));
            this.money.htmlText = this.mGF.datMgr.stat_money;
            trace("buy item " + this.getItemID(this.itemSelectSlot));
         }
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         this.mGF.requestSave();
         this.destroy();
      }
      
      private function buyClick(event:MouseEvent) : void
      {
         if(this.mGF.datMgr.stat_money >= this.getItemPrice(this.itemSelectSlot))
         {
            this.confirmBuy.showDialog();
            this.confirmBuy.setDesc("Take it ? (Stock : " + this.mGF.datMgr.getItemClipID(this.getItemID(this.itemSelectSlot)) + " )");
         }
         else
         {
            this.mGF.utilMgr.messagePop("you don\'t have enough fund!!",50);
         }
      }
      
      private function item01Click(event:MouseEvent) : void
      {
         this.selectItem(1);
      }
      
      private function item02Click(event:MouseEvent) : void
      {
         this.selectItem(2);
      }
      
      private function item03Click(event:MouseEvent) : void
      {
         this.selectItem(3);
      }
      
      private function item04Click(event:MouseEvent) : void
      {
         this.selectItem(4);
      }
      
      private function item05Click(event:MouseEvent) : void
      {
         this.selectItem(5);
      }
      
      private function item06Click(event:MouseEvent) : void
      {
         this.selectItem(6);
      }
      
      private function item07Click(event:MouseEvent) : void
      {
         this.selectItem(7);
      }
      
      private function item08Click(event:MouseEvent) : void
      {
         this.selectItem(8);
      }
      
      private function item09Click(event:MouseEvent) : void
      {
         this.selectItem(9);
      }
      
      private function item10Click(event:MouseEvent) : void
      {
         this.selectItem(10);
      }
      
      private function item01Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_01,1);
      }
      
      private function item02Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_02,2);
      }
      
      private function item03Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_03,3);
      }
      
      private function item04Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_04,4);
      }
      
      private function item05Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_05,5);
      }
      
      private function item06Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_06,6);
      }
      
      private function item07Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_07,7);
      }
      
      private function item08Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_08,8);
      }
      
      private function item09Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_09,9);
      }
      
      private function item10Over(event:MouseEvent) : void
      {
         this.itemOver(this.item_10,10);
      }
   }
}

