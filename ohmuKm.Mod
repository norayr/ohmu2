MODULE ohmuKm;

IMPORT SYSTEM;

CONST

maxNameLength*       =       80;
rows*                =       100;
cols*                =       100;
grayLevels*          =       255;
prewitt*             =       1;
peakSpace*           =       50;
peaks*               =       30;
kirsch*              =       2;
sobel*               =       3;
stackSize*           =       40000;
stackFileLength*     =       500;
forgetIt*            =      -50;
stackFile*           =      "stack.tmp";


VRES16COLOR*         =  1;
ERESCOLOR*           =  1;
MAXCOLORMODE*        =  1;
HRESBW*              =  1;
MRES4COLOR*          =  1;
TEXTC80*             =  1;
GCLEARSCREEN*        =  1;

TYPE
   INT8*  = SYSTEM.INT8;
   INT16* = SYSTEM.INT16;
   INT32* = SYSTEM.INT32;
   INT64* = SYSTEM.INT64;

   tiffHeader* = RECORD
          lsb* : INT8;
          bitsPerPixel*, imageLength*, imageWidth*, stripOffset* : INT32
   END;

   bmpfileheader* = RECORD
            filetype* : INT8(*unsigned short*);
            filesize* : INT32(*unsigned long*);
           reserved1*, reserved2* : INT8;
         bitmapoffset : INT32(*unsigned long*);
   END;

   bitmapheader* = RECORD
           size* : INT32(*unsigned long*);
          width* : INT32;
         height* : INT32;
         planes* : INT8(*unsigned short*);
   bitsperpixel* : INT8(*unsigned short*);
    compression* : INT32(*unsigned long*);
   sizeofbitmap* : INT32(*unsigned long*);
        horzres* : INT32(*unsigned long*);
        vertres* : INT32(*unsigned long*);
     colorsused* : INT32(*unsigned long*);
      colorsimp* : INT32(*unsigned long*);
    END;
    
    ct* = RECORD
     blue*, green*, red* : INT8(*unsigned short*)
    END;


    shortCharUnion* = RECORD
              sNum* : INT8;
            sAlpha* : ARRAY 2 OF CHAR;
    END;

    intCharUnion*   = RECORD
              iNum* : INT16;
            iAlpha* : ARRAY 2 OF CHAR;
    END;

    longCharUnion*  = RECORD
              lNum* : INT32;
            lAlpha* : ARRAY 4 OF CHAR;
    END;

    floatCharUnion* = RECORD
              fNum* : REAL;
            fAlpha* : ARRAY 4 OF CHAR;
    END;

    ushortCharUnion* = RECORD
             sNum*  : INT8;
           sAlpha*  : ARRAY 2 OF CHAR;
    END;

    uintCharUnion*   = RECORD
             iNum*   : INT16;
           iAlpha*   : ARRAY 2 OF CHAR;
    END;

    ulongCharUnion*  = RECORD
             lNum*   : INT32;
           lAlpha*   : ARRAY 4 OF CHAR;
    END;

END ohmuKm.
