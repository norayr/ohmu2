MODULE okm;

CONST

maxNameLength*       =       80
rows*                =       100
cols*                =       100
grayLevels*          =       255
prewitt*             =       1
peakSpace*           =       50
peaks*               =       30
kirsch*              =       2
sobel*               =       3
stackSize*           =       40000
stackFileLength*     =       500
forgetIt*            =      -50
stackFile*           =      "stack.tmp"


VRES16COLOR*         =  1
ERESCOLOR*           =  1
MAXCOLORMODE*        =  1
HRESBW*              =  1
MRES4COLOR*          =  1
TEXTC80*             =  1
GCLEARSCREEN*        =  1

TYPE
   (*UINT8*  = SYSTEM.UINT8;
   UINT16* = SYSTEM.UINT16;
   UINT32* = SYSTEM.UINT32;
   UINT64* = SYSTEM.UINT64;*)

   tiffHeader* = RECORD
          lsb* : SHORTINT;
          bitsPerPixel*, imageLength*, imageWidth*, stripOffset* : INTEGER
   END;

   bmpfileheader* = RECORD
            filetype* : SHORTINT(*UINT8*);
            filesize* : INTEGER(*UINT32*);
           reserved1*, reserved2* : SHORTINT;
         bitmapoffset : INTEGER(*UINT32*);
   END;

   bitmapheader* = RECORD
           size* : INTEGER(*UINT32*);
          width* : INTEGER;
         height* : INTEGER;
         planes* : SHORTINT(*UINT8*);
   bitsperpixel* : SHORTINT(*UINT8*);
    compression* : INTEGER(*UINT32*);
   sizeofbitmap* : INTEGER(*UINT32*);
        horzres* : INTEGER(*UINT32*);
        vertres* : INTEGER(*UINT32*);
     colorsused* : INTEGER(*UINT32*);
      colorsimp* : INTEGER(*UINT32*);
    END;
    
    ct* = RECORD
     blue*, green*, red* : SHORTINT(*UINT8*)
    END;

END okm.
