.class public Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"
.field protected final exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
.field protected final imageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
.method protected constructor <init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
iput-object p2, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
return-void
.end method