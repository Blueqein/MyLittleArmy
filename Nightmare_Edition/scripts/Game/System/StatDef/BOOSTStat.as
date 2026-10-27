package Game.System.StatDef
{
   public class BOOSTStat
   {
      
      public var id:int = 0;
      
      public var name:String = "";
      
      public var desc:String = "";
      
      public var addValue:int = 0;
      
      public var costUpgrade:int = 0;
      
      public function BOOSTStat(ID:int = 1, LEVEL:int = 1)
      {
         super();
         this.init(ID,LEVEL);
      }
      
      public function setByName(STRNAME:String = "") : *
      {
         var valID:int = 0;
         var valLEVEL:int = 1;
         if(STRNAME == "attack")
         {
            valID = 1;
            valLEVEL = 1;
         }
         else if(STRNAME == "attackLv2")
         {
            valID = 1;
            valLEVEL = 2;
         }
         else if(STRNAME == "attackLv3")
         {
            valID = 1;
            valLEVEL = 3;
         }
         if(STRNAME == "defense")
         {
            valID = 2;
            valLEVEL = 1;
         }
         else if(STRNAME == "defenseLv2")
         {
            valID = 2;
            valLEVEL = 2;
         }
         else if(STRNAME == "defenseLv3")
         {
            valID = 2;
            valLEVEL = 3;
         }
         if(STRNAME == "mana")
         {
            valID = 3;
            valLEVEL = 1;
         }
         else if(STRNAME == "manaLv2")
         {
            valID = 3;
            valLEVEL = 2;
         }
         else if(STRNAME == "manaLv3")
         {
            valID = 3;
            valLEVEL = 3;
         }
         this.init(valID,valLEVEL);
      }
      
      public function setLevel(LEVEL:int = 1) : *
      {
         this.init(this.id,LEVEL);
      }
      
      public function init(ID:int = 1, LEVEL:int = 1) : *
      {
         this.id = ID;
         this.addValue = 0;
         this.costUpgrade = 0;
         if(ID == 1)
         {
            this.name = "Strength";
            this.desc = "Increase hero\'s attack power.";
            this.addValue = 50;
            this.costUpgrade = 2000;
            if(LEVEL == 2)
            {
               this.addValue = 100;
               this.costUpgrade = 7500;
            }
            if(LEVEL == 3)
            {
               this.addValue = 200;
               this.costUpgrade = 15000;
            }
         }
         if(ID == 2)
         {
            this.name = "Defense";
            this.desc = "Increase hero\'s health point.";
            this.addValue = 1000;
            this.costUpgrade = 3000;
            if(LEVEL == 2)
            {
               this.addValue = 2000;
               this.costUpgrade = 10000;
            }
            if(LEVEL == 3)
            {
               this.addValue = 3000;
               this.costUpgrade = 20000;
            }
         }
         if(ID == 3)
         {
            this.name = "Mana";
            this.desc = "Increase hero\'s mana regeneration.";
            this.addValue = 50;
            this.costUpgrade = 5000;
            if(LEVEL == 2)
            {
               this.addValue = 100;
               this.costUpgrade = 20000;
            }
            if(LEVEL == 3)
            {
               this.addValue = 150;
               this.costUpgrade = 50000;
            }
         }
      }
      
      public function isValidName(NAME:String = "") : Boolean
      {
         if(NAME == "attack" || NAME == "attackLv2" || NAME == "attackLv3" || NAME == "defense" || NAME == "defenseLv2" || NAME == "defenseLv3" || NAME == "mana" || NAME == "manaLv2" || NAME == "manaLv3")
         {
            return true;
         }
         return false;
      }
   }
}

