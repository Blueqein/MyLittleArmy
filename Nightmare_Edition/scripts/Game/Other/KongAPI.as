package Game.Other
{
   import com.kongregate.as3.client.KongregateAPI;
   import com.kongregate.as3.client.events.KongregateEvent;
   
   public class KongAPI
   {
      
      private var stageRoot:*;
      
      private var kongregate:KongregateAPI;
      
      private var kongregateServiceLoaded:Boolean = false;
      
      public function KongAPI(_stageRoot:*)
      {
         super();
         this.stageRoot = _stageRoot;
      }
      
      public function initKongregateAPI() : *
      {
         this.kongregate = new KongregateAPI();
         this.stageRoot.addChild(this.kongregate);
         this.kongregate.addEventListener(KongregateEvent.COMPLETE,this.serviceLoaded);
      }
      
      private function serviceLoaded(e:KongregateEvent) : void
      {
         this.kongregate.services.connect();
         this.kongregateServiceLoaded = true;
      }
      
      private function isServiceLoaded() : Boolean
      {
         if(Boolean(this.kongregate) && this.kongregateServiceLoaded)
         {
            return true;
         }
         return false;
      }
      
      public function submitData(db:String = "TEST", val:int = 0) : *
      {
         if(this.isServiceLoaded())
         {
            this.kongregate.stats.submit(db,val);
            trace("submit : " + db + "  value : " + String(val));
         }
      }
   }
}

