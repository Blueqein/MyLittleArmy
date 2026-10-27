package Game.System.StatDef
{
   public class ATKDamageStat
   {
      
      public var power:int = 5;
      
      public var element:String = "";
      
      public var addStun:Number = 0.5;
      
      public var addCritical:Number = 0.2;
      
      public var addFreeze:Number = 0;
      
      public var addFly:Number = 0;
      
      public var addPoison:Number = 0;
      
      public var addDrain:Number = 0;
      
      public var addMini:Number = 0;
      
      public var addSlow:Number = 0;
      
      public var addStop:Number = 0;
      
      public var isRage:Boolean = false;
      
      public var isMini:Boolean = false;
      
      public var isGiant:Boolean = false;
      
      public var isSuper:Boolean = false;
      
      public var timerActive:int = 0;
      
      public var soundSwing:String = "";
      
      public var soundHit:String = "";
      
      public function ATKDamageStat()
      {
         super();
         this.reset();
      }
      
      public function updateRage(timerRage:int = 0) : *
      {
         if(timerRage <= 0)
         {
            this.isRage = false;
         }
         else
         {
            this.isRage = true;
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
         this.isRage = false;
         this.isMini = false;
         this.isGiant = false;
         this.isSuper = false;
      }
   }
}

