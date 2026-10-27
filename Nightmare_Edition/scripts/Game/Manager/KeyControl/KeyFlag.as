package Game.Manager.KeyControl
{
   public class KeyFlag
   {
      
      public var KEY_A:Boolean = false;
      
      public var KEY_B:Boolean = false;
      
      public var KEY_C:Boolean = false;
      
      public var KEY_D:Boolean = false;
      
      public var KEY_E:Boolean = false;
      
      public var KEY_F:Boolean = false;
      
      public var KEY_G:Boolean = false;
      
      public var KEY_H:Boolean = false;
      
      public var KEY_I:Boolean = false;
      
      public var KEY_J:Boolean = false;
      
      public var KEY_K:Boolean = false;
      
      public var KEY_L:Boolean = false;
      
      public var KEY_M:Boolean = false;
      
      public var KEY_N:Boolean = false;
      
      public var KEY_O:Boolean = false;
      
      public var KEY_P:Boolean = false;
      
      public var KEY_Q:Boolean = false;
      
      public var KEY_R:Boolean = false;
      
      public var KEY_S:Boolean = false;
      
      public var KEY_T:Boolean = false;
      
      public var KEY_U:Boolean = false;
      
      public var KEY_V:Boolean = false;
      
      public var KEY_W:Boolean = false;
      
      public var KEY_X:Boolean = false;
      
      public var KEY_Y:Boolean = false;
      
      public var KEY_Z:Boolean = false;
      
      public var KEY_0:Boolean = false;
      
      public var KEY_1:Boolean = false;
      
      public var KEY_2:Boolean = false;
      
      public var KEY_3:Boolean = false;
      
      public var KEY_4:Boolean = false;
      
      public var KEY_5:Boolean = false;
      
      public var KEY_6:Boolean = false;
      
      public var KEY_7:Boolean = false;
      
      public var KEY_8:Boolean = false;
      
      public var KEY_9:Boolean = false;
      
      public var KEY_NUM0:Boolean = false;
      
      public var KEY_NUM1:Boolean = false;
      
      public var KEY_NUM2:Boolean = false;
      
      public var KEY_NUM3:Boolean = false;
      
      public var KEY_NUM4:Boolean = false;
      
      public var KEY_NUM5:Boolean = false;
      
      public var KEY_NUM6:Boolean = false;
      
      public var KEY_NUM7:Boolean = false;
      
      public var KEY_NUM8:Boolean = false;
      
      public var KEY_NUM9:Boolean = false;
      
      public var KEY_F1:Boolean = false;
      
      public var KEY_F2:Boolean = false;
      
      public var KEY_F3:Boolean = false;
      
      public var KEY_F4:Boolean = false;
      
      public var KEY_F5:Boolean = false;
      
      public var KEY_F6:Boolean = false;
      
      public var KEY_F7:Boolean = false;
      
      public var KEY_F8:Boolean = false;
      
      public var KEY_F9:Boolean = false;
      
      public var KEY_F10:Boolean = false;
      
      public var KEY_F11:Boolean = false;
      
      public var KEY_F12:Boolean = false;
      
      public var KEY_ESC:Boolean = false;
      
      public var KEY_ENTER:Boolean = false;
      
      public var KEY_SPACE:Boolean = false;
      
      public var KEY_SHIFT:Boolean = false;
      
      public var KEY_CONTROL:Boolean = false;
      
      public var KEY_TAB:Boolean = false;
      
      public var KEY_BACKSPACE:Boolean = false;
      
      public var KEY_PGUP:Boolean = false;
      
      public var KEY_PGDOWN:Boolean = false;
      
      public var KEY_END:Boolean = false;
      
      public var KEY_HOME:Boolean = false;
      
      public var KEY_INSERT:Boolean = false;
      
      public var KEY_DELETE:Boolean = false;
      
      public var KEY_UP:Boolean = false;
      
      public var KEY_DOWN:Boolean = false;
      
      public var KEY_LEFT:Boolean = false;
      
      public var KEY_RIGHT:Boolean = false;
      
      public function KeyFlag()
      {
         super();
      }
      
      public function refreshKey() : *
      {
         this.KEY_A = false;
         this.KEY_B = false;
         this.KEY_C = false;
         this.KEY_D = false;
         this.KEY_E = false;
         this.KEY_F = false;
         this.KEY_G = false;
         this.KEY_H = false;
         this.KEY_I = false;
         this.KEY_J = false;
         this.KEY_K = false;
         this.KEY_L = false;
         this.KEY_M = false;
         this.KEY_N = false;
         this.KEY_O = false;
         this.KEY_P = false;
         this.KEY_Q = false;
         this.KEY_R = false;
         this.KEY_S = false;
         this.KEY_T = false;
         this.KEY_U = false;
         this.KEY_V = false;
         this.KEY_W = false;
         this.KEY_X = false;
         this.KEY_Y = false;
         this.KEY_Z = false;
         this.KEY_0 = false;
         this.KEY_1 = false;
         this.KEY_2 = false;
         this.KEY_3 = false;
         this.KEY_4 = false;
         this.KEY_5 = false;
         this.KEY_6 = false;
         this.KEY_7 = false;
         this.KEY_8 = false;
         this.KEY_9 = false;
         this.KEY_NUM0 = false;
         this.KEY_NUM1 = false;
         this.KEY_NUM2 = false;
         this.KEY_NUM3 = false;
         this.KEY_NUM4 = false;
         this.KEY_NUM5 = false;
         this.KEY_NUM6 = false;
         this.KEY_NUM7 = false;
         this.KEY_NUM8 = false;
         this.KEY_NUM9 = false;
         this.KEY_F1 = false;
         this.KEY_F2 = false;
         this.KEY_F3 = false;
         this.KEY_F4 = false;
         this.KEY_F5 = false;
         this.KEY_F6 = false;
         this.KEY_F7 = false;
         this.KEY_F8 = false;
         this.KEY_F9 = false;
         this.KEY_F10 = false;
         this.KEY_F11 = false;
         this.KEY_F12 = false;
         this.KEY_ESC = false;
         this.KEY_ENTER = false;
         this.KEY_SPACE = false;
         this.KEY_SHIFT = false;
         this.KEY_CONTROL = false;
         this.KEY_TAB = false;
         this.KEY_BACKSPACE = false;
         this.KEY_PGUP = false;
         this.KEY_PGDOWN = false;
         this.KEY_END = false;
         this.KEY_HOME = false;
         this.KEY_INSERT = false;
         this.KEY_DELETE = false;
         this.KEY_UP = false;
         this.KEY_DOWN = false;
         this.KEY_LEFT = false;
         this.KEY_RIGHT = false;
      }
      
      public function setKeyFlag(keyCode:*, flagVar:*) : *
      {
         switch(keyCode)
         {
            case 65:
               this.KEY_A = flagVar;
               break;
            case 66:
               this.KEY_B = flagVar;
               break;
            case 67:
               this.KEY_C = flagVar;
               break;
            case 68:
               this.KEY_D = flagVar;
               break;
            case 69:
               this.KEY_E = flagVar;
               break;
            case 70:
               this.KEY_F = flagVar;
               break;
            case 71:
               this.KEY_G = flagVar;
               break;
            case 72:
               this.KEY_H = flagVar;
               break;
            case 73:
               this.KEY_I = flagVar;
               break;
            case 74:
               this.KEY_J = flagVar;
               break;
            case 75:
               this.KEY_K = flagVar;
               break;
            case 76:
               this.KEY_L = flagVar;
               break;
            case 77:
               this.KEY_M = flagVar;
               break;
            case 78:
               this.KEY_N = flagVar;
               break;
            case 79:
               this.KEY_O = flagVar;
               break;
            case 80:
               this.KEY_P = flagVar;
               break;
            case 81:
               this.KEY_Q = flagVar;
               break;
            case 82:
               this.KEY_R = flagVar;
               break;
            case 83:
               this.KEY_S = flagVar;
               break;
            case 84:
               this.KEY_T = flagVar;
               break;
            case 85:
               this.KEY_U = flagVar;
               break;
            case 86:
               this.KEY_V = flagVar;
               break;
            case 87:
               this.KEY_W = flagVar;
               break;
            case 88:
               this.KEY_X = flagVar;
               break;
            case 89:
               this.KEY_Y = flagVar;
               break;
            case 90:
               this.KEY_Z = flagVar;
               break;
            case 48:
               this.KEY_0 = flagVar;
               break;
            case 49:
               this.KEY_1 = flagVar;
               break;
            case 50:
               this.KEY_2 = flagVar;
               break;
            case 51:
               this.KEY_3 = flagVar;
               break;
            case 52:
               this.KEY_4 = flagVar;
               break;
            case 53:
               this.KEY_5 = flagVar;
               break;
            case 54:
               this.KEY_6 = flagVar;
               break;
            case 55:
               this.KEY_7 = flagVar;
               break;
            case 56:
               this.KEY_8 = flagVar;
               break;
            case 57:
               this.KEY_9 = flagVar;
               break;
            case 96:
               this.KEY_NUM0 = flagVar;
               break;
            case 97:
               this.KEY_NUM1 = flagVar;
               break;
            case 98:
               this.KEY_NUM2 = flagVar;
               break;
            case 99:
               this.KEY_NUM3 = flagVar;
               break;
            case 100:
               this.KEY_NUM4 = flagVar;
               break;
            case 101:
               this.KEY_NUM5 = flagVar;
               break;
            case 102:
               this.KEY_NUM6 = flagVar;
               break;
            case 103:
               this.KEY_NUM7 = flagVar;
               break;
            case 104:
               this.KEY_NUM8 = flagVar;
               break;
            case 105:
               this.KEY_NUM9 = flagVar;
               break;
            case 112:
               this.KEY_F1 = flagVar;
               break;
            case 113:
               this.KEY_F2 = flagVar;
               break;
            case 114:
               this.KEY_F3 = flagVar;
               break;
            case 115:
               this.KEY_F4 = flagVar;
               break;
            case 116:
               this.KEY_F5 = flagVar;
               break;
            case 117:
               this.KEY_F6 = flagVar;
               break;
            case 118:
               this.KEY_F7 = flagVar;
               break;
            case 119:
               this.KEY_F8 = flagVar;
               break;
            case 120:
               this.KEY_F9 = flagVar;
               break;
            case 122:
               this.KEY_F11 = flagVar;
               break;
            case 123:
               this.KEY_F12 = flagVar;
               break;
            case 27:
               this.KEY_ESC = flagVar;
               break;
            case 13:
               this.KEY_ENTER = flagVar;
               break;
            case 32:
               this.KEY_SPACE = flagVar;
               break;
            case 16:
               this.KEY_SHIFT = flagVar;
               break;
            case 17:
               this.KEY_CONTROL = flagVar;
               break;
            case 9:
               this.KEY_TAB = flagVar;
               break;
            case 8:
               this.KEY_BACKSPACE = flagVar;
               break;
            case 33:
               this.KEY_PGUP = flagVar;
               break;
            case 34:
               this.KEY_PGDOWN = flagVar;
               break;
            case 35:
               this.KEY_END = flagVar;
               break;
            case 36:
               this.KEY_HOME = flagVar;
               break;
            case 45:
               this.KEY_INSERT = flagVar;
               break;
            case 46:
               this.KEY_DELETE = flagVar;
               break;
            case 37:
               this.KEY_LEFT = flagVar;
               break;
            case 38:
               this.KEY_UP = flagVar;
               break;
            case 39:
               this.KEY_RIGHT = flagVar;
               break;
            case 40:
               this.KEY_DOWN = flagVar;
         }
      }
      
      public function getKeyFlag(keyCode:*) : Boolean
      {
         switch(keyCode)
         {
            case 65:
               if(this.KEY_A)
               {
                  return true;
               }
               break;
            case 66:
               if(this.KEY_B)
               {
                  return true;
               }
               break;
            case 67:
               if(this.KEY_C)
               {
                  return true;
               }
               break;
            case 68:
               if(this.KEY_D)
               {
                  return true;
               }
               break;
            case 69:
               if(this.KEY_E)
               {
                  return true;
               }
               break;
            case 70:
               if(this.KEY_F)
               {
                  return true;
               }
               break;
            case 71:
               if(this.KEY_G)
               {
                  return true;
               }
               break;
            case 72:
               if(this.KEY_H)
               {
                  return true;
               }
               break;
            case 73:
               if(this.KEY_I)
               {
                  return true;
               }
               break;
            case 74:
               if(this.KEY_J)
               {
                  return true;
               }
               break;
            case 75:
               if(this.KEY_K)
               {
                  return true;
               }
               break;
            case 76:
               if(this.KEY_L)
               {
                  return true;
               }
               break;
            case 77:
               if(this.KEY_M)
               {
                  return true;
               }
               break;
            case 78:
               if(this.KEY_N)
               {
                  return true;
               }
               break;
            case 79:
               if(this.KEY_O)
               {
                  return true;
               }
               break;
            case 80:
               if(this.KEY_P)
               {
                  return true;
               }
               break;
            case 81:
               if(this.KEY_Q)
               {
                  return true;
               }
               break;
            case 82:
               if(this.KEY_R)
               {
                  return true;
               }
               break;
            case 83:
               if(this.KEY_S)
               {
                  return true;
               }
               break;
            case 84:
               if(this.KEY_T)
               {
                  return true;
               }
               break;
            case 85:
               if(this.KEY_U)
               {
                  return true;
               }
               break;
            case 86:
               if(this.KEY_V)
               {
                  return true;
               }
               break;
            case 87:
               if(this.KEY_W)
               {
                  return true;
               }
               break;
            case 88:
               if(this.KEY_X)
               {
                  return true;
               }
               break;
            case 89:
               if(this.KEY_Y)
               {
                  return true;
               }
               break;
            case 90:
               if(this.KEY_Z)
               {
                  return true;
               }
               break;
            case 48:
               if(this.KEY_0)
               {
                  return true;
               }
               break;
            case 49:
               if(this.KEY_1)
               {
                  return true;
               }
               break;
            case 50:
               if(this.KEY_2)
               {
                  return true;
               }
               break;
            case 51:
               if(this.KEY_3)
               {
                  return true;
               }
               break;
            case 52:
               if(this.KEY_4)
               {
                  return true;
               }
               break;
            case 53:
               if(this.KEY_5)
               {
                  return true;
               }
               break;
            case 54:
               if(this.KEY_6)
               {
                  return true;
               }
               break;
            case 55:
               if(this.KEY_7)
               {
                  return true;
               }
               break;
            case 56:
               if(this.KEY_8)
               {
                  return true;
               }
               break;
            case 57:
               if(this.KEY_9)
               {
                  return true;
               }
               break;
            case 96:
               if(this.KEY_NUM0)
               {
                  return true;
               }
               break;
            case 97:
               if(this.KEY_NUM1)
               {
                  return true;
               }
               break;
            case 98:
               if(this.KEY_NUM2)
               {
                  return true;
               }
               break;
            case 99:
               if(this.KEY_NUM3)
               {
                  return true;
               }
               break;
            case 100:
               if(this.KEY_NUM4)
               {
                  return true;
               }
               break;
            case 101:
               if(this.KEY_NUM5)
               {
                  return true;
               }
               break;
            case 102:
               if(this.KEY_NUM6)
               {
                  return true;
               }
               break;
            case 103:
               if(this.KEY_NUM7)
               {
                  return true;
               }
               break;
            case 104:
               if(this.KEY_NUM8)
               {
                  return true;
               }
               break;
            case 105:
               if(this.KEY_NUM9)
               {
                  return true;
               }
               break;
            case 112:
               if(this.KEY_F1)
               {
                  return true;
               }
               break;
            case 113:
               if(this.KEY_F2)
               {
                  return true;
               }
               break;
            case 114:
               if(this.KEY_F3)
               {
                  return true;
               }
               break;
            case 115:
               if(this.KEY_F4)
               {
                  return true;
               }
               break;
            case 116:
               if(this.KEY_F5)
               {
                  return true;
               }
               break;
            case 117:
               if(this.KEY_F6)
               {
                  return true;
               }
               break;
            case 118:
               if(this.KEY_F7)
               {
                  return true;
               }
               break;
            case 119:
               if(this.KEY_F8)
               {
                  return true;
               }
               break;
            case 120:
               if(this.KEY_F9)
               {
                  return true;
               }
               break;
            case 122:
               if(this.KEY_F11)
               {
                  return true;
               }
               break;
            case 123:
               if(this.KEY_F12)
               {
                  return true;
               }
               break;
            case 27:
               if(this.KEY_ESC)
               {
                  return true;
               }
               break;
            case 13:
               if(this.KEY_ENTER)
               {
                  return true;
               }
               break;
            case 32:
               if(this.KEY_SPACE)
               {
                  return true;
               }
               break;
            case 16:
               if(this.KEY_SHIFT)
               {
                  return true;
               }
               break;
            case 17:
               if(this.KEY_CONTROL)
               {
                  return true;
               }
               break;
            case 9:
               if(this.KEY_TAB)
               {
                  return true;
               }
               break;
            case 8:
               if(this.KEY_BACKSPACE)
               {
                  return true;
               }
               break;
            case 33:
               if(this.KEY_PGUP)
               {
                  return true;
               }
               break;
            case 34:
               if(this.KEY_PGDOWN)
               {
                  return true;
               }
               break;
            case 35:
               if(this.KEY_END)
               {
                  return true;
               }
               break;
            case 36:
               if(this.KEY_HOME)
               {
                  return true;
               }
               break;
            case 45:
               if(this.KEY_INSERT)
               {
                  return true;
               }
               break;
            case 46:
               if(this.KEY_DELETE)
               {
                  return true;
               }
               break;
            case 37:
               if(this.KEY_LEFT)
               {
                  return true;
               }
               break;
            case 38:
               if(this.KEY_UP)
               {
                  return true;
               }
               break;
            case 39:
               if(this.KEY_RIGHT)
               {
                  return true;
               }
               break;
            case 40:
               if(this.KEY_DOWN)
               {
                  return true;
               }
         }
         return false;
      }
   }
}

