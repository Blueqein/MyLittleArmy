package Game.Interface
{
   import Game.FClass.*;
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class Formation2 extends MovieClip
   {
      
      public var page_total:TextField;
      
      public var btn_close:SimpleButton;
      
      public var slot_prev:SimpleButton;
      
      public var slot_id_08:MovieClip;
      
      public var pierce:TextField;
      
      public var slot_id_09:MovieClip;
      
      public var addslash:TextField;
      
      public var fire:TextField;
      
      public var addhealth:TextField;
      
      public var health:TextField;
      
      public var slot_id_02:MovieClip;
      
      public var addmana:TextField;
      
      public var slot_id_03:MovieClip;
      
      public var slot_id_12:MovieClip;
      
      public var char4_tab:MovieClip;
      
      public var slot_id_13:MovieClip;
      
      public var power:TextField;
      
      public var ice:TextField;
      
      public var addspeed:TextField;
      
      public var slot_id_01:MovieClip;
      
      public var slot_id_10:MovieClip;
      
      public var addpower:TextField;
      
      public var slot_next:SimpleButton;
      
      public var slot_id_06:MovieClip;
      
      public var slot_id_11:MovieClip;
      
      public var element:TextField;
      
      public var thunder:TextField;
      
      public var addmelee:TextField;
      
      public var addpierce:TextField;
      
      public var weapon_tab:SimpleButton;
      
      public var char1_tab:MovieClip;
      
      public var slot_id_07:MovieClip;
      
      public var slot_id_16:MovieClip;
      
      public var speed:TextField;
      
      public var mana:TextField;
      
      public var addthunder:TextField;
      
      public var slot_id_04:MovieClip;
      
      public var skin_tab:SimpleButton;
      
      public var char_preview:MovieClip;
      
      public var char3_tab:MovieClip;
      
      public var slot_id_05:MovieClip;
      
      public var slot_id_14:MovieClip;
      
      public var melee:TextField;
      
      public var slash:TextField;
      
      public var addelement:TextField;
      
      public var addice:TextField;
      
      public var char2_tab:MovieClip;
      
      public var slot_id_15:MovieClip;
      
      public var page_cur:TextField;
      
      public var class_tab:SimpleButton;
      
      public var addfire:TextField;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var objCharTab1:*;
      
      private var objCharTab2:*;
      
      private var objCharTab3:*;
      
      private var objCharTab4:*;
      
      private var objCharPreview:*;
      
      private var _preview_select:int = 1;
      
      private var _tab_select:int = 1;
      
      private var _page_select:int = 1;
      
      private var _total_page:int = 1;
      
      private var _data_unlock_class:Array = new Array();
      
      private var _data_stock_skin:Array = new Array();
      
      private var _data_stock_weapon_sword:Array = new Array();
      
      private var _data_stock_weapon_bow:Array = new Array();
      
      private var _data_stock_weapon_staff:Array = new Array();
      
      private var _data_stock_weapon_glove:Array = new Array();
      
      private var _data_stock_weapon_spear:Array = new Array();
      
      private var _data_stock_weapon_greatsword:Array = new Array();
      
      private var _data_stock_weapon_throw:Array = new Array();
      
      private var _data_stock_weapon_gun:Array = new Array();
      
      private var _slot_clip:Array = new Array();
      
      public function Formation2()
      {
         super();
      }
      
      public function init(_mGF:*) : *
      {
         var clipTut:* = undefined;
         this.mGF = _mGF;
         this.dispCont = this.mGF.contMENU;
         this.dispCont.addChild(this);
         this.cacheAsBitmap = true;
         this.x = 0;
         this.y = 0;
         this._slot_clip[0] = new MClipSlotControl(this.slot_id_01);
         this._slot_clip[1] = new MClipSlotControl(this.slot_id_02);
         this._slot_clip[2] = new MClipSlotControl(this.slot_id_03);
         this._slot_clip[3] = new MClipSlotControl(this.slot_id_04);
         this._slot_clip[4] = new MClipSlotControl(this.slot_id_05);
         this._slot_clip[5] = new MClipSlotControl(this.slot_id_06);
         this._slot_clip[6] = new MClipSlotControl(this.slot_id_07);
         this._slot_clip[7] = new MClipSlotControl(this.slot_id_08);
         this._slot_clip[8] = new MClipSlotControl(this.slot_id_09);
         this._slot_clip[9] = new MClipSlotControl(this.slot_id_10);
         this._slot_clip[10] = new MClipSlotControl(this.slot_id_11);
         this._slot_clip[11] = new MClipSlotControl(this.slot_id_12);
         this._slot_clip[12] = new MClipSlotControl(this.slot_id_13);
         this._slot_clip[13] = new MClipSlotControl(this.slot_id_14);
         this._slot_clip[14] = new MClipSlotControl(this.slot_id_15);
         this._slot_clip[15] = new MClipSlotControl(this.slot_id_16);
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         this.char1_tab.addEventListener(MouseEvent.CLICK,this.charTab1Click,false,0,true);
         this.char2_tab.addEventListener(MouseEvent.CLICK,this.charTab2Click,false,0,true);
         this.char3_tab.addEventListener(MouseEvent.CLICK,this.charTab3Click,false,0,true);
         this.char4_tab.addEventListener(MouseEvent.CLICK,this.charTab4Click,false,0,true);
         this.class_tab.addEventListener(MouseEvent.CLICK,this.classTabClick,false,0,true);
         this.skin_tab.addEventListener(MouseEvent.CLICK,this.skinTabClick,false,0,true);
         this.weapon_tab.addEventListener(MouseEvent.CLICK,this.weaponTabClick,false,0,true);
         this.slot_prev.addEventListener(MouseEvent.CLICK,this.slotPrevClick,false,0,true);
         this.slot_next.addEventListener(MouseEvent.CLICK,this.slotNextClick,false,0,true);
         this.addEventListener(Event.ENTER_FRAME,this.frameHandle,false,0,true);
         trace("init upgrade ... ok !");
         this.retrieveData();
         this.updateCharTab();
         this.updateSlotListTab();
         this.resetAddInfo();
         if(this.mGF.datMgr.help_formation <= 0)
         {
            clipTut = new help_mc();
            clipTut.init(this.mGF);
            clipTut.setPage(2);
            this.mGF.datMgr.help_formation = 1;
         }
      }
      
      public function destroy() : *
      {
         this.updateData();
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.char1_tab.removeEventListener(MouseEvent.CLICK,this.charTab1Click);
         this.char2_tab.removeEventListener(MouseEvent.CLICK,this.charTab2Click);
         this.char3_tab.removeEventListener(MouseEvent.CLICK,this.charTab3Click);
         this.char4_tab.removeEventListener(MouseEvent.CLICK,this.charTab4Click);
         this.class_tab.removeEventListener(MouseEvent.CLICK,this.classTabClick);
         this.skin_tab.removeEventListener(MouseEvent.CLICK,this.skinTabClick);
         this.weapon_tab.removeEventListener(MouseEvent.CLICK,this.weaponTabClick);
         this.slot_prev.removeEventListener(MouseEvent.CLICK,this.slotPrevClick);
         this.slot_next.removeEventListener(MouseEvent.CLICK,this.slotNextClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy upgrade ... ok !");
      }
      
      private function retrieveData() : *
      {
         this._data_unlock_class[0] = this.mGF.datMgr.unlock_class01;
         this._data_unlock_class[1] = this.mGF.datMgr.unlock_class02;
         this._data_unlock_class[2] = this.mGF.datMgr.unlock_class03;
         this._data_unlock_class[3] = this.mGF.datMgr.unlock_class04;
         this._data_unlock_class[4] = this.mGF.datMgr.unlock_class05;
         this._data_unlock_class[5] = this.mGF.datMgr.unlock_class06;
         this._data_unlock_class[6] = this.mGF.datMgr.unlock_class07;
         this._data_unlock_class[7] = this.mGF.datMgr.unlock_class08;
         this._data_unlock_class[8] = this.mGF.datMgr.unlock_class09;
         this._data_unlock_class[9] = this.mGF.datMgr.unlock_class10;
         this._data_unlock_class[10] = this.mGF.datMgr.unlock_class11;
         this._data_unlock_class[11] = this.mGF.datMgr.unlock_class12;
         this._data_unlock_class[12] = this.mGF.datMgr.unlock_class13;
         this._data_unlock_class[13] = this.mGF.datMgr.unlock_class14;
         this._data_unlock_class[14] = this.mGF.datMgr.unlock_class15;
         this._data_unlock_class[15] = this.mGF.datMgr.unlock_class16;
         this._data_stock_skin[0] = this.mGF.datMgr.stock_skin01;
         this._data_stock_skin[1] = this.mGF.datMgr.stock_skin02;
         this._data_stock_skin[2] = this.mGF.datMgr.stock_skin03;
         this._data_stock_skin[3] = this.mGF.datMgr.stock_skin04;
         this._data_stock_skin[4] = this.mGF.datMgr.stock_skin05;
         this._data_stock_skin[5] = this.mGF.datMgr.stock_skin06;
         this._data_stock_skin[6] = this.mGF.datMgr.stock_skin07;
         this._data_stock_skin[7] = this.mGF.datMgr.stock_skin08;
         this._data_stock_skin[8] = this.mGF.datMgr.stock_skin09;
         this._data_stock_skin[9] = this.mGF.datMgr.stock_skin10;
         this._data_stock_skin[10] = this.mGF.datMgr.stock_skin11;
         this._data_stock_skin[11] = this.mGF.datMgr.stock_skin12;
         this._data_stock_skin[12] = this.mGF.datMgr.stock_skin13;
         this._data_stock_skin[13] = this.mGF.datMgr.stock_skin14;
         this._data_stock_skin[14] = this.mGF.datMgr.stock_skin15;
         this._data_stock_skin[15] = this.mGF.datMgr.stock_skin16;
         this._data_stock_skin[16] = this.mGF.datMgr.stock_skin17;
         this._data_stock_skin[17] = this.mGF.datMgr.stock_skin18;
         this._data_stock_skin[18] = this.mGF.datMgr.stock_skin19;
         this._data_stock_skin[19] = this.mGF.datMgr.stock_skin20;
         this._data_stock_skin[20] = this.mGF.datMgr.stock_skin21;
         this._data_stock_skin[21] = this.mGF.datMgr.stock_skin22;
         this._data_stock_skin[22] = this.mGF.datMgr.stock_skin23;
         this._data_stock_skin[23] = this.mGF.datMgr.stock_skin24;
         this._data_stock_skin[24] = this.mGF.datMgr.stock_skin25;
         this._data_stock_skin[25] = this.mGF.datMgr.stock_skin26;
         this._data_stock_skin[26] = this.mGF.datMgr.stock_skin27;
         this._data_stock_skin[27] = this.mGF.datMgr.stock_skin28;
         this._data_stock_skin[28] = this.mGF.datMgr.stock_skin29;
         this._data_stock_skin[29] = this.mGF.datMgr.stock_skin30;
         this._data_stock_skin[30] = this.mGF.datMgr.stock_skin31;
         this._data_stock_skin[31] = this.mGF.datMgr.stock_skin32;
         this._data_stock_skin[32] = this.mGF.datMgr.stock_skin33;
         this._data_stock_skin[33] = this.mGF.datMgr.stock_skin34;
         this._data_stock_skin[34] = this.mGF.datMgr.stock_skin35;
         this._data_stock_skin[35] = this.mGF.datMgr.stock_skin36;
         this._data_stock_skin[36] = this.mGF.datMgr.stock_skin37;
         this._data_stock_skin[37] = this.mGF.datMgr.stock_skin38;
         this._data_stock_skin[38] = this.mGF.datMgr.stock_skin39;
         this._data_stock_skin[39] = this.mGF.datMgr.stock_skin40;
         this._data_stock_skin[40] = this.mGF.datMgr.stock_skin41;
         this._data_stock_skin[41] = this.mGF.datMgr.stock_skin42;
         this._data_stock_skin[42] = this.mGF.datMgr.stock_skin43;
         this._data_stock_skin[43] = this.mGF.datMgr.stock_skin44;
         this._data_stock_skin[44] = this.mGF.datMgr.stock_skin45;
         this._data_stock_skin[45] = this.mGF.datMgr.stock_skin46;
         this._data_stock_skin[46] = this.mGF.datMgr.stock_skin47;
         this._data_stock_skin[47] = this.mGF.datMgr.stock_skin48;
         this._data_stock_weapon_sword[0] = this.mGF.datMgr.stock_weapon_sword01;
         this._data_stock_weapon_sword[1] = this.mGF.datMgr.stock_weapon_sword02;
         this._data_stock_weapon_sword[2] = this.mGF.datMgr.stock_weapon_sword03;
         this._data_stock_weapon_sword[3] = this.mGF.datMgr.stock_weapon_sword04;
         this._data_stock_weapon_sword[4] = this.mGF.datMgr.stock_weapon_sword05;
         this._data_stock_weapon_sword[5] = this.mGF.datMgr.stock_weapon_sword06;
         this._data_stock_weapon_sword[6] = this.mGF.datMgr.stock_weapon_sword07;
         this._data_stock_weapon_sword[7] = this.mGF.datMgr.stock_weapon_sword08;
         this._data_stock_weapon_sword[8] = this.mGF.datMgr.stock_weapon_sword09;
         this._data_stock_weapon_sword[9] = this.mGF.datMgr.stock_weapon_sword10;
         this._data_stock_weapon_sword[10] = this.mGF.datMgr.stock_weapon_sword11;
         this._data_stock_weapon_sword[11] = this.mGF.datMgr.stock_weapon_sword12;
         this._data_stock_weapon_sword[12] = this.mGF.datMgr.stock_weapon_sword13;
         this._data_stock_weapon_sword[13] = this.mGF.datMgr.stock_weapon_sword14;
         this._data_stock_weapon_sword[14] = this.mGF.datMgr.stock_weapon_sword15;
         this._data_stock_weapon_sword[15] = this.mGF.datMgr.stock_weapon_sword16;
         this._data_stock_weapon_bow[0] = this.mGF.datMgr.stock_weapon_bow01;
         this._data_stock_weapon_bow[1] = this.mGF.datMgr.stock_weapon_bow02;
         this._data_stock_weapon_bow[2] = this.mGF.datMgr.stock_weapon_bow03;
         this._data_stock_weapon_bow[3] = this.mGF.datMgr.stock_weapon_bow04;
         this._data_stock_weapon_bow[4] = this.mGF.datMgr.stock_weapon_bow05;
         this._data_stock_weapon_bow[5] = this.mGF.datMgr.stock_weapon_bow06;
         this._data_stock_weapon_bow[6] = this.mGF.datMgr.stock_weapon_bow07;
         this._data_stock_weapon_bow[7] = this.mGF.datMgr.stock_weapon_bow08;
         this._data_stock_weapon_bow[8] = this.mGF.datMgr.stock_weapon_bow09;
         this._data_stock_weapon_bow[9] = this.mGF.datMgr.stock_weapon_bow10;
         this._data_stock_weapon_bow[10] = this.mGF.datMgr.stock_weapon_bow11;
         this._data_stock_weapon_bow[11] = this.mGF.datMgr.stock_weapon_bow12;
         this._data_stock_weapon_bow[12] = this.mGF.datMgr.stock_weapon_bow13;
         this._data_stock_weapon_bow[13] = this.mGF.datMgr.stock_weapon_bow14;
         this._data_stock_weapon_bow[14] = this.mGF.datMgr.stock_weapon_bow15;
         this._data_stock_weapon_bow[15] = this.mGF.datMgr.stock_weapon_bow16;
         this._data_stock_weapon_staff[0] = this.mGF.datMgr.stock_weapon_staff01;
         this._data_stock_weapon_staff[1] = this.mGF.datMgr.stock_weapon_staff02;
         this._data_stock_weapon_staff[2] = this.mGF.datMgr.stock_weapon_staff03;
         this._data_stock_weapon_staff[3] = this.mGF.datMgr.stock_weapon_staff04;
         this._data_stock_weapon_staff[4] = this.mGF.datMgr.stock_weapon_staff05;
         this._data_stock_weapon_staff[5] = this.mGF.datMgr.stock_weapon_staff06;
         this._data_stock_weapon_staff[6] = this.mGF.datMgr.stock_weapon_staff07;
         this._data_stock_weapon_staff[7] = this.mGF.datMgr.stock_weapon_staff08;
         this._data_stock_weapon_staff[8] = this.mGF.datMgr.stock_weapon_staff09;
         this._data_stock_weapon_staff[9] = this.mGF.datMgr.stock_weapon_staff10;
         this._data_stock_weapon_staff[10] = this.mGF.datMgr.stock_weapon_staff11;
         this._data_stock_weapon_staff[11] = this.mGF.datMgr.stock_weapon_staff12;
         this._data_stock_weapon_staff[12] = this.mGF.datMgr.stock_weapon_staff13;
         this._data_stock_weapon_staff[13] = this.mGF.datMgr.stock_weapon_staff14;
         this._data_stock_weapon_staff[14] = this.mGF.datMgr.stock_weapon_staff15;
         this._data_stock_weapon_staff[15] = this.mGF.datMgr.stock_weapon_staff16;
         this._data_stock_weapon_glove[0] = this.mGF.datMgr.stock_weapon_glove01;
         this._data_stock_weapon_glove[1] = this.mGF.datMgr.stock_weapon_glove02;
         this._data_stock_weapon_glove[2] = this.mGF.datMgr.stock_weapon_glove03;
         this._data_stock_weapon_glove[3] = this.mGF.datMgr.stock_weapon_glove04;
         this._data_stock_weapon_glove[4] = this.mGF.datMgr.stock_weapon_glove05;
         this._data_stock_weapon_glove[5] = this.mGF.datMgr.stock_weapon_glove06;
         this._data_stock_weapon_glove[6] = this.mGF.datMgr.stock_weapon_glove07;
         this._data_stock_weapon_glove[7] = this.mGF.datMgr.stock_weapon_glove08;
         this._data_stock_weapon_glove[8] = this.mGF.datMgr.stock_weapon_glove09;
         this._data_stock_weapon_glove[9] = this.mGF.datMgr.stock_weapon_glove10;
         this._data_stock_weapon_glove[10] = this.mGF.datMgr.stock_weapon_glove11;
         this._data_stock_weapon_glove[11] = this.mGF.datMgr.stock_weapon_glove12;
         this._data_stock_weapon_glove[12] = this.mGF.datMgr.stock_weapon_glove13;
         this._data_stock_weapon_glove[13] = this.mGF.datMgr.stock_weapon_glove14;
         this._data_stock_weapon_glove[14] = this.mGF.datMgr.stock_weapon_glove15;
         this._data_stock_weapon_glove[15] = this.mGF.datMgr.stock_weapon_glove16;
         this._data_stock_weapon_spear[0] = this.mGF.datMgr.stock_weapon_spear01;
         this._data_stock_weapon_spear[1] = this.mGF.datMgr.stock_weapon_spear02;
         this._data_stock_weapon_spear[2] = this.mGF.datMgr.stock_weapon_spear03;
         this._data_stock_weapon_spear[3] = this.mGF.datMgr.stock_weapon_spear04;
         this._data_stock_weapon_spear[4] = this.mGF.datMgr.stock_weapon_spear05;
         this._data_stock_weapon_spear[5] = this.mGF.datMgr.stock_weapon_spear06;
         this._data_stock_weapon_spear[6] = this.mGF.datMgr.stock_weapon_spear07;
         this._data_stock_weapon_spear[7] = this.mGF.datMgr.stock_weapon_spear08;
         this._data_stock_weapon_spear[8] = this.mGF.datMgr.stock_weapon_spear09;
         this._data_stock_weapon_spear[9] = this.mGF.datMgr.stock_weapon_spear10;
         this._data_stock_weapon_spear[10] = this.mGF.datMgr.stock_weapon_spear11;
         this._data_stock_weapon_spear[11] = this.mGF.datMgr.stock_weapon_spear12;
         this._data_stock_weapon_spear[12] = this.mGF.datMgr.stock_weapon_spear13;
         this._data_stock_weapon_spear[13] = this.mGF.datMgr.stock_weapon_spear14;
         this._data_stock_weapon_spear[14] = this.mGF.datMgr.stock_weapon_spear15;
         this._data_stock_weapon_spear[15] = this.mGF.datMgr.stock_weapon_spear16;
         this._data_stock_weapon_greatsword[0] = this.mGF.datMgr.stock_weapon_greatsword01;
         this._data_stock_weapon_greatsword[1] = this.mGF.datMgr.stock_weapon_greatsword02;
         this._data_stock_weapon_greatsword[2] = this.mGF.datMgr.stock_weapon_greatsword03;
         this._data_stock_weapon_greatsword[3] = this.mGF.datMgr.stock_weapon_greatsword04;
         this._data_stock_weapon_greatsword[4] = this.mGF.datMgr.stock_weapon_greatsword05;
         this._data_stock_weapon_greatsword[5] = this.mGF.datMgr.stock_weapon_greatsword06;
         this._data_stock_weapon_greatsword[6] = this.mGF.datMgr.stock_weapon_greatsword07;
         this._data_stock_weapon_greatsword[7] = this.mGF.datMgr.stock_weapon_greatsword08;
         this._data_stock_weapon_greatsword[8] = this.mGF.datMgr.stock_weapon_greatsword09;
         this._data_stock_weapon_greatsword[9] = this.mGF.datMgr.stock_weapon_greatsword10;
         this._data_stock_weapon_greatsword[10] = this.mGF.datMgr.stock_weapon_greatsword11;
         this._data_stock_weapon_greatsword[11] = this.mGF.datMgr.stock_weapon_greatsword12;
         this._data_stock_weapon_greatsword[12] = this.mGF.datMgr.stock_weapon_greatsword13;
         this._data_stock_weapon_greatsword[13] = this.mGF.datMgr.stock_weapon_greatsword14;
         this._data_stock_weapon_greatsword[14] = this.mGF.datMgr.stock_weapon_greatsword15;
         this._data_stock_weapon_greatsword[15] = this.mGF.datMgr.stock_weapon_greatsword16;
         this._data_stock_weapon_throw[0] = this.mGF.datMgr.stock_weapon_throw01;
         this._data_stock_weapon_throw[1] = this.mGF.datMgr.stock_weapon_throw02;
         this._data_stock_weapon_throw[2] = this.mGF.datMgr.stock_weapon_throw03;
         this._data_stock_weapon_throw[3] = this.mGF.datMgr.stock_weapon_throw04;
         this._data_stock_weapon_throw[4] = this.mGF.datMgr.stock_weapon_throw05;
         this._data_stock_weapon_throw[5] = this.mGF.datMgr.stock_weapon_throw06;
         this._data_stock_weapon_throw[6] = this.mGF.datMgr.stock_weapon_throw07;
         this._data_stock_weapon_throw[7] = this.mGF.datMgr.stock_weapon_throw08;
         this._data_stock_weapon_throw[8] = this.mGF.datMgr.stock_weapon_throw09;
         this._data_stock_weapon_throw[9] = this.mGF.datMgr.stock_weapon_throw10;
         this._data_stock_weapon_throw[10] = this.mGF.datMgr.stock_weapon_throw11;
         this._data_stock_weapon_throw[11] = this.mGF.datMgr.stock_weapon_throw12;
         this._data_stock_weapon_throw[12] = this.mGF.datMgr.stock_weapon_throw13;
         this._data_stock_weapon_throw[13] = this.mGF.datMgr.stock_weapon_throw14;
         this._data_stock_weapon_throw[14] = this.mGF.datMgr.stock_weapon_throw15;
         this._data_stock_weapon_throw[15] = this.mGF.datMgr.stock_weapon_throw16;
         this._data_stock_weapon_gun[0] = this.mGF.datMgr.stock_weapon_gun01;
         this._data_stock_weapon_gun[1] = this.mGF.datMgr.stock_weapon_gun02;
         this._data_stock_weapon_gun[2] = this.mGF.datMgr.stock_weapon_gun03;
         this._data_stock_weapon_gun[3] = this.mGF.datMgr.stock_weapon_gun04;
         this._data_stock_weapon_gun[4] = this.mGF.datMgr.stock_weapon_gun05;
         this._data_stock_weapon_gun[5] = this.mGF.datMgr.stock_weapon_gun06;
         this._data_stock_weapon_gun[6] = this.mGF.datMgr.stock_weapon_gun07;
         this._data_stock_weapon_gun[7] = this.mGF.datMgr.stock_weapon_gun08;
         this._data_stock_weapon_gun[8] = this.mGF.datMgr.stock_weapon_gun09;
         this._data_stock_weapon_gun[9] = this.mGF.datMgr.stock_weapon_gun10;
         this._data_stock_weapon_gun[10] = this.mGF.datMgr.stock_weapon_gun11;
         this._data_stock_weapon_gun[11] = this.mGF.datMgr.stock_weapon_gun12;
         this._data_stock_weapon_gun[12] = this.mGF.datMgr.stock_weapon_gun13;
         this._data_stock_weapon_gun[13] = this.mGF.datMgr.stock_weapon_gun14;
         this._data_stock_weapon_gun[14] = this.mGF.datMgr.stock_weapon_gun15;
         this._data_stock_weapon_gun[15] = this.mGF.datMgr.stock_weapon_gun16;
      }
      
      private function updateData() : *
      {
         this.mGF.datMgr.unlock_class01 = this._data_unlock_class[0];
         this.mGF.datMgr.unlock_class02 = this._data_unlock_class[1];
         this.mGF.datMgr.unlock_class03 = this._data_unlock_class[2];
         this.mGF.datMgr.unlock_class04 = this._data_unlock_class[3];
         this.mGF.datMgr.unlock_class05 = this._data_unlock_class[4];
         this.mGF.datMgr.unlock_class06 = this._data_unlock_class[5];
         this.mGF.datMgr.unlock_class07 = this._data_unlock_class[6];
         this.mGF.datMgr.unlock_class08 = this._data_unlock_class[7];
         this.mGF.datMgr.unlock_class09 = this._data_unlock_class[8];
         this.mGF.datMgr.unlock_class10 = this._data_unlock_class[9];
         this.mGF.datMgr.unlock_class11 = this._data_unlock_class[10];
         this.mGF.datMgr.unlock_class12 = this._data_unlock_class[11];
         this.mGF.datMgr.unlock_class13 = this._data_unlock_class[12];
         this.mGF.datMgr.unlock_class14 = this._data_unlock_class[13];
         this.mGF.datMgr.unlock_class15 = this._data_unlock_class[14];
         this.mGF.datMgr.unlock_class16 = this._data_unlock_class[15];
         this.mGF.datMgr.stock_skin01 = this._data_stock_skin[0];
         this.mGF.datMgr.stock_skin02 = this._data_stock_skin[1];
         this.mGF.datMgr.stock_skin03 = this._data_stock_skin[2];
         this.mGF.datMgr.stock_skin04 = this._data_stock_skin[3];
         this.mGF.datMgr.stock_skin05 = this._data_stock_skin[4];
         this.mGF.datMgr.stock_skin06 = this._data_stock_skin[5];
         this.mGF.datMgr.stock_skin07 = this._data_stock_skin[6];
         this.mGF.datMgr.stock_skin08 = this._data_stock_skin[7];
         this.mGF.datMgr.stock_skin09 = this._data_stock_skin[8];
         this.mGF.datMgr.stock_skin10 = this._data_stock_skin[9];
         this.mGF.datMgr.stock_skin11 = this._data_stock_skin[10];
         this.mGF.datMgr.stock_skin12 = this._data_stock_skin[11];
         this.mGF.datMgr.stock_skin13 = this._data_stock_skin[12];
         this.mGF.datMgr.stock_skin14 = this._data_stock_skin[13];
         this.mGF.datMgr.stock_skin15 = this._data_stock_skin[14];
         this.mGF.datMgr.stock_skin16 = this._data_stock_skin[15];
         this.mGF.datMgr.stock_skin17 = this._data_stock_skin[16];
         this.mGF.datMgr.stock_skin18 = this._data_stock_skin[17];
         this.mGF.datMgr.stock_skin19 = this._data_stock_skin[18];
         this.mGF.datMgr.stock_skin20 = this._data_stock_skin[19];
         this.mGF.datMgr.stock_skin21 = this._data_stock_skin[20];
         this.mGF.datMgr.stock_skin22 = this._data_stock_skin[21];
         this.mGF.datMgr.stock_skin23 = this._data_stock_skin[22];
         this.mGF.datMgr.stock_skin24 = this._data_stock_skin[23];
         this.mGF.datMgr.stock_skin25 = this._data_stock_skin[24];
         this.mGF.datMgr.stock_skin26 = this._data_stock_skin[25];
         this.mGF.datMgr.stock_skin27 = this._data_stock_skin[26];
         this.mGF.datMgr.stock_skin28 = this._data_stock_skin[27];
         this.mGF.datMgr.stock_skin29 = this._data_stock_skin[28];
         this.mGF.datMgr.stock_skin30 = this._data_stock_skin[29];
         this.mGF.datMgr.stock_skin31 = this._data_stock_skin[30];
         this.mGF.datMgr.stock_skin32 = this._data_stock_skin[31];
         this.mGF.datMgr.stock_skin33 = this._data_stock_skin[32];
         this.mGF.datMgr.stock_skin34 = this._data_stock_skin[33];
         this.mGF.datMgr.stock_skin35 = this._data_stock_skin[34];
         this.mGF.datMgr.stock_skin36 = this._data_stock_skin[35];
         this.mGF.datMgr.stock_skin37 = this._data_stock_skin[36];
         this.mGF.datMgr.stock_skin38 = this._data_stock_skin[37];
         this.mGF.datMgr.stock_skin39 = this._data_stock_skin[38];
         this.mGF.datMgr.stock_skin40 = this._data_stock_skin[39];
         this.mGF.datMgr.stock_skin41 = this._data_stock_skin[40];
         this.mGF.datMgr.stock_skin42 = this._data_stock_skin[41];
         this.mGF.datMgr.stock_skin43 = this._data_stock_skin[42];
         this.mGF.datMgr.stock_skin44 = this._data_stock_skin[43];
         this.mGF.datMgr.stock_skin45 = this._data_stock_skin[44];
         this.mGF.datMgr.stock_skin46 = this._data_stock_skin[45];
         this.mGF.datMgr.stock_skin47 = this._data_stock_skin[46];
         this.mGF.datMgr.stock_skin48 = this._data_stock_skin[47];
         this.mGF.datMgr.stock_weapon_sword01 = this._data_stock_weapon_sword[0];
         this.mGF.datMgr.stock_weapon_sword02 = this._data_stock_weapon_sword[1];
         this.mGF.datMgr.stock_weapon_sword03 = this._data_stock_weapon_sword[2];
         this.mGF.datMgr.stock_weapon_sword04 = this._data_stock_weapon_sword[3];
         this.mGF.datMgr.stock_weapon_sword05 = this._data_stock_weapon_sword[4];
         this.mGF.datMgr.stock_weapon_sword06 = this._data_stock_weapon_sword[5];
         this.mGF.datMgr.stock_weapon_sword07 = this._data_stock_weapon_sword[6];
         this.mGF.datMgr.stock_weapon_sword08 = this._data_stock_weapon_sword[7];
         this.mGF.datMgr.stock_weapon_sword09 = this._data_stock_weapon_sword[8];
         this.mGF.datMgr.stock_weapon_sword10 = this._data_stock_weapon_sword[9];
         this.mGF.datMgr.stock_weapon_sword11 = this._data_stock_weapon_sword[10];
         this.mGF.datMgr.stock_weapon_sword12 = this._data_stock_weapon_sword[11];
         this.mGF.datMgr.stock_weapon_sword13 = this._data_stock_weapon_sword[12];
         this.mGF.datMgr.stock_weapon_sword14 = this._data_stock_weapon_sword[13];
         this.mGF.datMgr.stock_weapon_sword15 = this._data_stock_weapon_sword[14];
         this.mGF.datMgr.stock_weapon_sword16 = this._data_stock_weapon_sword[15];
         this.mGF.datMgr.stock_weapon_bow01 = this._data_stock_weapon_bow[0];
         this.mGF.datMgr.stock_weapon_bow02 = this._data_stock_weapon_bow[1];
         this.mGF.datMgr.stock_weapon_bow03 = this._data_stock_weapon_bow[2];
         this.mGF.datMgr.stock_weapon_bow04 = this._data_stock_weapon_bow[3];
         this.mGF.datMgr.stock_weapon_bow05 = this._data_stock_weapon_bow[4];
         this.mGF.datMgr.stock_weapon_bow06 = this._data_stock_weapon_bow[5];
         this.mGF.datMgr.stock_weapon_bow07 = this._data_stock_weapon_bow[6];
         this.mGF.datMgr.stock_weapon_bow08 = this._data_stock_weapon_bow[7];
         this.mGF.datMgr.stock_weapon_bow09 = this._data_stock_weapon_bow[8];
         this.mGF.datMgr.stock_weapon_bow10 = this._data_stock_weapon_bow[9];
         this.mGF.datMgr.stock_weapon_bow11 = this._data_stock_weapon_bow[10];
         this.mGF.datMgr.stock_weapon_bow12 = this._data_stock_weapon_bow[11];
         this.mGF.datMgr.stock_weapon_bow13 = this._data_stock_weapon_bow[12];
         this.mGF.datMgr.stock_weapon_bow14 = this._data_stock_weapon_bow[13];
         this.mGF.datMgr.stock_weapon_bow15 = this._data_stock_weapon_bow[14];
         this.mGF.datMgr.stock_weapon_bow16 = this._data_stock_weapon_bow[15];
         this.mGF.datMgr.stock_weapon_staff01 = this._data_stock_weapon_staff[0];
         this.mGF.datMgr.stock_weapon_staff02 = this._data_stock_weapon_staff[1];
         this.mGF.datMgr.stock_weapon_staff03 = this._data_stock_weapon_staff[2];
         this.mGF.datMgr.stock_weapon_staff04 = this._data_stock_weapon_staff[3];
         this.mGF.datMgr.stock_weapon_staff05 = this._data_stock_weapon_staff[4];
         this.mGF.datMgr.stock_weapon_staff06 = this._data_stock_weapon_staff[5];
         this.mGF.datMgr.stock_weapon_staff07 = this._data_stock_weapon_staff[6];
         this.mGF.datMgr.stock_weapon_staff08 = this._data_stock_weapon_staff[7];
         this.mGF.datMgr.stock_weapon_staff09 = this._data_stock_weapon_staff[8];
         this.mGF.datMgr.stock_weapon_staff10 = this._data_stock_weapon_staff[9];
         this.mGF.datMgr.stock_weapon_staff11 = this._data_stock_weapon_staff[10];
         this.mGF.datMgr.stock_weapon_staff12 = this._data_stock_weapon_staff[11];
         this.mGF.datMgr.stock_weapon_staff13 = this._data_stock_weapon_staff[12];
         this.mGF.datMgr.stock_weapon_staff14 = this._data_stock_weapon_staff[13];
         this.mGF.datMgr.stock_weapon_staff15 = this._data_stock_weapon_staff[14];
         this.mGF.datMgr.stock_weapon_staff16 = this._data_stock_weapon_staff[15];
         this.mGF.datMgr.stock_weapon_glove01 = this._data_stock_weapon_glove[0];
         this.mGF.datMgr.stock_weapon_glove02 = this._data_stock_weapon_glove[1];
         this.mGF.datMgr.stock_weapon_glove03 = this._data_stock_weapon_glove[2];
         this.mGF.datMgr.stock_weapon_glove04 = this._data_stock_weapon_glove[3];
         this.mGF.datMgr.stock_weapon_glove05 = this._data_stock_weapon_glove[4];
         this.mGF.datMgr.stock_weapon_glove06 = this._data_stock_weapon_glove[5];
         this.mGF.datMgr.stock_weapon_glove07 = this._data_stock_weapon_glove[6];
         this.mGF.datMgr.stock_weapon_glove08 = this._data_stock_weapon_glove[7];
         this.mGF.datMgr.stock_weapon_glove09 = this._data_stock_weapon_glove[8];
         this.mGF.datMgr.stock_weapon_glove10 = this._data_stock_weapon_glove[9];
         this.mGF.datMgr.stock_weapon_glove11 = this._data_stock_weapon_glove[10];
         this.mGF.datMgr.stock_weapon_glove12 = this._data_stock_weapon_glove[11];
         this.mGF.datMgr.stock_weapon_glove13 = this._data_stock_weapon_glove[12];
         this.mGF.datMgr.stock_weapon_glove14 = this._data_stock_weapon_glove[13];
         this.mGF.datMgr.stock_weapon_glove15 = this._data_stock_weapon_glove[14];
         this.mGF.datMgr.stock_weapon_glove16 = this._data_stock_weapon_glove[15];
         this.mGF.datMgr.stock_weapon_spear01 = this._data_stock_weapon_spear[0];
         this.mGF.datMgr.stock_weapon_spear02 = this._data_stock_weapon_spear[1];
         this.mGF.datMgr.stock_weapon_spear03 = this._data_stock_weapon_spear[2];
         this.mGF.datMgr.stock_weapon_spear04 = this._data_stock_weapon_spear[3];
         this.mGF.datMgr.stock_weapon_spear05 = this._data_stock_weapon_spear[4];
         this.mGF.datMgr.stock_weapon_spear06 = this._data_stock_weapon_spear[5];
         this.mGF.datMgr.stock_weapon_spear07 = this._data_stock_weapon_spear[6];
         this.mGF.datMgr.stock_weapon_spear08 = this._data_stock_weapon_spear[7];
         this.mGF.datMgr.stock_weapon_spear09 = this._data_stock_weapon_spear[8];
         this.mGF.datMgr.stock_weapon_spear10 = this._data_stock_weapon_spear[9];
         this.mGF.datMgr.stock_weapon_spear11 = this._data_stock_weapon_spear[10];
         this.mGF.datMgr.stock_weapon_spear12 = this._data_stock_weapon_spear[11];
         this.mGF.datMgr.stock_weapon_spear13 = this._data_stock_weapon_spear[12];
         this.mGF.datMgr.stock_weapon_spear14 = this._data_stock_weapon_spear[13];
         this.mGF.datMgr.stock_weapon_spear15 = this._data_stock_weapon_spear[14];
         this.mGF.datMgr.stock_weapon_spear16 = this._data_stock_weapon_spear[15];
         this.mGF.datMgr.stock_weapon_greatsword01 = this._data_stock_weapon_greatsword[0];
         this.mGF.datMgr.stock_weapon_greatsword02 = this._data_stock_weapon_greatsword[1];
         this.mGF.datMgr.stock_weapon_greatsword03 = this._data_stock_weapon_greatsword[2];
         this.mGF.datMgr.stock_weapon_greatsword04 = this._data_stock_weapon_greatsword[3];
         this.mGF.datMgr.stock_weapon_greatsword05 = this._data_stock_weapon_greatsword[4];
         this.mGF.datMgr.stock_weapon_greatsword06 = this._data_stock_weapon_greatsword[5];
         this.mGF.datMgr.stock_weapon_greatsword07 = this._data_stock_weapon_greatsword[6];
         this.mGF.datMgr.stock_weapon_greatsword08 = this._data_stock_weapon_greatsword[7];
         this.mGF.datMgr.stock_weapon_greatsword09 = this._data_stock_weapon_greatsword[8];
         this.mGF.datMgr.stock_weapon_greatsword10 = this._data_stock_weapon_greatsword[9];
         this.mGF.datMgr.stock_weapon_greatsword11 = this._data_stock_weapon_greatsword[10];
         this.mGF.datMgr.stock_weapon_greatsword12 = this._data_stock_weapon_greatsword[11];
         this.mGF.datMgr.stock_weapon_greatsword13 = this._data_stock_weapon_greatsword[12];
         this.mGF.datMgr.stock_weapon_greatsword14 = this._data_stock_weapon_greatsword[13];
         this.mGF.datMgr.stock_weapon_greatsword15 = this._data_stock_weapon_greatsword[14];
         this.mGF.datMgr.stock_weapon_greatsword16 = this._data_stock_weapon_greatsword[15];
         this.mGF.datMgr.stock_weapon_throw01 = this._data_stock_weapon_throw[0];
         this.mGF.datMgr.stock_weapon_throw02 = this._data_stock_weapon_throw[1];
         this.mGF.datMgr.stock_weapon_throw03 = this._data_stock_weapon_throw[2];
         this.mGF.datMgr.stock_weapon_throw04 = this._data_stock_weapon_throw[3];
         this.mGF.datMgr.stock_weapon_throw05 = this._data_stock_weapon_throw[4];
         this.mGF.datMgr.stock_weapon_throw06 = this._data_stock_weapon_throw[5];
         this.mGF.datMgr.stock_weapon_throw07 = this._data_stock_weapon_throw[6];
         this.mGF.datMgr.stock_weapon_throw08 = this._data_stock_weapon_throw[7];
         this.mGF.datMgr.stock_weapon_throw09 = this._data_stock_weapon_throw[8];
         this.mGF.datMgr.stock_weapon_throw10 = this._data_stock_weapon_throw[9];
         this.mGF.datMgr.stock_weapon_throw11 = this._data_stock_weapon_throw[10];
         this.mGF.datMgr.stock_weapon_throw12 = this._data_stock_weapon_throw[11];
         this.mGF.datMgr.stock_weapon_throw13 = this._data_stock_weapon_throw[12];
         this.mGF.datMgr.stock_weapon_throw14 = this._data_stock_weapon_throw[13];
         this.mGF.datMgr.stock_weapon_throw15 = this._data_stock_weapon_throw[14];
         this.mGF.datMgr.stock_weapon_throw16 = this._data_stock_weapon_throw[15];
         this.mGF.datMgr.stock_weapon_gun01 = this._data_stock_weapon_gun[0];
         this.mGF.datMgr.stock_weapon_gun02 = this._data_stock_weapon_gun[1];
         this.mGF.datMgr.stock_weapon_gun03 = this._data_stock_weapon_gun[2];
         this.mGF.datMgr.stock_weapon_gun04 = this._data_stock_weapon_gun[3];
         this.mGF.datMgr.stock_weapon_gun05 = this._data_stock_weapon_gun[4];
         this.mGF.datMgr.stock_weapon_gun06 = this._data_stock_weapon_gun[5];
         this.mGF.datMgr.stock_weapon_gun07 = this._data_stock_weapon_gun[6];
         this.mGF.datMgr.stock_weapon_gun08 = this._data_stock_weapon_gun[7];
         this.mGF.datMgr.stock_weapon_gun09 = this._data_stock_weapon_gun[8];
         this.mGF.datMgr.stock_weapon_gun10 = this._data_stock_weapon_gun[9];
         this.mGF.datMgr.stock_weapon_gun11 = this._data_stock_weapon_gun[10];
         this.mGF.datMgr.stock_weapon_gun12 = this._data_stock_weapon_gun[11];
         this.mGF.datMgr.stock_weapon_gun13 = this._data_stock_weapon_gun[12];
         this.mGF.datMgr.stock_weapon_gun14 = this._data_stock_weapon_gun[13];
         this.mGF.datMgr.stock_weapon_gun15 = this._data_stock_weapon_gun[14];
         this.mGF.datMgr.stock_weapon_gun16 = this._data_stock_weapon_gun[15];
      }
      
      private function createObjChar(CLASS:int = 1, SKIN:int = 1, WEAPON:int = 1, SCALE:Number = 1) : Object
      {
         var obj:* = null;
         if(CLASS == 1)
         {
            obj = new WARRIOR();
         }
         else if(CLASS == 2)
         {
            obj = new ARCHER();
         }
         else if(CLASS == 3)
         {
            obj = new MAGE();
         }
         else if(CLASS == 4)
         {
            obj = new FIGHTER();
         }
         else if(CLASS == 5)
         {
            obj = new CAVALRY();
         }
         else if(CLASS == 6)
         {
            obj = new SWORDMASTER();
         }
         else if(CLASS == 7)
         {
            obj = new THROWER();
         }
         else if(CLASS == 8)
         {
            obj = new TANKER();
         }
         if(obj)
         {
            if(obj.skin)
            {
               obj.skin.gotoAndStop(SKIN);
            }
            if(obj.weapon)
            {
               obj.weapon.gotoAndStop(WEAPON);
            }
            if(obj.weapon2)
            {
               obj.weapon2.gotoAndStop(WEAPON);
            }
            obj.scaleX = obj.scaleY = SCALE;
            return obj;
         }
         return null;
      }
      
      private function updateCharTab() : *
      {
         if(this.objCharTab1)
         {
            this.char1_tab.removeChild(this.objCharTab1);
         }
         if(this.objCharTab2)
         {
            this.char2_tab.removeChild(this.objCharTab2);
         }
         if(this.objCharTab3)
         {
            this.char3_tab.removeChild(this.objCharTab3);
         }
         if(this.objCharTab4)
         {
            this.char4_tab.removeChild(this.objCharTab4);
         }
         if(this.objCharPreview)
         {
            this.char_preview.removeChild(this.objCharPreview);
         }
         this.objCharTab1 = null;
         this.objCharTab2 = null;
         this.objCharTab3 = null;
         this.objCharTab4 = null;
         this.objCharPreview = null;
         this.objCharTab1 = this.createObjChar(this.mGF.datMgr.char1_class,this.mGF.datMgr.char1_skin,this.mGF.datMgr.char1_weapon,0.2);
         this.char1_tab.addChild(this.objCharTab1);
         this.objCharTab2 = this.createObjChar(this.mGF.datMgr.char2_class,this.mGF.datMgr.char2_skin,this.mGF.datMgr.char2_weapon,0.2);
         this.char2_tab.addChild(this.objCharTab2);
         this.objCharTab3 = this.createObjChar(this.mGF.datMgr.char3_class,this.mGF.datMgr.char3_skin,this.mGF.datMgr.char3_weapon,0.2);
         this.char3_tab.addChild(this.objCharTab3);
         this.objCharTab4 = this.createObjChar(this.mGF.datMgr.char4_class,this.mGF.datMgr.char4_skin,this.mGF.datMgr.char4_weapon,0.2);
         this.char4_tab.addChild(this.objCharTab4);
         this.char1_tab.select.visible = false;
         this.char2_tab.select.visible = false;
         this.char3_tab.select.visible = false;
         this.char4_tab.select.visible = false;
         if(this._preview_select == 1)
         {
            this.objCharPreview = this.createObjChar(this.mGF.datMgr.char1_class,this.mGF.datMgr.char1_skin,this.mGF.datMgr.char1_weapon,0.5);
            this.char_preview.addChild(this.objCharPreview);
            this.char1_tab.select.visible = true;
         }
         else if(this._preview_select == 2)
         {
            this.objCharPreview = this.createObjChar(this.mGF.datMgr.char2_class,this.mGF.datMgr.char2_skin,this.mGF.datMgr.char2_weapon,0.5);
            this.char_preview.addChild(this.objCharPreview);
            this.char2_tab.select.visible = true;
         }
         else if(this._preview_select == 3)
         {
            this.objCharPreview = this.createObjChar(this.mGF.datMgr.char3_class,this.mGF.datMgr.char3_skin,this.mGF.datMgr.char3_weapon,0.5);
            this.char_preview.addChild(this.objCharPreview);
            this.char3_tab.select.visible = true;
         }
         else if(this._preview_select == 4)
         {
            this.objCharPreview = this.createObjChar(this.mGF.datMgr.char4_class,this.mGF.datMgr.char4_skin,this.mGF.datMgr.char4_weapon,0.5);
            this.char_preview.addChild(this.objCharPreview);
            this.char4_tab.select.visible = true;
         }
         this.updateStatView();
      }
      
      private function updateSubClassListTab() : *
      {
         var iPOS:int = 1;
         var i:int = 0;
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setFramePosition(iPOS);
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setTextValue("");
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setActive(false);
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            if(this._data_unlock_class[i + 16 * (this._page_select - 1)] > 0)
            {
               this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
               this._slot_clip[i].setActive(true);
            }
         }
      }
      
      private function updateSubSkinListTab() : *
      {
         var iPOS:int = 20;
         var i:int = 0;
         var j:int = 0;
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setFramePosition(iPOS);
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setTextValue("");
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setActive(false);
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            if(this._data_stock_skin[i + 16 * (this._page_select - 1)] > 0)
            {
               this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
               this._slot_clip[i].setTextValue(String(this._data_stock_skin[i + 16 * (this._page_select - 1)]));
               this._slot_clip[i].setActive(true);
            }
         }
      }
      
      private function updateSubWeaponListTab() : *
      {
         var charCLASS:int = 1;
         if(this._preview_select == 1)
         {
            charCLASS = int(this.mGF.datMgr.char1_class);
         }
         else if(this._preview_select == 2)
         {
            charCLASS = int(this.mGF.datMgr.char2_class);
         }
         else if(this._preview_select == 3)
         {
            charCLASS = int(this.mGF.datMgr.char3_class);
         }
         else if(this._preview_select == 4)
         {
            charCLASS = int(this.mGF.datMgr.char4_class);
         }
         var iPOS:int = 80;
         var i:int = 0;
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setFramePosition(iPOS);
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setTextValue("");
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            this._slot_clip[i].setActive(false);
         }
         if(charCLASS == 1)
         {
            iPOS = 80;
         }
         else if(charCLASS == 2)
         {
            iPOS = 140;
         }
         else if(charCLASS == 3)
         {
            iPOS = 160;
         }
         else if(charCLASS == 4)
         {
            iPOS = 180;
         }
         else if(charCLASS == 5)
         {
            iPOS = 120;
         }
         else if(charCLASS == 6)
         {
            iPOS = 100;
         }
         else if(charCLASS == 7)
         {
            iPOS = 220;
         }
         else if(charCLASS == 8)
         {
            iPOS = 200;
         }
         if(charCLASS == 1)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_sword[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_sword[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
         else if(charCLASS == 2)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_bow[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_bow[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
         else if(charCLASS == 3)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_staff[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_staff[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
         else if(charCLASS == 4)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_glove[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_glove[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
         else if(charCLASS == 5)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_spear[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_spear[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
         else if(charCLASS == 6)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_greatsword[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_greatsword[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
         else if(charCLASS == 7)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_throw[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_throw[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
         else if(charCLASS == 8)
         {
            for(i = 0; i < this._slot_clip.length; i++)
            {
               if(this._data_stock_weapon_gun[i + 16 * (this._page_select - 1)] > 0)
               {
                  this._slot_clip[i].setFramePosition(iPOS + 1 + i + 16 * (this._page_select - 1));
                  this._slot_clip[i].setTextValue(String(this._data_stock_weapon_gun[i + 16 * (this._page_select - 1)]));
                  this._slot_clip[i].setActive(true);
               }
            }
         }
      }
      
      private function updateSlotListTab() : *
      {
         if(this._tab_select == 1)
         {
            this.updateSubClassListTab();
         }
         else if(this._tab_select == 2)
         {
            this.updateSubSkinListTab();
         }
         if(this._tab_select == 3)
         {
            this.updateSubWeaponListTab();
         }
         this.page_cur.htmlText = String(this._page_select);
         this.page_total.htmlText = String(this._total_page);
      }
      
      private function updateStatView() : *
      {
         var class_id:int = 1;
         var skin_id:int = 1;
         var weapon_id:int = 1;
         if(this._preview_select == 1)
         {
            class_id = int(this.mGF.datMgr.char1_class);
            skin_id = int(this.mGF.datMgr.char1_skin);
            weapon_id = int(this.mGF.datMgr.char1_weapon);
         }
         else if(this._preview_select == 2)
         {
            class_id = int(this.mGF.datMgr.char2_class);
            skin_id = int(this.mGF.datMgr.char2_skin);
            weapon_id = int(this.mGF.datMgr.char2_weapon);
         }
         else if(this._preview_select == 3)
         {
            class_id = int(this.mGF.datMgr.char3_class);
            skin_id = int(this.mGF.datMgr.char3_skin);
            weapon_id = int(this.mGF.datMgr.char3_weapon);
         }
         else if(this._preview_select == 4)
         {
            class_id = int(this.mGF.datMgr.char4_class);
            skin_id = int(this.mGF.datMgr.char4_skin);
            weapon_id = int(this.mGF.datMgr.char4_weapon);
         }
         var classStat:* = new CHRClassStat(class_id);
         var skinStat:* = new CHRSkinStat(skin_id);
         var weaponStat:* = new CHRWeaponStat(class_id,weapon_id);
         this.health.htmlText = String(Math.round(classStat.health + skinStat.health + weaponStat.health));
         this.power.htmlText = String(Math.round(classStat.power + skinStat.power + weaponStat.power));
         this.element.htmlText = String(weaponStat.getElementName());
         this.speed.htmlText = String(Number(classStat.speed + skinStat.speed + weaponStat.speed).toFixed(2));
         this.melee.htmlText = String(Math.round(Math.min(Math.max((classStat.melee + skinStat.melee + weaponStat.melee) * 100,-99),99)) + " %");
         this.slash.htmlText = String(Math.round(Math.min(Math.max((classStat.slash + skinStat.slash + weaponStat.slash) * 100,-99),99)) + " %");
         this.pierce.htmlText = String(Math.round(Math.min(Math.max((classStat.pierce + skinStat.pierce + weaponStat.pierce) * 100,-99),99)) + " %");
         this.fire.htmlText = String(Math.round(Math.min(Math.max((classStat.fire + skinStat.fire + weaponStat.fire) * 100,-99),99)) + " %");
         this.ice.htmlText = String(Math.round(Math.min(Math.max((classStat.ice + skinStat.ice + weaponStat.ice) * 100,-99),99)) + " %");
         this.thunder.htmlText = String(Math.round(Math.min(Math.max((classStat.thunder + skinStat.thunder + weaponStat.thunder) * 100,-99),99)) + " %");
         this.mana.htmlText = String(Math.round(classStat.costMana + skinStat.costMana + weaponStat.costMana));
      }
      
      private function executeSwitchTab(SLOT:int = 1) : *
      {
         var class_id:int = 1;
         var skin_id:int = 1;
         var weapon_id:int = 1;
         SLOT += (this._page_select - 1) * 16;
         if(this._preview_select == 1)
         {
            class_id = int(this.mGF.datMgr.char1_class);
            skin_id = int(this.mGF.datMgr.char1_skin);
            weapon_id = int(this.mGF.datMgr.char1_weapon);
         }
         else if(this._preview_select == 2)
         {
            class_id = int(this.mGF.datMgr.char2_class);
            skin_id = int(this.mGF.datMgr.char2_skin);
            weapon_id = int(this.mGF.datMgr.char2_weapon);
         }
         else if(this._preview_select == 3)
         {
            class_id = int(this.mGF.datMgr.char3_class);
            skin_id = int(this.mGF.datMgr.char3_skin);
            weapon_id = int(this.mGF.datMgr.char3_weapon);
         }
         else if(this._preview_select == 4)
         {
            class_id = int(this.mGF.datMgr.char4_class);
            skin_id = int(this.mGF.datMgr.char4_skin);
            weapon_id = int(this.mGF.datMgr.char4_weapon);
         }
         this._data_stock_skin[skin_id - 1] = Math.min(this._data_stock_skin[skin_id - 1] + 1,9);
         if(class_id == 1)
         {
            this._data_stock_weapon_sword[weapon_id - 1] = Math.min(this._data_stock_weapon_sword[weapon_id - 1] + 1,9);
         }
         else if(class_id == 2)
         {
            this._data_stock_weapon_bow[weapon_id - 1] = Math.min(this._data_stock_weapon_bow[weapon_id - 1] + 1,9);
         }
         else if(class_id == 3)
         {
            this._data_stock_weapon_staff[weapon_id - 1] = Math.min(this._data_stock_weapon_staff[weapon_id - 1] + 1,9);
         }
         else if(class_id == 4)
         {
            this._data_stock_weapon_glove[weapon_id - 1] = Math.min(this._data_stock_weapon_glove[weapon_id - 1] + 1,9);
         }
         else if(class_id == 5)
         {
            this._data_stock_weapon_spear[weapon_id - 1] = Math.min(this._data_stock_weapon_spear[weapon_id - 1] + 1,9);
         }
         else if(class_id == 6)
         {
            this._data_stock_weapon_greatsword[weapon_id - 1] = Math.min(this._data_stock_weapon_greatsword[weapon_id - 1] + 1,9);
         }
         else if(class_id == 7)
         {
            this._data_stock_weapon_throw[weapon_id - 1] = Math.min(this._data_stock_weapon_throw[weapon_id - 1] + 1,9);
         }
         else if(class_id == 8)
         {
            this._data_stock_weapon_gun[weapon_id - 1] = Math.min(this._data_stock_weapon_gun[weapon_id - 1] + 1,9);
         }
         if(this._tab_select == 1)
         {
            class_id = SLOT;
            skin_id = skin_id;
            weapon_id = 1;
         }
         else if(this._tab_select == 2)
         {
            class_id = class_id;
            skin_id = SLOT;
            weapon_id = weapon_id;
         }
         else if(this._tab_select == 3)
         {
            class_id = class_id;
            skin_id = skin_id;
            weapon_id = SLOT;
         }
         this._data_stock_skin[skin_id - 1] = Math.max(this._data_stock_skin[skin_id - 1] - 1,0);
         if(class_id == 1)
         {
            this._data_stock_weapon_sword[weapon_id - 1] = Math.max(this._data_stock_weapon_sword[weapon_id - 1] - 1,0);
         }
         else if(class_id == 2)
         {
            this._data_stock_weapon_bow[weapon_id - 1] = Math.max(this._data_stock_weapon_bow[weapon_id - 1] - 1,0);
         }
         else if(class_id == 3)
         {
            this._data_stock_weapon_staff[weapon_id - 1] = Math.max(this._data_stock_weapon_staff[weapon_id - 1] - 1,0);
         }
         else if(class_id == 4)
         {
            this._data_stock_weapon_glove[weapon_id - 1] = Math.max(this._data_stock_weapon_glove[weapon_id - 1] - 1,0);
         }
         else if(class_id == 5)
         {
            this._data_stock_weapon_spear[weapon_id - 1] = Math.max(this._data_stock_weapon_spear[weapon_id - 1] - 1,0);
         }
         else if(class_id == 6)
         {
            this._data_stock_weapon_greatsword[weapon_id - 1] = Math.max(this._data_stock_weapon_greatsword[weapon_id - 1] - 1,0);
         }
         else if(class_id == 7)
         {
            this._data_stock_weapon_throw[weapon_id - 1] = Math.max(this._data_stock_weapon_throw[weapon_id - 1] - 1,0);
         }
         else if(class_id == 8)
         {
            this._data_stock_weapon_gun[weapon_id - 1] = Math.max(this._data_stock_weapon_gun[weapon_id - 1] - 1,0);
         }
         if(this._preview_select == 1)
         {
            this.mGF.datMgr.char1_class = class_id;
            this.mGF.datMgr.char1_skin = skin_id;
            this.mGF.datMgr.char1_weapon = weapon_id;
         }
         else if(this._preview_select == 2)
         {
            this.mGF.datMgr.char2_class = class_id;
            this.mGF.datMgr.char2_skin = skin_id;
            this.mGF.datMgr.char2_weapon = weapon_id;
         }
         else if(this._preview_select == 3)
         {
            this.mGF.datMgr.char3_class = class_id;
            this.mGF.datMgr.char3_skin = skin_id;
            this.mGF.datMgr.char3_weapon = weapon_id;
         }
         else if(this._preview_select == 4)
         {
            this.mGF.datMgr.char4_class = class_id;
            this.mGF.datMgr.char4_skin = skin_id;
            this.mGF.datMgr.char4_weapon = weapon_id;
         }
         this.updateCharTab();
         this.updateSlotListTab();
      }
      
      private function resetAddInfo() : *
      {
         this.addhealth.htmlText = String("");
         this.addpower.htmlText = String("");
         this.addelement.htmlText = String("");
         this.addspeed.htmlText = String("");
         this.addmelee.htmlText = String("");
         this.addslash.htmlText = String("");
         this.addpierce.htmlText = String("");
         this.addfire.htmlText = String("");
         this.addice.htmlText = String("");
         this.addthunder.htmlText = String("");
         this.addmana.htmlText = String("");
      }
      
      private function executeShowInfo(CLIP:*, SLOT:int = 1) : *
      {
         var class_id:int = 1;
         var skin_id:int = 1;
         var weapon_id:int = 1;
         SLOT += (this._page_select - 1) * 16;
         if(this._preview_select == 1)
         {
            class_id = int(this.mGF.datMgr.char1_class);
            skin_id = int(this.mGF.datMgr.char1_skin);
            weapon_id = int(this.mGF.datMgr.char1_weapon);
         }
         else if(this._preview_select == 2)
         {
            class_id = int(this.mGF.datMgr.char2_class);
            skin_id = int(this.mGF.datMgr.char2_skin);
            weapon_id = int(this.mGF.datMgr.char2_weapon);
         }
         else if(this._preview_select == 3)
         {
            class_id = int(this.mGF.datMgr.char3_class);
            skin_id = int(this.mGF.datMgr.char3_skin);
            weapon_id = int(this.mGF.datMgr.char3_weapon);
         }
         else if(this._preview_select == 4)
         {
            class_id = int(this.mGF.datMgr.char4_class);
            skin_id = int(this.mGF.datMgr.char4_skin);
            weapon_id = int(this.mGF.datMgr.char4_weapon);
         }
         var classStat:* = new CHRClassStat(class_id);
         var skinStat:* = new CHRSkinStat(skin_id);
         var weaponStat:* = new CHRWeaponStat(class_id,weapon_id);
         var classStat2:* = new CHRClassStat();
         var skinStat2:* = new CHRSkinStat();
         var weaponStat2:* = new CHRWeaponStat();
         if(this._tab_select == 1)
         {
            classStat2.init(SLOT);
            this.mGF.utilMgr.infoTip(CLIP,10,classStat2.name,String(""),String("Health\t\t" + classStat2.health + "\n" + "Power\t\t" + classStat2.power + "\n" + "Speed\t\t" + classStat2.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(classStat2.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(classStat2.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(classStat2.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(classStat2.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(classStat2.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(classStat2.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + classStat2.costMana));
         }
         else if(this._tab_select == 2)
         {
            skinStat2.init(SLOT);
            this.mGF.utilMgr.infoTip(CLIP,10,skinStat2.name,String(""),String("Health\t\t" + skinStat2.health + "\n" + "Power\t\t" + skinStat2.power + "\n" + "Speed\t\t" + skinStat2.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(skinStat2.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(skinStat2.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(skinStat2.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(skinStat2.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(skinStat2.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(skinStat2.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + skinStat2.costMana));
         }
         else if(this._tab_select == 3)
         {
            weaponStat2.init(class_id,SLOT);
            this.mGF.utilMgr.infoTip(CLIP,10,weaponStat2.name,String(""),String("Health\t\t" + weaponStat2.health + "\n" + "Power\t\t" + weaponStat2.power + "\t" + weaponStat2.desc + "\n" + "Speed\t\t" + weaponStat2.speed + "\n" + "D.Melee\t\t" + Math.min(Math.max(weaponStat2.melee * 100,-99),99) + "\t\tD.Slash\t   " + Math.min(Math.max(weaponStat2.slash * 100,-99),99) + "\n" + "D.Pierce\t\t" + Math.min(Math.max(weaponStat2.pierce * 100,-99),99) + "\t\tD.Fire\t\t   " + Math.min(Math.max(weaponStat2.fire * 100,-99),99) + "\n" + "D.Ice\t\t\t" + Math.min(Math.max(weaponStat2.ice * 100,-99),99) + "\t\tD.Thunder\t   " + Math.min(Math.max(weaponStat2.thunder * 100,-99),99) + "\n" + "Mana Cost\t\t" + weaponStat2.costMana));
         }
         var curHealth:int = classStat.health + skinStat.health + weaponStat.health;
         var curPower:int = classStat.power + skinStat.power + weaponStat.power;
         var curElement:int = int(weaponStat.element);
         var curSpeed:Number = classStat.speed + skinStat.speed + weaponStat.speed;
         var curMelee:Number = classStat.melee + skinStat.melee + weaponStat.melee;
         var curSlash:Number = classStat.slash + skinStat.slash + weaponStat.slash;
         var curPierce:Number = classStat.pierce + skinStat.pierce + weaponStat.pierce;
         var curFire:Number = classStat.fire + skinStat.fire + weaponStat.fire;
         var curIce:Number = classStat.ice + skinStat.ice + weaponStat.ice;
         var curThunder:Number = classStat.thunder + skinStat.thunder + weaponStat.thunder;
         var curMana:int = classStat.costMana + skinStat.costMana + weaponStat.costMana;
         var addHealth:int = 0;
         var addPower:int = 0;
         var addElement:int = 0;
         var addSpeed:Number = 0;
         var addMelee:Number = 0;
         var addSlash:Number = 0;
         var addPierce:Number = 0;
         var addFire:Number = 0;
         var addIce:Number = 0;
         var addThunder:Number = 0;
         var addMana:int = 0;
         if(this._tab_select == 1)
         {
            addHealth = classStat2.health + skinStat.health + weaponStat.health;
            addPower = classStat2.power + skinStat.power + weaponStat.power;
            addElement = 0;
            addSpeed = classStat2.speed + skinStat.speed + weaponStat.speed;
            addMelee = classStat2.melee + skinStat.melee + weaponStat.melee;
            addSlash = classStat2.slash + skinStat.slash + weaponStat.slash;
            addPierce = classStat2.pierce + skinStat.pierce + weaponStat.pierce;
            addFire = classStat2.fire + skinStat.fire + weaponStat.fire;
            addIce = classStat2.ice + skinStat.ice + weaponStat.ice;
            addThunder = classStat2.thunder + skinStat.thunder + weaponStat.thunder;
            addMana = classStat2.costMana + skinStat.costMana + weaponStat.costMana;
         }
         else if(this._tab_select == 2)
         {
            addHealth = classStat.health + skinStat2.health + weaponStat.health;
            addPower = classStat.power + skinStat2.power + weaponStat.power;
            addElement = 0;
            addSpeed = classStat.speed + skinStat2.speed + weaponStat.speed;
            addMelee = classStat.melee + skinStat2.melee + weaponStat.melee;
            addSlash = classStat.slash + skinStat2.slash + weaponStat.slash;
            addPierce = classStat.pierce + skinStat2.pierce + weaponStat.pierce;
            addFire = classStat.fire + skinStat2.fire + weaponStat.fire;
            addIce = classStat.ice + skinStat2.ice + weaponStat.ice;
            addThunder = classStat.thunder + skinStat2.thunder + weaponStat.thunder;
            addMana = classStat.costMana + skinStat2.costMana + weaponStat.costMana;
         }
         else if(this._tab_select == 3)
         {
            addHealth = classStat.health + skinStat.health + weaponStat2.health;
            addPower = classStat.power + skinStat.power + weaponStat2.power;
            addElement = int(weaponStat2.element);
            addSpeed = classStat.speed + skinStat.speed + weaponStat2.speed;
            addMelee = classStat.melee + skinStat.melee + weaponStat2.melee;
            addSlash = classStat.slash + skinStat.slash + weaponStat2.slash;
            addPierce = classStat.pierce + skinStat.pierce + weaponStat2.pierce;
            addFire = classStat.fire + skinStat.fire + weaponStat2.fire;
            addIce = classStat.ice + skinStat.ice + weaponStat2.ice;
            addThunder = classStat.thunder + skinStat.thunder + weaponStat2.thunder;
            addMana = classStat.costMana + skinStat.costMana + weaponStat2.costMana;
         }
         this.resetAddInfo();
         if(curHealth != addHealth)
         {
            if(addHealth - curHealth > 0)
            {
               this.addhealth.htmlText = String("+") + String(addHealth - curHealth);
            }
            else
            {
               this.addhealth.htmlText = String(addHealth - curHealth);
            }
         }
         if(curPower != addPower)
         {
            if(addPower - curPower > 0)
            {
               this.addpower.htmlText = String("+") + String(addPower - curPower);
            }
            else
            {
               this.addpower.htmlText = String(addPower - curPower);
            }
         }
         if(curElement != addElement)
         {
         }
         if(curSpeed != addSpeed)
         {
            if(addSpeed - curSpeed > 0)
            {
               this.addspeed.htmlText = String("+") + String(Number(addSpeed - curSpeed).toFixed(2));
            }
            else
            {
               this.addspeed.htmlText = String(Number(addSpeed - curSpeed).toFixed(2));
            }
         }
         if(curMelee != addMelee)
         {
            if(addMelee - curMelee > 0)
            {
               this.addmelee.htmlText = String("+") + String(int(addMelee * 100 - curMelee * 100));
            }
            else
            {
               this.addmelee.htmlText = String(int(addMelee * 100 - curMelee * 100));
            }
         }
         if(curSlash != addSlash)
         {
            if(addSlash - curSlash > 0)
            {
               this.addslash.htmlText = String("+") + String(int(addSlash * 100 - curSlash * 100));
            }
            else
            {
               this.addslash.htmlText = String(int(addSlash * 100 - curSlash * 100));
            }
         }
         if(curPierce != addPierce)
         {
            if(addPierce - curPierce > 0)
            {
               this.addpierce.htmlText = String("+") + String(int(addPierce * 100 - curPierce * 100));
            }
            else
            {
               this.addpierce.htmlText = String(int(addPierce * 100 - curPierce * 100));
            }
         }
         if(curFire != addFire)
         {
            if(addFire - curFire > 0)
            {
               this.addfire.htmlText = String("+") + String(int(addFire * 100 - curFire * 100));
            }
            else
            {
               this.addfire.htmlText = String(int(addFire * 100 - curFire * 100));
            }
         }
         if(curIce != addIce)
         {
            if(addIce - curIce > 0)
            {
               this.addice.htmlText = String("+") + String(int(addIce * 100 - curIce * 100));
            }
            else
            {
               this.addice.htmlText = String(int(addIce * 100 - curIce * 100));
            }
         }
         if(curThunder != addThunder)
         {
            if(addThunder - curThunder > 0)
            {
               this.addthunder.htmlText = String("+") + String(int(addThunder * 100 - curThunder * 100));
            }
            else
            {
               this.addthunder.htmlText = String(int(addThunder * 100 - curThunder * 100));
            }
         }
         if(curMana != addMana)
         {
            if(addMana - curMana > 0)
            {
               this.addmana.htmlText = String("+") + String(addMana - curMana);
            }
            else
            {
               this.addmana.htmlText = String(addMana - curMana);
            }
         }
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         var clip:* = new formation_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function charTab1Click(event:MouseEvent) : void
      {
         this._preview_select = 1;
         this.updateCharTab();
         this.updateSlotListTab();
      }
      
      private function charTab2Click(event:MouseEvent) : void
      {
         this._preview_select = 2;
         this.updateCharTab();
         this.updateSlotListTab();
      }
      
      private function charTab3Click(event:MouseEvent) : void
      {
         this._preview_select = 3;
         this.updateCharTab();
         this.updateSlotListTab();
      }
      
      private function charTab4Click(event:MouseEvent) : void
      {
         this._preview_select = 4;
         this.updateCharTab();
         this.updateSlotListTab();
      }
      
      private function classTabClick(event:MouseEvent) : void
      {
         this._tab_select = 1;
         this._page_select = 1;
         this._total_page = 1;
         this.updateSlotListTab();
      }
      
      private function skinTabClick(event:MouseEvent) : void
      {
         this._tab_select = 2;
         this._page_select = 1;
         this._total_page = 3;
         this.updateSlotListTab();
      }
      
      private function weaponTabClick(event:MouseEvent) : void
      {
         this._tab_select = 3;
         this._page_select = 1;
         this._total_page = 1;
         this.updateSlotListTab();
      }
      
      private function slotPrevClick(event:MouseEvent) : void
      {
         this._page_select = Math.max(this._page_select - 1,1);
         this.updateSlotListTab();
      }
      
      private function slotNextClick(event:MouseEvent) : void
      {
         this._page_select = Math.min(this._page_select + 1,this._total_page);
         this.updateSlotListTab();
      }
      
      private function frameHandle(event:Event) : void
      {
         var i:int = 0;
         for(i = 0; i < this._slot_clip.length; i++)
         {
            if(this._slot_clip[i].isMouseClick())
            {
               this.executeSwitchTab(i + 1);
            }
         }
         for(i = 0; i < this._slot_clip.length; i++)
         {
            if(this._slot_clip[i].isMouseOver())
            {
               this.executeShowInfo(this._slot_clip[i].getCLIP(),i + 1);
            }
         }
         var infoOver:Boolean = false;
         for(i = 0; i < this._slot_clip.length; i++)
         {
            if(this._slot_clip[i].showInfoOver)
            {
               infoOver = true;
               break;
            }
         }
         if(infoOver == false)
         {
            this.resetAddInfo();
            trace("resete");
         }
      }
   }
}

