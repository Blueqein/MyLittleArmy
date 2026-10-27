package Game.System.Background
{
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class BackgroundMgr
   {
      
      private var mGF:*;
      
      private var bSys:*;
      
      private var contBack:*;
      
      private var contLand:*;
      
      private var contFog:*;
      
      private var backClip:*;
      
      private var landClip:*;
      
      private var fogClip:*;
      
      private var collClip:*;
      
      private var fogDistance:int = 0;
      
      private var floor:Array = new Array();
      
      private var _left_scroll_flag:* = false;
      
      private var _right_scroll_flag:* = false;
      
      private var _scroll_accel:Number = 1;
      
      private var _fog_move_x:int = 0;
      
      private var _weather_effect:int = 0;
      
      private var _counter_delay:int = 100;
      
      public function BackgroundMgr(_mGF:*, _bSys:*)
      {
         super();
         this.mGF = _mGF;
         this.bSys = _bSys;
         this.contBack = this.mGF.contBSCREEN;
         this.contLand = this.mGF.contBG;
         this.contFog = this.mGF.contFOG;
         this.mGF.areaWidth = 3000;
         this.fogDistance = 700;
      }
      
      public function destroy() : *
      {
         this.mGF.destroyObjectInContainer(this.mGF.contFILTER);
         this.scrollRemove();
         if(this.backClip)
         {
            this.contBack.removeChild(this.backClip);
            this.backClip = null;
         }
         if(this.collClip)
         {
            this.contLand.removeChild(this.collClip);
            this.collClip = null;
         }
         if(this.landClip)
         {
            this.contLand.removeChild(this.landClip);
            this.landClip = null;
         }
         if(this.fogClip)
         {
            this.contFog.removeChild(this.fogClip);
            this.fogClip = null;
         }
         this.contBack = null;
         this.contLand = null;
         this.bSys = null;
         this.mGF = null;
      }
      
      public function init() : *
      {
         this.fogClip = new fog_of_war_mc();
         this.contFog.addChild(this.fogClip);
         this._weather_effect = 0;
         this.scrollInit();
         var i:int = 0;
         for(i = 0; i < this.mGF.areaWidth; i++)
         {
            this.floor[i] = new Point(i,380);
         }
      }
      
      public function setLengthArea(VAL:int = 3000) : *
      {
         this.mGF.areaWidth = VAL;
      }
      
      public function createBackground(theme:int = 1, area:int = 1, day:int = 1, weather:int = 0) : *
      {
         var i:int = 0;
         var j:int = 0;
         if(theme == 1)
         {
            if(area == 1)
            {
               this.landClip = new land_snow01_mc();
               this.collClip = new coll_snow01_mc();
            }
            else if(area == 2)
            {
               this.landClip = new land_snow01a_mc();
               this.collClip = new coll_snow01a_mc();
            }
            else if(area == 3)
            {
               this.landClip = new land_snow02_mc();
               this.collClip = new coll_snow02_mc();
            }
            else if(area == 4)
            {
               this.landClip = new land_snow02a_mc();
               this.collClip = new coll_snow02a_mc();
            }
            else if(area == 5)
            {
               this.landClip = new land_snow03_mc();
               this.collClip = new coll_snow03_mc();
            }
            else if(area == 6)
            {
               this.landClip = new land_snow03a_mc();
               this.collClip = new coll_snow03a_mc();
            }
            else if(area == 7)
            {
               this.landClip = new land_snow04_mc();
               this.collClip = new coll_snow04_mc();
            }
            else if(area == 8)
            {
               this.landClip = new land_snow04a_mc();
               this.collClip = new coll_snow04a_mc();
            }
            if(day == 1)
            {
               this.backClip = new backdrop_snow_mc();
            }
            else
            {
               this.backClip = new backdrop_snow2_mc();
            }
         }
         else if(theme == 2)
         {
            if(area == 1)
            {
               this.landClip = new land_jungle01_mc();
               this.collClip = new coll_jungle01_mc();
            }
            else if(area == 2)
            {
               this.landClip = new land_jungle01a_mc();
               this.collClip = new coll_jungle01a_mc();
            }
            else if(area == 3)
            {
               this.landClip = new land_jungle02_mc();
               this.collClip = new coll_jungle02_mc();
            }
            else if(area == 4)
            {
               this.landClip = new land_jungle02a_mc();
               this.collClip = new coll_jungle02a_mc();
            }
            else if(area == 5)
            {
               this.landClip = new land_jungle03_mc();
               this.collClip = new coll_jungle03_mc();
            }
            else if(area == 6)
            {
               this.landClip = new land_jungle03a_mc();
               this.collClip = new coll_jungle03a_mc();
            }
            else if(area == 7)
            {
               this.landClip = new land_jungle04_mc();
               this.collClip = new coll_jungle04_mc();
            }
            else if(area == 8)
            {
               this.landClip = new land_jungle04a_mc();
               this.collClip = new coll_jungle04a_mc();
            }
            if(day == 1)
            {
               this.backClip = new backdrop_jungle_mc();
            }
            else
            {
               this.backClip = new backdrop_jungle2_mc();
            }
         }
         else if(theme == 3)
         {
            if(area == 1)
            {
               this.landClip = new land_color01_mc();
               this.collClip = new coll_color01_mc();
            }
            else if(area == 2)
            {
               this.landClip = new land_color01a_mc();
               this.collClip = new coll_color01a_mc();
            }
            else if(area == 3)
            {
               this.landClip = new land_color02_mc();
               this.collClip = new coll_color02_mc();
            }
            else if(area == 4)
            {
               this.landClip = new land_color02a_mc();
               this.collClip = new coll_color02a_mc();
            }
            else if(area == 5)
            {
               this.landClip = new land_color03_mc();
               this.collClip = new coll_color03_mc();
            }
            else if(area == 6)
            {
               this.landClip = new land_color03a_mc();
               this.collClip = new coll_color03a_mc();
            }
            if(day == 1)
            {
               this.backClip = new backdrop_color_mc();
            }
            else
            {
               this.backClip = new backdrop_color2_mc();
            }
         }
         else if(theme == 4)
         {
            this.landClip = new land_final_mc();
            this.collClip = new coll_final_mc();
            this.backClip = new backdrop_color3_mc();
         }
         if(this.collClip)
         {
            this.contLand.addChild(this.collClip);
            i = 0;
            for(i = 0; i < this.mGF.areaWidth; i++)
            {
               this.floor[i] = new Point(i,380);
            }
            j = 0;
            for(i = 0; i < this.mGF.areaWidth; i++)
            {
               for(j = 0; j < this.mGF.screenHeight; j++)
               {
                  if(this.collClip.hitTestPoint(i,j,true))
                  {
                     this.floor[i] = new Point(i,j);
                     break;
                  }
               }
            }
            this.collClip.visible = false;
         }
         if(this.landClip)
         {
            this.contLand.addChild(this.landClip);
            this.contBack.addChild(this.backClip);
         }
         this._weather_effect = 0;
         if(weather == 1)
         {
            this._weather_effect = 1;
         }
         else if(weather == 2)
         {
            this._weather_effect = 2;
         }
      }
      
      public function createRandomBackground(theme:int = 1, weather:int = 0) : *
      {
         var randVal:Number = Math.random();
         var area:int = 1;
         var day:int = 1;
         if(theme == 1 || theme == 2)
         {
            if(randVal < 0.125)
            {
               area = 1;
            }
            else if(randVal >= 0.125 && randVal < 0.25)
            {
               area = 2;
            }
            else if(randVal >= 0.25 && randVal < 0.375)
            {
               area = 3;
            }
            else if(randVal >= 0.375 && randVal < 0.5)
            {
               area = 4;
            }
            else if(randVal >= 0.5 && randVal < 0.625)
            {
               area = 5;
            }
            else if(randVal >= 0.625 && randVal < 0.75)
            {
               area = 6;
            }
            else if(randVal >= 0.75 && randVal < 0.875)
            {
               area = 7;
            }
            else
            {
               area = 8;
            }
         }
         else if(theme == 3)
         {
            if(randVal < 0.16)
            {
               area = 1;
            }
            else if(randVal >= 0.16 && randVal < 0.32)
            {
               area = 2;
            }
            else if(randVal >= 0.32 && randVal < 0.48)
            {
               area = 3;
            }
            else if(randVal >= 0.48 && randVal < 0.64)
            {
               area = 4;
            }
            else if(randVal >= 0.64 && randVal < 0.8)
            {
               area = 5;
            }
            else
            {
               area = 6;
            }
         }
         if(Math.random() < 0.5)
         {
            day = 2;
         }
         this.createBackground(theme,area,day,weather);
      }
      
      public function getPointY(X:int = 0) : int
      {
         if(X >= 0 && X < this.mGF.areaWidth)
         {
            return this.floor[X].y;
         }
         if(X < 0)
         {
            return this.floor[0].y;
         }
         if(X > this.mGF.areaWidth - 1)
         {
            return this.floor[this.mGF.areaWidth - 1].y;
         }
         return 0;
      }
      
      public function isInsideFog(X:int = 0) : Boolean
      {
         if(X > this._fog_move_x + 900)
         {
            return true;
         }
         return false;
      }
      
      private function scrollInit() : *
      {
         this.mGF.contSCROLL.x = 0;
         this.bSys.ui.scrollmap.left_scroll.addEventListener(MouseEvent.MOUSE_OVER,this.leftScrollOver,false,0,true);
         this.bSys.ui.scrollmap.left_scroll.addEventListener(MouseEvent.MOUSE_OUT,this.scrollOut,false,0,true);
         this.bSys.ui.scrollmap.right_scroll.addEventListener(MouseEvent.MOUSE_OVER,this.rightScrollOver,false,0,true);
         this.bSys.ui.scrollmap.right_scroll.addEventListener(MouseEvent.MOUSE_OUT,this.scrollOut,false,0,true);
         trace("scroll inited");
      }
      
      private function scrollRemove() : *
      {
         this.bSys.ui.scrollmap.left_scroll.removeEventListener(MouseEvent.MOUSE_OVER,this.leftScrollOver);
         this.bSys.ui.scrollmap.left_scroll.removeEventListener(MouseEvent.MOUSE_OUT,this.scrollOut);
         this.bSys.ui.scrollmap.right_scroll.removeEventListener(MouseEvent.MOUSE_OVER,this.rightScrollOver);
         this.bSys.ui.scrollmap.right_scroll.removeEventListener(MouseEvent.MOUSE_OUT,this.scrollOut);
      }
      
      private function scrollX(val:int) : *
      {
         this.mGF.contSCROLL.x = Math.min(Math.max(this.mGF.contSCROLL.x + val * this._scroll_accel,-(this.mGF.areaWidth - this.mGF.screenWidth)),0);
         this._scroll_accel *= 1.05;
      }
      
      private function scrollUpdate() : *
      {
         if(Boolean(this._left_scroll_flag) || Boolean(this.mGF.keyMgr.getKeyHold().KEY_LEFT))
         {
            this.scrollX(5);
         }
         else if(Boolean(this._right_scroll_flag) || Boolean(this.mGF.keyMgr.getKeyHold().KEY_RIGHT))
         {
            this.scrollX(-5);
         }
         else
         {
            this._scroll_accel = 1;
         }
      }
      
      private function leftScrollOver(event:MouseEvent) : void
      {
         this._left_scroll_flag = true;
      }
      
      private function rightScrollOver(event:MouseEvent) : void
      {
         this._right_scroll_flag = true;
      }
      
      private function scrollOut(event:MouseEvent) : void
      {
         this._scroll_accel = 1;
         this._left_scroll_flag = false;
         this._right_scroll_flag = false;
      }
      
      private function fogControl(PX:int = 0) : *
      {
         if(PX > this.fogDistance + this.fogClip.x)
         {
            this._fog_move_x = PX;
         }
      }
      
      private function fogUpdate() : *
      {
         this.fogControl(this.bSys.walkOpenAreaX);
         if(this._fog_move_x > this.fogDistance + this.fogClip.x)
         {
            this.fogClip.x += 10;
         }
      }
      
      private function spawnSnowBall(_X:int = 100, _Y:int = 0) : *
      {
         var clip:* = new snow_particle_mc();
         clip.initialise(this.mGF,this,_X,_Y);
      }
      
      private function spawnRainDrop(_X:int = 100, _Y:int = 0) : *
      {
         var clip:* = new rain_drop_mc();
         clip.initialise(this.mGF,this,_X,_Y);
      }
      
      private function weatherUpdate() : *
      {
         var i:int = 0;
         this._counter_delay = Math.max(this._counter_delay - 1,0);
         if(this._weather_effect == 1)
         {
            if(this._counter_delay <= 0)
            {
               this._counter_delay = 2 * Math.random();
               this.spawnSnowBall(Math.random() * this.mGF.screenWidth,-10);
            }
         }
         else if(this._weather_effect == 2)
         {
            if(this._counter_delay <= 0)
            {
               this._counter_delay = 6;
               i = 0;
               for(i = 0; i < 200; i++)
               {
                  this.spawnRainDrop(Math.random() * this.mGF.screenWidth,Math.random() * 400);
               }
            }
         }
      }
      
      public function update() : *
      {
         this.fogUpdate();
         this.weatherUpdate();
         this.scrollUpdate();
      }
   }
}

