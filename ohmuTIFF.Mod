MODULE ohmuTIFF;

IMPORT Files, ohmuKm;

PROCEDURE readTiffHeader(fileName : ARRAY OF CHAR; VAR imageHeader : ohmuKm.tiffHeader);
VAR
  buffer : ARRAY 12 OF CHAR;
  response : ARRAY 80 OF CHAR;
  imageFile : Files.File;
  bytesRead, closed, i, j, lsb, notFinished, position: ohmuKm.INT16;
  bitsPerPixel, imageLength, imageWidth, lengthOfField, offsetToIFD, stripOffset, subFile, value: ohmuKm.INT32;
BEGIN

END readTiffHeader;

END ohmuTIFF.
