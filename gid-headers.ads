---------------------------------
-- GID - Generic Image Decoder --
---------------------------------
--
-- Private child of GID, with helpers for identifying
-- image formats and reading header informations.
--
private package GID.Headers is

  --
  -- Crude image signature detection
  --
  procedure Load_signature (
    image   :    out Image_descriptor;
    try_tga :        Boolean:= False
  );


  --
  -- Loading of various format's headers (past signature)
  --

  procedure Load_BMP_header (image: in out Image_descriptor);
  procedure Load_FITS_header (image: in out Image_descriptor);
  procedure Load_GIF_header (image: in out Image_descriptor);
  procedure Load_JPEG_header (image: in out Image_descriptor);
  procedure Load_PNG_header (image: in out Image_descriptor);
  procedure Load_TGA_header (image: in out Image_descriptor);
  procedure Load_TIFF_header (image: in out Image_descriptor);

  --

  generic
    type Number is mod <>;
  procedure Read_Intel_x86_number(
    n    :    out Number;
    from : in     Stream_Access
  );
  pragma Inline(Read_Intel_x86_number);

end;
