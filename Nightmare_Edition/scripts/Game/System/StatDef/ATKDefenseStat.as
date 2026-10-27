package Game.System.StatDef
{
   public class ATKDefenseStat
   {
      
      public var melee:Number = 0;
      
      public var slash:Number = 0;
      
      public var pierce:Number = 0;
      
      public var fire:Number = 0;
      
      public var ice:Number = 0;
      
      public var thunder:Number = 0;
      
      public var isFreeze:Boolean = false;
      
      public var isShield:Boolean = false;
      
      public var isPoison:Boolean = false;
      
      public var isMini:Boolean = false;
      
      public var isGiant:Boolean = false;
      
      public var isSuper:Boolean = false;
      
      public var isIgnorehit:Boolean = false;
      
      public function ATKDefenseStat()
      {
         super();
      }
      
      public function DefenseStat() : *
      {
         this.reset();
      }
      
      public function updateFreeze(timerFreeze:int = 0) : *
      {
         if(timerFreeze <= 0)
         {
            this.isFreeze = false;
         }
         else
         {
            this.isFreeze = true;
         }
      }
      
      public function updateShield(timerShield:int = 0) : *
      {
         if(timerShield <= 0)
         {
            this.isShield = false;
         }
         else
         {
            this.isShield = true;
         }
      }
      
      public function updatePoison(timerPoison:int = 0) : *
      {
         if(timerPoison <= 0)
         {
            this.isPoison = false;
         }
         else
         {
            this.isPoison = true;
         }
      }
      
      public function updateMini(timerMini:int = 0) : *
      {
         if(timerMini <= 0)
         {
            this.isMini = false;
         }
         else
         {
            this.isMini = true;
         }
      }
      
      public function updateGiant(timerGiant:int = 0) : *
      {
         if(timerGiant <= 0)
         {
            this.isGiant = false;
         }
         else
         {
            this.isGiant = true;
         }
      }
      
      public function updateSuper(timerSuper:int = 0) : *
      {
         if(timerSuper <= 0)
         {
            this.isSuper = false;
         }
         else
         {
            this.isSuper = true;
         }
      }
      
      public function reset() : *
      {
         this.isFreeze = false;
         this.isShield = false;
         this.isPoison = false;
         this.isMini = false;
         this.isGiant = false;
         this.isSuper = false;
      }
   }
}

