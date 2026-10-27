package Game.System.Battle
{
   import Game.System.StatDef.*;
   import flash.events.MouseEvent;
   
   public class BattleCommand
   {
      
      private var mGF:*;
      
      private var bSys:*;
      
      private var cursorClip:*;
      
      private var switchTab:int = 0;
      
      private var spellSlot:int = 0;
      
      public function BattleCommand(_mGF:*, _bSys:*)
      {
         super();
         this.mGF = _mGF;
         this.bSys = _bSys;
         this.init();
         this.speedBoost(false);
      }
      
      public function destroy() : *
      {
         this.speedBoost(false);
         this.removeCursorSpell();
         this.bSys.ui.speedboost.removeEventListener(MouseEvent.CLICK,this.speedBoostClick);
         this.bSys.ui.switch_cmd.removeEventListener(MouseEvent.CLICK,this.switchCmdClick);
         this.bSys.ui.unit_cmd.unit_1.removeEventListener(MouseEvent.CLICK,this.unit1CmdClick);
         this.bSys.ui.unit_cmd.unit_2.removeEventListener(MouseEvent.CLICK,this.unit2CmdClick);
         this.bSys.ui.unit_cmd.unit_3.removeEventListener(MouseEvent.CLICK,this.unit3CmdClick);
         this.bSys.ui.unit_cmd.unit_4.removeEventListener(MouseEvent.CLICK,this.unit4CmdClick);
         this.bSys.ui.spell_cmd.spell_1.removeEventListener(MouseEvent.CLICK,this.spell1CmdClick);
         this.bSys.ui.spell_cmd.spell_1.removeEventListener(MouseEvent.MOUSE_OVER,this.spell1CmdOver);
         this.bSys.ui.spell_cmd.spell_2.removeEventListener(MouseEvent.CLICK,this.spell2CmdClick);
         this.bSys.ui.spell_cmd.spell_2.removeEventListener(MouseEvent.MOUSE_OVER,this.spell2CmdOver);
         this.bSys.ui.spell_cmd.spell_3.removeEventListener(MouseEvent.CLICK,this.spell3CmdClick);
         this.bSys.ui.spell_cmd.spell_3.removeEventListener(MouseEvent.MOUSE_OVER,this.spell3CmdOver);
         this.bSys.ui.spell_cmd.spell_4.removeEventListener(MouseEvent.CLICK,this.spell4CmdClick);
         this.bSys.ui.spell_cmd.spell_4.removeEventListener(MouseEvent.MOUSE_OVER,this.spell4CmdOver);
         this.bSys.ui.spell_cmd.spell_5.removeEventListener(MouseEvent.CLICK,this.spell5CmdClick);
         this.bSys.ui.spell_cmd.spell_5.removeEventListener(MouseEvent.MOUSE_OVER,this.spell5CmdOver);
         this.bSys.ui.spell_cmd.spell_6.removeEventListener(MouseEvent.CLICK,this.spell6CmdClick);
         this.bSys.ui.spell_cmd.spell_6.removeEventListener(MouseEvent.MOUSE_OVER,this.spell6CmdOver);
         this.bSys.ui.spell_cmd.spell_7.removeEventListener(MouseEvent.CLICK,this.spell7CmdClick);
         this.bSys.ui.spell_cmd.spell_7.removeEventListener(MouseEvent.MOUSE_OVER,this.spell7CmdOver);
      }
      
      public function init() : *
      {
         this.bSys.ui.unit_cmd.visible = true;
         this.bSys.ui.spell_cmd.visible = false;
         this.bSys.ui.unit_cmd.unit_1.gotoAndStop(this.mGF.datMgr.char1_skin + 1);
         this.bSys.ui.unit_cmd.unit_2.gotoAndStop(this.mGF.datMgr.char2_skin + 1);
         this.bSys.ui.unit_cmd.unit_3.gotoAndStop(this.mGF.datMgr.char3_skin + 1);
         this.bSys.ui.unit_cmd.unit_4.gotoAndStop(this.mGF.datMgr.char4_skin + 1);
         this.bSys.ui.spell_cmd.spell_1.gotoAndStop(1);
         this.bSys.ui.spell_cmd.spell_2.gotoAndStop(1);
         this.bSys.ui.spell_cmd.spell_3.gotoAndStop(1);
         this.bSys.ui.spell_cmd.spell_4.gotoAndStop(1);
         this.bSys.ui.spell_cmd.spell_5.gotoAndStop(1);
         this.bSys.ui.spell_cmd.spell_6.gotoAndStop(1);
         this.bSys.ui.spell_cmd.spell_7.gotoAndStop(1);
         this.bSys.ui.speedboost.buttonMode = true;
         this.bSys.ui.speedboost.addEventListener(MouseEvent.CLICK,this.speedBoostClick,false,0,true);
         this.bSys.ui.switch_cmd.addEventListener(MouseEvent.CLICK,this.switchCmdClick,false,0,true);
         this.bSys.ui.unit_cmd.unit_1.addEventListener(MouseEvent.CLICK,this.unit1CmdClick,false,0,true);
         this.bSys.ui.unit_cmd.unit_2.addEventListener(MouseEvent.CLICK,this.unit2CmdClick,false,0,true);
         this.bSys.ui.unit_cmd.unit_3.addEventListener(MouseEvent.CLICK,this.unit3CmdClick,false,0,true);
         this.bSys.ui.unit_cmd.unit_4.addEventListener(MouseEvent.CLICK,this.unit4CmdClick,false,0,true);
         var spellStat:* = new SPELLStat();
         var spell1Lock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,1));
         var spell2Lock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,2));
         var spell3Lock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,3));
         var spell4Lock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,4));
         var spell5Lock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,5));
         var spell6Lock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,6));
         var spell7Lock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,7));
         if(spell1Lock > 0)
         {
            this.bSys.ui.spell_cmd.spell_1.gotoAndStop(spellStat.getPlayerHeroSpellName(this.mGF,1));
            this.bSys.ui.spell_cmd.spell_1.addEventListener(MouseEvent.CLICK,this.spell1CmdClick,false,0,true);
            this.bSys.ui.spell_cmd.spell_1.addEventListener(MouseEvent.MOUSE_OVER,this.spell1CmdOver,false,0,true);
         }
         if(spell2Lock > 0)
         {
            this.bSys.ui.spell_cmd.spell_2.gotoAndStop(spellStat.getPlayerHeroSpellName(this.mGF,2));
            this.bSys.ui.spell_cmd.spell_2.addEventListener(MouseEvent.CLICK,this.spell2CmdClick,false,0,true);
            this.bSys.ui.spell_cmd.spell_2.addEventListener(MouseEvent.MOUSE_OVER,this.spell2CmdOver,false,0,true);
         }
         if(spell3Lock > 0)
         {
            this.bSys.ui.spell_cmd.spell_3.gotoAndStop(spellStat.getPlayerHeroSpellName(this.mGF,3));
            this.bSys.ui.spell_cmd.spell_3.addEventListener(MouseEvent.CLICK,this.spell3CmdClick,false,0,true);
            this.bSys.ui.spell_cmd.spell_3.addEventListener(MouseEvent.MOUSE_OVER,this.spell3CmdOver,false,0,true);
         }
         if(spell4Lock > 0)
         {
            this.bSys.ui.spell_cmd.spell_4.gotoAndStop(spellStat.getPlayerHeroSpellName(this.mGF,4));
            this.bSys.ui.spell_cmd.spell_4.addEventListener(MouseEvent.CLICK,this.spell4CmdClick,false,0,true);
            this.bSys.ui.spell_cmd.spell_4.addEventListener(MouseEvent.MOUSE_OVER,this.spell4CmdOver,false,0,true);
         }
         if(spell5Lock > 0)
         {
            this.bSys.ui.spell_cmd.spell_5.gotoAndStop(spellStat.getPlayerHeroSpellName(this.mGF,5));
            this.bSys.ui.spell_cmd.spell_5.addEventListener(MouseEvent.CLICK,this.spell5CmdClick,false,0,true);
            this.bSys.ui.spell_cmd.spell_5.addEventListener(MouseEvent.MOUSE_OVER,this.spell5CmdOver,false,0,true);
         }
         if(spell6Lock > 0)
         {
            this.bSys.ui.spell_cmd.spell_6.gotoAndStop(spellStat.getPlayerHeroSpellName(this.mGF,6));
            this.bSys.ui.spell_cmd.spell_6.addEventListener(MouseEvent.CLICK,this.spell6CmdClick,false,0,true);
            this.bSys.ui.spell_cmd.spell_6.addEventListener(MouseEvent.MOUSE_OVER,this.spell6CmdOver,false,0,true);
         }
         if(spell7Lock > 0)
         {
            this.bSys.ui.spell_cmd.spell_7.gotoAndStop(spellStat.getPlayerHeroSpellName(this.mGF,7));
            this.bSys.ui.spell_cmd.spell_7.addEventListener(MouseEvent.CLICK,this.spell7CmdClick,false,0,true);
            this.bSys.ui.spell_cmd.spell_7.addEventListener(MouseEvent.MOUSE_OVER,this.spell7CmdOver,false,0,true);
         }
         this.bSys.ui.unit_cmd.unit_1.manacost.htmlText = String(this.bSys.charMgr.getRequirmentManaUnit(1));
         this.bSys.ui.unit_cmd.unit_2.manacost.htmlText = String(this.bSys.charMgr.getRequirmentManaUnit(2));
         this.bSys.ui.unit_cmd.unit_3.manacost.htmlText = String(this.bSys.charMgr.getRequirmentManaUnit(3));
         this.bSys.ui.unit_cmd.unit_4.manacost.htmlText = String(this.bSys.charMgr.getRequirmentManaUnit(4));
         this.bSys.ui.spell_cmd.spell_1.manacost.htmlText = String(this.bSys.spellMgr.getRequirmentManaSpell(1));
         this.bSys.ui.spell_cmd.spell_2.manacost.htmlText = String(this.bSys.spellMgr.getRequirmentManaSpell(2));
         this.bSys.ui.spell_cmd.spell_3.manacost.htmlText = String(this.bSys.spellMgr.getRequirmentManaSpell(3));
         this.bSys.ui.spell_cmd.spell_4.manacost.htmlText = String(this.bSys.spellMgr.getRequirmentManaSpell(4));
         this.bSys.ui.spell_cmd.spell_5.manacost.htmlText = String(this.bSys.spellMgr.getRequirmentManaSpell(5));
         this.bSys.ui.spell_cmd.spell_6.manacost.htmlText = String(this.bSys.spellMgr.getRequirmentManaSpell(6));
         this.bSys.ui.spell_cmd.spell_7.manacost.htmlText = String(this.bSys.spellMgr.getRequirmentManaSpell(7));
         this.hideCommand();
      }
      
      public function showCommand() : *
      {
         this.bSys.ui.switch_cmd.visible = true;
         this.bSys.ui.unit_cmd.visible = true;
         this.bSys.ui.spell_cmd.visible = false;
         this.bSys.ui.btn_pause.visible = true;
         this.bSys.ui.total.visible = true;
         this.bSys.ui.speedboost.visible = true;
      }
      
      public function hideCommand() : *
      {
         this.bSys.ui.switch_cmd.visible = false;
         this.bSys.ui.unit_cmd.visible = false;
         this.bSys.ui.spell_cmd.visible = false;
         this.bSys.ui.btn_pause.visible = false;
         this.bSys.ui.total.visible = false;
         this.bSys.ui.speedboost.visible = false;
      }
      
      public function showCursorSpell() : *
      {
         if(this.cursorClip == null)
         {
            this.cursorClip = new cursor_spell_mc();
            this.mGF.contMENU2.addChild(this.cursorClip);
            this.bSys.ui.areaclick.addEventListener(MouseEvent.CLICK,this.targetCursorClick,false,0,true);
            this.cursorClip.addEventListener(MouseEvent.CLICK,this.targetCursorClick,false,0,true);
         }
      }
      
      public function removeCursorSpell() : *
      {
         if(this.cursorClip)
         {
            this.bSys.ui.areaclick.removeEventListener(MouseEvent.CLICK,this.targetCursorClick);
            this.cursorClip.removeEventListener(MouseEvent.CLICK,this.targetCursorClick);
            this.mGF.contMENU2.removeChild(this.cursorClip);
            this.cursorClip = null;
         }
         this.spellSlot = 0;
      }
      
      public function updateCursorSpell() : *
      {
         if(this.cursorClip)
         {
            this.cursorClip.x = this.mGF.stageRoot.mouseX;
            this.cursorClip.y = this.bSys.bgMgr.getPointY(this.cursorClip.x - this.mGF.contSCROLL.x);
            if(this.bSys.bgMgr.isInsideFog(this.cursorClip.x - this.mGF.contSCROLL.x))
            {
               if(this.cursorClip.currentLabel != "disable")
               {
                  this.cursorClip.gotoAndPlay("disable");
               }
            }
            else if(this.cursorClip.currentLabel != "enable")
            {
               this.cursorClip.gotoAndPlay("enable");
            }
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_ESC)
         {
            this.removeCursorSpell();
         }
      }
      
      private function targetCursorClick(event:MouseEvent) : void
      {
         if(this.cursorClip.currentLabel == "disable")
         {
            return;
         }
         var cost:int = int(this.bSys.spellMgr.createPlayerSpell(this.spellSlot,this.bSys.battleMana,this.cursorClip.x - this.mGF.contSCROLL.x));
         if(cost >= 0)
         {
            this.bSys.setMana(this.bSys.battleMana - cost);
         }
         else
         {
            this.mGF.utilMgr.messagePop("not enough mana",20);
         }
         this.removeCursorSpell();
      }
      
      private function speedBoost(VAL:Boolean = false) : *
      {
         if(VAL)
         {
            this.bSys.ui.speedboost.gotoAndStop(2);
            this.mGF.stageRoot.stage.frameRate = 24 * 3;
            trace("SPEED BOOST = ON");
         }
         else
         {
            this.bSys.ui.speedboost.gotoAndStop(1);
            this.mGF.stageRoot.stage.frameRate = 24;
            trace("SPEED BOOST = OFF");
         }
      }
      
      private function speedBoostToogle() : *
      {
         if(this.bSys.ui.speedboost.currentFrame == 1)
         {
            this.speedBoost(true);
         }
         else
         {
            this.speedBoost(false);
         }
      }
      
      public function update() : *
      {
         var cost:int = 0;
         this.updateCursorSpell();
         if(this.mGF.keyMgr.getKeyPress().KEY_SPACE)
         {
            if(this.cursorClip)
            {
               if(this.cursorClip.currentLabel == "disable")
               {
                  return;
               }
               cost = int(this.bSys.spellMgr.createPlayerSpell(this.spellSlot,this.bSys.battleMana,this.cursorClip.x - this.mGF.contSCROLL.x));
               if(cost >= 0)
               {
                  this.bSys.setMana(this.bSys.battleMana - cost);
               }
               else
               {
                  this.mGF.utilMgr.messagePop("not enough mana",20);
               }
               this.removeCursorSpell();
            }
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_Q)
         {
            this.castUnit(1);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_W)
         {
            this.castUnit(2);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_E)
         {
            this.castUnit(3);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_R)
         {
            this.castUnit(4);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_1)
         {
            this.castSpell(1);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_2)
         {
            this.castSpell(2);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_3)
         {
            this.castSpell(3);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_4)
         {
            this.castSpell(4);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_5)
         {
            this.castSpell(5);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_6)
         {
            this.castSpell(6);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_7)
         {
            this.castSpell(7);
         }
         if(this.mGF.keyMgr.getKeyPress().KEY_A)
         {
            this.switchCommand();
         }
      }
      
      private function castUnit(SLOT:int = 1) : *
      {
         var cost:int = int(this.bSys.charMgr.createPlayerUnit(SLOT,this.bSys.battleMana));
         if(cost >= 0)
         {
            this.bSys.setMana(this.bSys.battleMana - cost);
         }
         else if(cost == -1)
         {
            this.mGF.utilMgr.messagePop("not enough mana",20);
         }
         else
         {
            this.mGF.utilMgr.messagePop("Stop spamming more units!",20);
         }
      }
      
      private function castSpell(SLOT:int = 1) : *
      {
         var spellStat:* = new SPELLStat();
         var spellLock:int = int(spellStat.getPlayerHeroSpellLevel(this.mGF,SLOT));
         if(spellLock > 0)
         {
            this.spellSlot = SLOT;
            this.showCursorSpell();
         }
      }
      
      private function switchCommand() : *
      {
         this.removeCursorSpell();
         if(this.bSys.ui.unit_cmd.visible)
         {
            this.bSys.ui.unit_cmd.visible = false;
            this.bSys.ui.spell_cmd.visible = true;
         }
         else
         {
            this.bSys.ui.unit_cmd.visible = true;
            this.bSys.ui.spell_cmd.visible = false;
         }
      }
      
      private function speedBoostClick(event:MouseEvent) : void
      {
         this.speedBoostToogle();
      }
      
      private function switchCmdClick(event:MouseEvent) : void
      {
         this.switchCommand();
      }
      
      private function unit1CmdClick(event:MouseEvent) : void
      {
         this.castUnit(1);
      }
      
      private function unit2CmdClick(event:MouseEvent) : void
      {
         this.castUnit(2);
      }
      
      private function unit3CmdClick(event:MouseEvent) : void
      {
         this.castUnit(3);
      }
      
      private function unit4CmdClick(event:MouseEvent) : void
      {
         this.castUnit(4);
      }
      
      private function spell1CmdClick(event:MouseEvent) : void
      {
         this.spellSlot = 1;
         this.showCursorSpell();
      }
      
      private function spell1CmdOver(event:MouseEvent) : void
      {
      }
      
      private function spell2CmdClick(event:MouseEvent) : void
      {
         this.spellSlot = 2;
         this.showCursorSpell();
      }
      
      private function spell2CmdOver(event:MouseEvent) : void
      {
      }
      
      private function spell3CmdClick(event:MouseEvent) : void
      {
         this.spellSlot = 3;
         this.showCursorSpell();
      }
      
      private function spell3CmdOver(event:MouseEvent) : void
      {
      }
      
      private function spell4CmdClick(event:MouseEvent) : void
      {
         this.spellSlot = 4;
         this.showCursorSpell();
      }
      
      private function spell4CmdOver(event:MouseEvent) : void
      {
      }
      
      private function spell5CmdClick(event:MouseEvent) : void
      {
         this.spellSlot = 5;
         this.showCursorSpell();
      }
      
      private function spell5CmdOver(event:MouseEvent) : void
      {
      }
      
      private function spell6CmdClick(event:MouseEvent) : void
      {
         this.spellSlot = 6;
         this.showCursorSpell();
      }
      
      private function spell6CmdOver(event:MouseEvent) : void
      {
      }
      
      private function spell7CmdClick(event:MouseEvent) : void
      {
         this.spellSlot = 7;
         this.showCursorSpell();
      }
      
      private function spell7CmdOver(event:MouseEvent) : void
      {
      }
   }
}

