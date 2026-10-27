package Game.Other
{
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class KongAd extends Sprite
   {
      
      public function KongAd()
      {
         super();
         var url:String = "http://www.kongnet.net/www/delivery/avw.php?zoneid=2&n=a691da53";
         var request:URLRequest = new URLRequest(url);
         var loader:Loader = new Loader();
         loader.load(request);
         addChild(loader);
         loader.addEventListener(MouseEvent.CLICK,this.onClick);
      }
      
      public function onClick(event:MouseEvent) : void
      {
         var url:String = "http://www.kongnet.net/www/delivery/ck.php?n=a691da53";
         var request:URLRequest = new URLRequest(url);
         navigateToURL(request,"_blank");
      }
   }
}

