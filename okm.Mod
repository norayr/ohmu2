MODULE okm;

IMPORT S := SYSTEM;

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
   UINT8*  = S.UINT8;
   UINT16* = S.UINT16;
   UINT32* = S.UINT32;
   UINT64* = S.UINT64;

   tiffHeader* = RECORD
          lsb* : SHORTINT;
          bitsPerPixel*, imageLength*, imageWidth*, stripOffset* : INTEGER
   END;

   bmpfileheader* = RECORD
            filetype* : UINT8;
            filesize* : UINT32;
           reserved1*, reserved2* : SHORTINT;
         bitmapoffset : UINT32;
   END;

   bitmapheader* = RECORD
           size* : UINT32;
          width* : INTEGER;
         height* : INTEGER;
         planes* : UINT8;
   bitsperpixel* : UINT8;
    compression* : UINT32;
   sizeofbitmap* : UINT32;
        horzres* : UINT32;
        vertres* : UINT32;
     colorsused* : UINT32;
      colorsimp* : UINT32;
    END;
    
    ct* = RECORD
     blue*, green*, red* : UINT8
    END;

END okm.
