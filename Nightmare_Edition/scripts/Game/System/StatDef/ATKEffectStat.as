package Game.System.StatDef
{
   public class ATKEffectStat
   {
      
      public var damage:int = 0;
      
      public var hitStun:Number = 0.5;
      
      public var hitCritical:Number = 0.2;
      
      public var hitFly:Number = 0;
      
      public var hitFreeze:Number = 0;
      
      public var hitPoison:Number = 0;
      
      public function ATKEffectStat(atkDmg:*, atkDef:*)
      {
         super();
         var dmg:int = int(atkDmg.power);
         var def:int = 0;
         if(atkDmg.element == "melee")
         {
            def = atkDef.melee * dmg;
         }
         else if(atkDmg.element == "slash")
         {
            def = atkDef.slash * dmg;
         }
         else if(atkDmg.element == "pierce")
         {
            def = atkDef.pierce * dmg;
         }
         else if(atkDmg.element == "fire")
         {
            def = atkDef.fire * dmg;
         }
         else if(atkDmg.element == "ice")
         {
            def = atkDef.ice * dmg;
         }
         else if(atkDmg.element == "thunder")
         {
            def = atkDef.thunder * dmg;
         }
         dmg -= def;
         this.hitStun = atkDmg.addStun;
         this.hitCritical = atkDmg.addCritical;
         this.hitFreeze = atkDmg.addFreeze;
         this.hitFly = atkDmg.addFly;
         this.hitPoison = atkDmg.addPoison;
         if(atkDmg.isRage)
         {
            dmg += dmg * 0.5;
            this.hitStun = 1;
            this.hitCritical = 0.5;
         }
         if(atkDmg.isGiant > 0)
         {
            dmg += dmg * 1;
            this.hitStun = 0.7;
            this.hitCritical = 0.3;
         }
         if(atkDmg.isSuper > 0)
         {
            dmg += dmg * 1.5;
            this.hitStun = 1;
            this.hitCritical = 0.3;
         }
         if(atkDmg.isMini > 0)
         {
            dmg -= dmg * 0.5;
         }
         if(atkDef.isShield)
         {
            dmg -= dmg * 0.5;
            this.hitStun = 0;
            this.hitFreeze = 0;
            this.hitFly = 0;
            this.hitPoison = 0;
         }
         if(atkDef.isGiant)
         {
            dmg -= dmg * 0.5;
            this.hitStun = 0;
            this.hitCritical = atkDmg.addCritical * 0.5;
            this.hitFly = 0;
         }
         if(atkDef.isSuper)
         {
            dmg -= dmg * 0.6;
            this.hitStun = 0;
            this.hitCritical = atkDmg.addCritical * 0.2;
            this.hitFly = 0;
         }
         if(atkDef.isMini)
         {
            this.hitCritical = 1;
         }
         if(atkDef.isFreeze)
         {
            dmg += dmg * 0.2;
         }
         if(atkDef.isPoison)
         {
            dmg += dmg * 0.2;
         }
         if(atkDef.isIgnorehit)
         {
            this.hitStun = 0;
            this.hitCritical = 0;
            this.hitFreeze = 0;
            this.hitFly = 0;
            this.hitPoison = 0;
         }
         this.damage = dmg + dmg * 0.1 * Math.random();
      }
   }
}

