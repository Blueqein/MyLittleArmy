package Game.Interface
{
   import Game.System.StatDef.*;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class Formation extends MovieClip
   {
      
      public var spell_2:MovieClip;
      
      public var boost_1:MovieClip;
      
      public var btn_close:SimpleButton;
      
      public var spell_3:MovieClip;
      
      public var boost_2:MovieClip;
      
      public var spell_4:MovieClip;
      
      public var boost_3:MovieClip;
      
      public var spell_5:MovieClip;
      
      public var spell_6:MovieClip;
      
      public var char_1:MovieClip;
      
      public var spell_7:MovieClip;
      
      public var char_2:MovieClip;
      
      public var char_3:MovieClip;
      
      public var char_hero:MovieClip;
      
      public var char_4:MovieClip;
      
      public var money:TextField;
      
      public var btn_edit_troops:SimpleButton;
      
      public var spell_1:MovieClip;
      
      private var mGF:*;
      
      private var dispCont:*;
      
      private var objCharHero:*;
      
      private var objChar1:*;
      
      private var objChar2:*;
      
      private var objChar3:*;
      
      private var objChar4:*;
      
      private var boost1Name:String = "";
      
      private var boost2Name:String = "";
      
      private var boost3Name:String = "";
      
      private var spell1Name:String = "";
      
      private var spell2Name:String = "";
      
      private var spell3Name:String = "";
      
      private var spell4Name:String = "";
      
      private var spell5Name:String = "";
      
      private var spell6Name:String = "";
      
      private var spell7Name:String = "";
      
      private var boost1Level:int = 0;
      
      private var boost2Level:int = 0;
      
      private var boost3Level:int = 0;
      
      private var spell1Level:int = 0;
      
      private var spell2Level:int = 0;
      
      private var spell3Level:int = 0;
      
      private var spell4Level:int = 0;
      
      private var spell5Level:int = 0;
      
      private var spell6Level:int = 0;
      
      private var spell7Level:int = 0;
      
      public function Formation()
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
         this.btn_edit_troops.addEventListener(MouseEvent.CLICK,this.editTroopsClick,false,0,true);
         this.btn_close.addEventListener(MouseEvent.CLICK,this.closeClick,false,0,true);
         this.objCharHero = this.createObjHero(this.mGF.datMgr.hero_type,0.2);
         this.char_hero.addChild(this.objCharHero);
         this.objChar1 = this.createObjChar(this.mGF.datMgr.char1_class,this.mGF.datMgr.char1_skin,this.mGF.datMgr.char1_weapon,0.2);
         this.char_1.addChild(this.objChar1);
         this.objChar2 = this.createObjChar(this.mGF.datMgr.char2_class,this.mGF.datMgr.char2_skin,this.mGF.datMgr.char2_weapon,0.2);
         this.char_2.addChild(this.objChar2);
         this.objChar3 = this.createObjChar(this.mGF.datMgr.char3_class,this.mGF.datMgr.char3_skin,this.mGF.datMgr.char3_weapon,0.2);
         this.char_3.addChild(this.objChar3);
         this.objChar4 = this.createObjChar(this.mGF.datMgr.char4_class,this.mGF.datMgr.char4_skin,this.mGF.datMgr.char4_weapon,0.2);
         this.char_4.addChild(this.objChar4);
         this.char_1.select.visible = false;
         this.char_2.select.visible = false;
         this.char_3.select.visible = false;
         this.char_4.select.visible = false;
         this.updateUpgrade();
         if(this.mGF.datMgr.help_upgrade <= 0)
         {
            clipTut = new help_mc();
            clipTut.init(this.mGF);
            clipTut.setPage(1);
            this.mGF.datMgr.help_upgrade = 1;
         }
         trace("init upgrade ... ok !");
      }
      
      public function destroy() : *
      {
         this.btn_close.removeEventListener(MouseEvent.CLICK,this.closeClick);
         this.dispCont.removeChild(this);
         this.dispCont = null;
         this.mGF = null;
         trace("destroy upgrade ... ok !");
      }
      
      private function removeMouseEvent() : *
      {
         this.boost_1.removeEventListener(MouseEvent.CLICK,this.boost1Click);
         this.boost_1.removeEventListener(MouseEvent.CLICK,this.boost1Over);
         this.boost_2.removeEventListener(MouseEvent.CLICK,this.boost2Click);
         this.boost_2.removeEventListener(MouseEvent.CLICK,this.boost2Over);
         this.boost_3.removeEventListener(MouseEvent.CLICK,this.boost3Click);
         this.boost_3.removeEventListener(MouseEvent.CLICK,this.boost3Over);
         this.spell_1.removeEventListener(MouseEvent.CLICK,this.spell1Click);
         this.spell_1.removeEventListener(MouseEvent.CLICK,this.spell1Over);
         this.spell_2.removeEventListener(MouseEvent.CLICK,this.spell2Click);
         this.spell_2.removeEventListener(MouseEvent.CLICK,this.spell2Over);
         this.spell_3.removeEventListener(MouseEvent.CLICK,this.spell3Click);
         this.spell_3.removeEventListener(MouseEvent.CLICK,this.spell3Over);
         this.spell_4.removeEventListener(MouseEvent.CLICK,this.spell4Click);
         this.spell_4.removeEventListener(MouseEvent.CLICK,this.spell4Over);
         this.spell_5.removeEventListener(MouseEvent.CLICK,this.spell5Click);
         this.spell_5.removeEventListener(MouseEvent.CLICK,this.spell5Over);
         this.spell_6.removeEventListener(MouseEvent.CLICK,this.spell6Click);
         this.spell_6.removeEventListener(MouseEvent.CLICK,this.spell6Over);
         this.spell_7.removeEventListener(MouseEvent.CLICK,this.spell7Click);
         this.spell_7.removeEventListener(MouseEvent.CLICK,this.spell7Over);
      }
      
      private function editTroopsClick(event:MouseEvent) : void
      {
         var clip:* = new formation2_mc();
         clip.init(this.mGF);
         this.destroy();
      }
      
      private function closeClick(event:MouseEvent) : void
      {
         this.mGF.requestSave();
         this.destroy();
      }
      
      private function boost1Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.boost1Name,this.boost1Level);
      }
      
      private function boost1Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.boost_1,this.boost1Name,this.boost1Level);
      }
      
      private function boost2Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.boost2Name,this.boost2Level);
      }
      
      private function boost2Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.boost_2,this.boost2Name,this.boost2Level);
      }
      
      private function boost3Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.boost3Name,this.boost3Level);
      }
      
      private function boost3Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.boost_3,this.boost3Name,this.boost3Level);
      }
      
      private function spell1Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.spell1Name,this.spell1Level);
      }
      
      private function spell1Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.spell_1,this.spell1Name,this.spell1Level);
      }
      
      private function spell2Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.spell2Name,this.spell2Level);
      }
      
      private function spell2Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.spell_2,this.spell2Name,this.spell2Level);
      }
      
      private function spell3Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.spell3Name,this.spell3Level);
      }
      
      private function spell3Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.spell_3,this.spell3Name,this.spell3Level);
      }
      
      private function spell4Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.spell4Name,this.spell4Level);
      }
      
      private function spell4Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.spell_4,this.spell4Name,this.spell4Level);
      }
      
      private function spell5Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.spell5Name,this.spell5Level);
      }
      
      private function spell5Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.spell_5,this.spell5Name,this.spell5Level);
      }
      
      private function spell6Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.spell6Name,this.spell6Level);
      }
      
      private function spell6Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.spell_6,this.spell6Name,this.spell6Level);
      }
      
      private function spell7Click(event:MouseEvent) : void
      {
         this.executeUpgrade(this.spell7Name,this.spell7Level);
      }
      
      private function spell7Over(event:MouseEvent) : void
      {
         this.executeShowInfo(this.spell_7,this.spell7Name,this.spell7Level);
      }
      
      private function updateUpgrade() : *
      {
         this.removeMouseEvent();
         this.boost1Name = "attack";
         this.boost2Name = "defense";
         this.boost3Name = "mana";
         this.boost1Level = this.mGF.datMgr.hero_boost_attack;
         this.boost2Level = this.mGF.datMgr.hero_boost_defense;
         this.boost3Level = this.mGF.datMgr.hero_boost_mana;
         this.boost_1.buttonMode = false;
         this.boost_2.buttonMode = false;
         this.boost_3.buttonMode = false;
         this.boost_1.gotoAndStop(this.boost1Name);
         this.boost_2.gotoAndStop(this.boost2Name);
         this.boost_3.gotoAndStop(this.boost3Name);
         this.boost_1.level.gotoAndStop(this.boost1Level + 1);
         this.boost_2.level.gotoAndStop(this.boost2Level + 1);
         this.boost_3.level.gotoAndStop(this.boost3Level + 1);
         if(this.boost1Level <= 3)
         {
            this.boost_1.buttonMode = true;
            this.boost_1.addEventListener(MouseEvent.CLICK,this.boost1Click,false,0,true);
            this.boost_1.addEventListener(MouseEvent.MOUSE_OVER,this.boost1Over,false,0,true);
         }
         if(this.boost2Level <= 3)
         {
            this.boost_2.buttonMode = true;
            this.boost_2.addEventListener(MouseEvent.CLICK,this.boost2Click,false,0,true);
            this.boost_2.addEventListener(MouseEvent.MOUSE_OVER,this.boost2Over,false,0,true);
         }
         if(this.boost3Level <= 3)
         {
            this.boost_3.buttonMode = true;
            this.boost_3.addEventListener(MouseEvent.CLICK,this.boost3Click,false,0,true);
            this.boost_3.addEventListener(MouseEvent.MOUSE_OVER,this.boost3Over,false,0,true);
         }
         var spellStat:* = new SPELLStat();
         this.spell1Name = spellStat.getPlayerHeroSpellName(this.mGF,1);
         this.spell1Level = spellStat.getPlayerHeroSpellLevel(this.mGF,1);
         this.spell2Name = spellStat.getPlayerHeroSpellName(this.mGF,2);
         this.spell2Level = spellStat.getPlayerHeroSpellLevel(this.mGF,2);
         this.spell3Name = spellStat.getPlayerHeroSpellName(this.mGF,3);
         this.spell3Level = spellStat.getPlayerHeroSpellLevel(this.mGF,3);
         this.spell4Name = spellStat.getPlayerHeroSpellName(this.mGF,4);
         this.spell4Level = spellStat.getPlayerHeroSpellLevel(this.mGF,4);
         this.spell5Name = spellStat.getPlayerHeroSpellName(this.mGF,5);
         this.spell5Level = spellStat.getPlayerHeroSpellLevel(this.mGF,5);
         this.spell6Name = spellStat.getPlayerHeroSpellName(this.mGF,6);
         this.spell6Level = spellStat.getPlayerHeroSpellLevel(this.mGF,6);
         this.spell7Name = spellStat.getPlayerHeroSpellName(this.mGF,7);
         this.spell7Level = spellStat.getPlayerHeroSpellLevel(this.mGF,7);
         this.spell_1.buttonMode = false;
         this.spell_2.buttonMode = false;
         this.spell_3.buttonMode = false;
         this.spell_4.buttonMode = false;
         this.spell_5.buttonMode = false;
         this.spell_6.buttonMode = false;
         this.spell_7.buttonMode = false;
         this.spell_1.gotoAndStop(1);
         this.spell_2.gotoAndStop(1);
         this.spell_3.gotoAndStop(1);
         this.spell_4.gotoAndStop(1);
         this.spell_5.gotoAndStop(1);
         this.spell_6.gotoAndStop(1);
         this.spell_7.gotoAndStop(1);
         this.spell_1.level.gotoAndStop(1);
         this.spell_2.level.gotoAndStop(1);
         this.spell_3.level.gotoAndStop(1);
         this.spell_4.level.gotoAndStop(1);
         this.spell_5.level.gotoAndStop(1);
         this.spell_6.level.gotoAndStop(1);
         this.spell_7.level.gotoAndStop(1);
         if(this.spell1Level <= 3)
         {
            this.spell_1.buttonMode = true;
            this.spell_1.gotoAndStop(this.spell1Name);
            this.spell_1.level.gotoAndStop(this.spell1Level + 1);
            this.spell_1.addEventListener(MouseEvent.CLICK,this.spell1Click,false,0,true);
            this.spell_1.addEventListener(MouseEvent.MOUSE_OVER,this.spell1Over,false,0,true);
         }
         if(this.spell2Level <= 3 && this.spell1Level > 0)
         {
            this.spell_2.buttonMode = true;
            this.spell_2.gotoAndStop(this.spell2Name);
            this.spell_2.level.gotoAndStop(this.spell2Level + 1);
            this.spell_2.addEventListener(MouseEvent.CLICK,this.spell2Click,false,0,true);
            this.spell_2.addEventListener(MouseEvent.MOUSE_OVER,this.spell2Over,false,0,true);
         }
         if(this.spell3Level <= 3 && this.spell2Level > 0)
         {
            this.spell_3.buttonMode = true;
            this.spell_3.gotoAndStop(this.spell3Name);
            this.spell_3.level.gotoAndStop(this.spell3Level + 1);
            this.spell_3.addEventListener(MouseEvent.CLICK,this.spell3Click,false,0,true);
            this.spell_3.addEventListener(MouseEvent.MOUSE_OVER,this.spell3Over,false,0,true);
         }
         if(this.spell4Level <= 3 && this.spell3Level > 0)
         {
            this.spell_4.buttonMode = true;
            this.spell_4.gotoAndStop(this.spell4Name);
            this.spell_4.level.gotoAndStop(this.spell4Level + 1);
            this.spell_4.addEventListener(MouseEvent.CLICK,this.spell4Click,false,0,true);
            this.spell_4.addEventListener(MouseEvent.MOUSE_OVER,this.spell4Over,false,0,true);
         }
         if(this.spell5Level <= 3 && this.spell4Level > 0)
         {
            this.spell_5.buttonMode = true;
            this.spell_5.gotoAndStop(this.spell5Name);
            this.spell_5.level.gotoAndStop(this.spell5Level + 1);
            this.spell_5.addEventListener(MouseEvent.CLICK,this.spell5Click,false,0,true);
            this.spell_5.addEventListener(MouseEvent.MOUSE_OVER,this.spell5Over,false,0,true);
         }
         if(this.spell6Level <= 3 && this.spell5Level > 0)
         {
            this.spell_6.buttonMode = true;
            this.spell_6.gotoAndStop(this.spell6Name);
            this.spell_6.level.gotoAndStop(this.spell6Level + 1);
            this.spell_6.addEventListener(MouseEvent.CLICK,this.spell6Click,false,0,true);
            this.spell_6.addEventListener(MouseEvent.MOUSE_OVER,this.spell6Over,false,0,true);
         }
         if(this.spell7Level <= 3 && this.spell6Level > 0)
         {
            this.spell_7.buttonMode = true;
            this.spell_7.gotoAndStop(this.spell7Name);
            this.spell_7.level.gotoAndStop(this.spell7Level + 1);
            this.spell_7.addEventListener(MouseEvent.CLICK,this.spell7Click,false,0,true);
            this.spell_7.addEventListener(MouseEvent.MOUSE_OVER,this.spell7Over,false,0,true);
         }
         this.money.htmlText = String(this.mGF.datMgr.stat_money + " gold");
      }
      
      private function executeUpgrade(NAME:String = "", LEVEL:int = 0) : *
      {
         var boostStat:* = new BOOSTStat();
         var spellStat:* = new SPELLStat();
         var cost:int = 0;
         var alert:String = "Not enough money !";
         if(boostStat.isValidName(NAME))
         {
            boostStat.setByName(NAME);
         }
         if(NAME == "attack" && this.mGF.datMgr.hero_boost_attack < 3)
         {
            boostStat.setByName(NAME);
            boostStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_boost_attack + 1,0),3));
            cost = int(boostStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_boost_attack = Math.min(this.mGF.datMgr.hero_boost_attack + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "defense" && this.mGF.datMgr.hero_boost_defense < 3)
         {
            boostStat.setByName(NAME);
            boostStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_boost_defense + 1,0),3));
            cost = int(boostStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_boost_defense = Math.min(this.mGF.datMgr.hero_boost_defense + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "mana" && this.mGF.datMgr.hero_boost_mana < 3)
         {
            boostStat.setByName(NAME);
            boostStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_boost_mana + 1,0),3));
            cost = int(boostStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_boost_mana = Math.min(this.mGF.datMgr.hero_boost_mana + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         if(NAME == "arrow" && this.mGF.datMgr.hero_spell_arrow < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_arrow + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_arrow = Math.min(this.mGF.datMgr.hero_spell_arrow + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "fire" && this.mGF.datMgr.hero_spell_fire < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_fire + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_fire = Math.min(this.mGF.datMgr.hero_spell_fire + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "ice" && this.mGF.datMgr.hero_spell_ice < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_ice + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_ice = Math.min(this.mGF.datMgr.hero_spell_ice + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "tornado" && this.mGF.datMgr.hero_spell_tornado < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_tornado + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_tornado = Math.min(this.mGF.datMgr.hero_spell_tornado + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "thunder" && this.mGF.datMgr.hero_spell_thunder < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_thunder + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_thunder = Math.min(this.mGF.datMgr.hero_spell_thunder + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "meteor" && this.mGF.datMgr.hero_spell_meteor < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_meteor + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_meteor = Math.min(this.mGF.datMgr.hero_spell_meteor + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "poison" && this.mGF.datMgr.hero_spell_poison < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_poison + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_poison = Math.min(this.mGF.datMgr.hero_spell_poison + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "heal" && this.mGF.datMgr.hero_spell_heal < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_heal + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_heal = Math.min(this.mGF.datMgr.hero_spell_heal + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "regen" && this.mGF.datMgr.hero_spell_regen < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_regen + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_regen = Math.min(this.mGF.datMgr.hero_spell_regen + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "resurrect" && this.mGF.datMgr.hero_spell_resurrect < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_resurrect + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_resurrect = Math.min(this.mGF.datMgr.hero_spell_resurrect + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "haste" && this.mGF.datMgr.hero_spell_haste < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_haste + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_haste = Math.min(this.mGF.datMgr.hero_spell_haste + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "slow" && this.mGF.datMgr.hero_spell_slow < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_slow + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_slow = Math.min(this.mGF.datMgr.hero_spell_slow + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "stop" && this.mGF.datMgr.hero_spell_stop < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_stop + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_stop = Math.min(this.mGF.datMgr.hero_spell_stop + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "rage" && this.mGF.datMgr.hero_spell_rage < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_rage + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_rage = Math.min(this.mGF.datMgr.hero_spell_rage + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "shield" && this.mGF.datMgr.hero_spell_shield < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_shield + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_shield = Math.min(this.mGF.datMgr.hero_spell_shield + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "mini" && this.mGF.datMgr.hero_spell_mini < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_mini + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_mini = Math.min(this.mGF.datMgr.hero_spell_mini + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "giant" && this.mGF.datMgr.hero_spell_giant < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_giant + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_giant = Math.min(this.mGF.datMgr.hero_spell_giant + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         else if(NAME == "super" && this.mGF.datMgr.hero_spell_super < 3)
         {
            spellStat.setByName(NAME);
            spellStat.setLevel(Math.min(Math.max(this.mGF.datMgr.hero_spell_super + 1,0),3));
            cost = int(spellStat.costUpgrade);
            if(cost <= this.mGF.datMgr.stat_money)
            {
               this.mGF.datMgr.hero_spell_super = Math.min(this.mGF.datMgr.hero_spell_super + 1,3);
               this.mGF.datMgr.stat_money = Math.max(this.mGF.datMgr.stat_money - cost,0);
            }
            else
            {
               this.mGF.utilMgr.messagePop(alert,30);
            }
         }
         this.updateUpgrade();
      }
      
      private function executeShowInfo(CLIP:*, NAME:String = "", LEVEL:int = 0) : *
      {
         var boostStat:* = new BOOSTStat();
         var spellStat:* = new SPELLStat();
         var valName:String = "";
         var valCost:String = "";
         var valInfo:String = "";
         if(NAME == "attack")
         {
            if(this.mGF.datMgr.hero_boost_attack == 0)
            {
               boostStat.setByName("attack");
            }
            else if(this.mGF.datMgr.hero_boost_attack == 1)
            {
               boostStat.setByName("attackLv2");
            }
            else if(this.mGF.datMgr.hero_boost_attack >= 2)
            {
               boostStat.setByName("attackLv3");
            }
            valName = boostStat.name;
            valCost = boostStat.costUpgrade + " gold";
            valInfo = boostStat.desc;
            valInfo = String(boostStat.desc + "\n" + "Attack Boost : " + boostStat.addValue);
            if(this.mGF.datMgr.hero_boost_attack >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "defense")
         {
            if(this.mGF.datMgr.hero_boost_defense == 0)
            {
               boostStat.setByName("defense");
            }
            else if(this.mGF.datMgr.hero_boost_defense == 1)
            {
               boostStat.setByName("defenseLv2");
            }
            else if(this.mGF.datMgr.hero_boost_defense >= 2)
            {
               boostStat.setByName("defenseLv3");
            }
            valName = boostStat.name;
            valCost = boostStat.costUpgrade + " gold";
            valInfo = String(boostStat.desc + "\n" + "Defense Boost : " + boostStat.addValue);
            if(this.mGF.datMgr.hero_boost_defense >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "mana")
         {
            if(this.mGF.datMgr.hero_boost_mana == 0)
            {
               boostStat.setByName("mana");
            }
            else if(this.mGF.datMgr.hero_boost_mana == 1)
            {
               boostStat.setByName("manaLv2");
            }
            else if(this.mGF.datMgr.hero_boost_mana >= 2)
            {
               boostStat.setByName("manaLv3");
            }
            valName = boostStat.name;
            valCost = boostStat.costUpgrade + " gold";
            valInfo = String(boostStat.desc + "\n" + "Mana Boost : " + boostStat.addValue);
            if(this.mGF.datMgr.hero_boost_mana >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         if(NAME == "arrow")
         {
            if(this.mGF.datMgr.hero_spell_arrow == 0)
            {
               spellStat.setByName("arrow");
            }
            else if(this.mGF.datMgr.hero_spell_arrow == 1)
            {
               spellStat.setByName("arrowLv2");
            }
            else if(this.mGF.datMgr.hero_spell_arrow >= 2)
            {
               spellStat.setByName("arrowLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Power : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_arrow >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "fire")
         {
            if(this.mGF.datMgr.hero_spell_fire == 0)
            {
               spellStat.setByName("fire");
            }
            else if(this.mGF.datMgr.hero_spell_fire == 1)
            {
               spellStat.setByName("fireLv2");
            }
            else if(this.mGF.datMgr.hero_spell_fire >= 2)
            {
               spellStat.setByName("fireLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Power : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_fire >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "ice")
         {
            if(this.mGF.datMgr.hero_spell_ice == 0)
            {
               spellStat.setByName("ice");
            }
            else if(this.mGF.datMgr.hero_spell_ice == 1)
            {
               spellStat.setByName("iceLv2");
            }
            else if(this.mGF.datMgr.hero_spell_ice >= 2)
            {
               spellStat.setByName("iceLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Power : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_ice >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "tornado")
         {
            if(this.mGF.datMgr.hero_spell_tornado == 0)
            {
               spellStat.setByName("tornado");
            }
            else if(this.mGF.datMgr.hero_spell_tornado == 1)
            {
               spellStat.setByName("tornadoLv2");
            }
            else if(this.mGF.datMgr.hero_spell_tornado >= 2)
            {
               spellStat.setByName("tornadoLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Power : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_tornado >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "thunder")
         {
            if(this.mGF.datMgr.hero_spell_thunder == 0)
            {
               spellStat.setByName("thunder");
            }
            else if(this.mGF.datMgr.hero_spell_thunder == 1)
            {
               spellStat.setByName("thunderLv2");
            }
            else if(this.mGF.datMgr.hero_spell_thunder >= 2)
            {
               spellStat.setByName("thunderLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Power : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_thunder >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "meteor")
         {
            if(this.mGF.datMgr.hero_spell_meteor == 0)
            {
               spellStat.setByName("meteor");
            }
            else if(this.mGF.datMgr.hero_spell_meteor == 1)
            {
               spellStat.setByName("meteorLv2");
            }
            else if(this.mGF.datMgr.hero_spell_meteor >= 2)
            {
               spellStat.setByName("meteorLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Power : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_meteor >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "poison")
         {
            if(this.mGF.datMgr.hero_spell_poison == 0)
            {
               spellStat.setByName("poison");
            }
            else if(this.mGF.datMgr.hero_spell_poison == 1)
            {
               spellStat.setByName("poisonLv2");
            }
            else if(this.mGF.datMgr.hero_spell_poison >= 2)
            {
               spellStat.setByName("poisonLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Power : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_poison >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "heal")
         {
            if(this.mGF.datMgr.hero_spell_heal == 0)
            {
               spellStat.setByName("heal");
            }
            else if(this.mGF.datMgr.hero_spell_heal == 1)
            {
               spellStat.setByName("healLv2");
            }
            else if(this.mGF.datMgr.hero_spell_heal >= 2)
            {
               spellStat.setByName("healLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Heal : " + spellStat.power);
            if(this.mGF.datMgr.hero_spell_heal >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "regen")
         {
            if(this.mGF.datMgr.hero_spell_regen == 0)
            {
               spellStat.setByName("regen");
            }
            else if(this.mGF.datMgr.hero_spell_regen == 1)
            {
               spellStat.setByName("regenLv2");
            }
            else if(this.mGF.datMgr.hero_spell_regen >= 2)
            {
               spellStat.setByName("regenLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_regen >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "resurrect")
         {
            if(this.mGF.datMgr.hero_spell_resurrect == 0)
            {
               spellStat.setByName("resurrect");
            }
            else if(this.mGF.datMgr.hero_spell_resurrect == 1)
            {
               spellStat.setByName("resurrectLv2");
            }
            else if(this.mGF.datMgr.hero_spell_resurrect >= 2)
            {
               spellStat.setByName("resurrectLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana);
            if(this.mGF.datMgr.hero_spell_resurrect >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "haste")
         {
            if(this.mGF.datMgr.hero_spell_haste == 0)
            {
               spellStat.setByName("haste");
            }
            else if(this.mGF.datMgr.hero_spell_haste == 1)
            {
               spellStat.setByName("hasteLv2");
            }
            else if(this.mGF.datMgr.hero_spell_haste >= 2)
            {
               spellStat.setByName("hasteLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_haste >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "slow")
         {
            if(this.mGF.datMgr.hero_spell_slow == 0)
            {
               spellStat.setByName("slow");
            }
            else if(this.mGF.datMgr.hero_spell_slow == 1)
            {
               spellStat.setByName("slowLv2");
            }
            else if(this.mGF.datMgr.hero_spell_slow >= 2)
            {
               spellStat.setByName("slowLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_slow >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "stop")
         {
            if(this.mGF.datMgr.hero_spell_stop == 0)
            {
               spellStat.setByName("stop");
            }
            else if(this.mGF.datMgr.hero_spell_stop == 1)
            {
               spellStat.setByName("stopLv2");
            }
            else if(this.mGF.datMgr.hero_spell_stop >= 2)
            {
               spellStat.setByName("stopLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_stop >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "rage")
         {
            if(this.mGF.datMgr.hero_spell_rage == 0)
            {
               spellStat.setByName("rage");
            }
            else if(this.mGF.datMgr.hero_spell_rage == 1)
            {
               spellStat.setByName("rageLv2");
            }
            else if(this.mGF.datMgr.hero_spell_rage >= 2)
            {
               spellStat.setByName("rageLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_rage >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "shield")
         {
            if(this.mGF.datMgr.hero_spell_shield == 0)
            {
               spellStat.setByName("shield");
            }
            else if(this.mGF.datMgr.hero_spell_shield == 1)
            {
               spellStat.setByName("shieldLv2");
            }
            else if(this.mGF.datMgr.hero_spell_shield >= 2)
            {
               spellStat.setByName("shieldLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_shield >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "mini")
         {
            if(this.mGF.datMgr.hero_spell_mini == 0)
            {
               spellStat.setByName("mini");
            }
            else if(this.mGF.datMgr.hero_spell_mini == 1)
            {
               spellStat.setByName("miniLv2");
            }
            else if(this.mGF.datMgr.hero_spell_mini >= 2)
            {
               spellStat.setByName("miniLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_mini >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "giant")
         {
            if(this.mGF.datMgr.hero_spell_giant == 0)
            {
               spellStat.setByName("giant");
            }
            else if(this.mGF.datMgr.hero_spell_giant == 1)
            {
               spellStat.setByName("giantLv2");
            }
            else if(this.mGF.datMgr.hero_spell_giant >= 2)
            {
               spellStat.setByName("giantLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_giant >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         else if(NAME == "super")
         {
            if(this.mGF.datMgr.hero_spell_super == 0)
            {
               spellStat.setByName("super");
            }
            else if(this.mGF.datMgr.hero_spell_super == 1)
            {
               spellStat.setByName("superLv2");
            }
            else if(this.mGF.datMgr.hero_spell_super >= 2)
            {
               spellStat.setByName("superLv3");
            }
            valName = spellStat.name;
            valCost = spellStat.costUpgrade + " gold";
            valInfo = String(spellStat.desc + "\n" + "Mana Cost : " + spellStat.costMana + "\n" + "Duration : " + Math.round(spellStat.timerActive / 24) + " secs");
            if(this.mGF.datMgr.hero_spell_super >= 3)
            {
               valCost = "-";
               valInfo += String("\nUPGRADE MAX");
            }
         }
         this.mGF.utilMgr.infoTip(CLIP,10,valName,valCost,valInfo);
      }
      
      private function getSpellLevel(ID:String = "") : int
      {
         if(ID == "arrow")
         {
            return this.mGF.datMgr.hero_spell_arrow;
         }
         if(ID == "fire")
         {
            return this.mGF.datMgr.hero_spell_fire;
         }
         if(ID == "ice")
         {
            return this.mGF.datMgr.hero_spell_ice;
         }
         if(ID == "tornado")
         {
            return this.mGF.datMgr.hero_spell_tornado;
         }
         if(ID == "thunder")
         {
            return this.mGF.datMgr.hero_spell_thunder;
         }
         if(ID == "meteor")
         {
            return this.mGF.datMgr.hero_spell_meteor;
         }
         if(ID == "poison")
         {
            return this.mGF.datMgr.hero_spell_poison;
         }
         if(ID == "heal")
         {
            return this.mGF.datMgr.hero_spell_heal;
         }
         if(ID == "regen")
         {
            return this.mGF.datMgr.hero_spell_regen;
         }
         if(ID == "resurrect")
         {
            return this.mGF.datMgr.hero_spell_resurrect;
         }
         if(ID == "haste")
         {
            return this.mGF.datMgr.hero_spell_haste;
         }
         if(ID == "slow")
         {
            return this.mGF.datMgr.hero_spell_slow;
         }
         if(ID == "stop")
         {
            return this.mGF.datMgr.hero_spell_stop;
         }
         if(ID == "rage")
         {
            return this.mGF.datMgr.hero_spell_rage;
         }
         if(ID == "shield")
         {
            return this.mGF.datMgr.hero_spell_shield;
         }
         if(ID == "mini")
         {
            return this.mGF.datMgr.hero_spell_mini;
         }
         if(ID == "giant")
         {
            return this.mGF.datMgr.hero_spell_giant;
         }
         if(ID == "super")
         {
            return this.mGF.datMgr.hero_spell_super;
         }
         return 0;
      }
      
      private function setSpellLevel(ID:String = "", Level:int = 0) : *
      {
         if(ID == "arrow")
         {
            this.mGF.datMgr.hero_spell_arrow = Level;
         }
         else if(ID == "fire")
         {
            this.mGF.datMgr.hero_spell_fire = Level;
         }
         else if(ID == "ice")
         {
            this.mGF.datMgr.hero_spell_ice = Level;
         }
         else if(ID == "tornado")
         {
            this.mGF.datMgr.hero_spell_tornado = Level;
         }
         else if(ID == "thunder")
         {
            this.mGF.datMgr.hero_spell_thunder = Level;
         }
         else if(ID == "meteor")
         {
            this.mGF.datMgr.hero_spell_meteor = Level;
         }
         else if(ID == "poison")
         {
            this.mGF.datMgr.hero_spell_poison = Level;
         }
         else if(ID == "heal")
         {
            this.mGF.datMgr.hero_spell_heal = Level;
         }
         else if(ID == "regen")
         {
            this.mGF.datMgr.hero_spell_regen = Level;
         }
         else if(ID == "resurrect")
         {
            this.mGF.datMgr.hero_spell_resurrect = Level;
         }
         else if(ID == "haste")
         {
            this.mGF.datMgr.hero_spell_haste = Level;
         }
         else if(ID == "slow")
         {
            this.mGF.datMgr.hero_spell_slow = Level;
         }
         else if(ID == "stop")
         {
            this.mGF.datMgr.hero_spell_stop = Level;
         }
         else if(ID == "rage")
         {
            this.mGF.datMgr.hero_spell_rage = Level;
         }
         else if(ID == "shield")
         {
            this.mGF.datMgr.hero_spell_shield = Level;
         }
         else if(ID == "mini")
         {
            this.mGF.datMgr.hero_spell_mini = Level;
         }
         else if(ID == "giant")
         {
            this.mGF.datMgr.hero_spell_giant = Level;
         }
         else if(ID == "super")
         {
            this.mGF.datMgr.hero_spell_super = Level;
         }
      }
      
      private function setClipSpell(CLIPSLOT:*, ID:String = "") : *
      {
         if(CLIPSLOT)
         {
            CLIPSLOT.gotoAndStop(1);
            CLIPSLOT.level.gotoAndStop(1);
            CLIPSLOT.buttonMode = false;
            if(ID == "arrow")
            {
               CLIPSLOT.gotoAndStop(2);
            }
            else if(ID == "fire")
            {
               CLIPSLOT.gotoAndStop(3);
            }
            else if(ID == "ice")
            {
               CLIPSLOT.gotoAndStop(4);
            }
            else if(ID == "tornado")
            {
               CLIPSLOT.gotoAndStop(5);
            }
            else if(ID == "thunder")
            {
               CLIPSLOT.gotoAndStop(6);
            }
            else if(ID == "meteor")
            {
               CLIPSLOT.gotoAndStop(7);
            }
            else if(ID == "poison")
            {
               CLIPSLOT.gotoAndStop(8);
            }
            else if(ID == "heal")
            {
               CLIPSLOT.gotoAndStop(9);
            }
            else if(ID == "regen")
            {
               CLIPSLOT.gotoAndStop(10);
            }
            else if(ID == "resurrect")
            {
               CLIPSLOT.gotoAndStop(11);
            }
            else if(ID == "haste")
            {
               CLIPSLOT.gotoAndStop(12);
            }
            else if(ID == "slow")
            {
               CLIPSLOT.gotoAndStop(13);
            }
            else if(ID == "stop")
            {
               CLIPSLOT.gotoAndStop(14);
            }
            else if(ID == "rage")
            {
               CLIPSLOT.gotoAndStop(15);
            }
            else if(ID == "shield")
            {
               CLIPSLOT.gotoAndStop(16);
            }
            else if(ID == "mini")
            {
               CLIPSLOT.gotoAndStop(17);
            }
            else if(ID == "giant")
            {
               CLIPSLOT.gotoAndStop(18);
            }
            else if(ID == "super")
            {
               CLIPSLOT.gotoAndStop(19);
            }
            CLIPSLOT.level.gotoAndStop(1);
         }
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
      
      private function createObjHero(TYPE:int = 1, SCALE:Number = 1) : Object
      {
         var obj:* = null;
         if(TYPE == 1)
         {
            obj = new HERO1_MONKEY();
         }
         else if(TYPE == 2)
         {
            obj = new HERO2_SNOWBEAR();
         }
         else if(TYPE == 3)
         {
            obj = new HERO3_TURTLE();
         }
         else if(TYPE == 4)
         {
            obj = new HERO4_CLOWN();
         }
         else if(TYPE == 5)
         {
            obj = new HERO5_SNAKE();
         }
         if(obj)
         {
            obj.scaleX = obj.scaleY = SCALE;
            return obj;
         }
         return null;
      }
   }
}

