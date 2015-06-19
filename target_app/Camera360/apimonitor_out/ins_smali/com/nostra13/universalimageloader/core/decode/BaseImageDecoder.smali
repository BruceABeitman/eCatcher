.class public Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"
.implements Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
.field protected static final ERROR_CANT_DECODE_IMAGE:Ljava/lang/String; = "Image can\'t be decoded [%s]"
.field protected static final LOG_FLIP_IMAGE:Ljava/lang/String; = "Flip image horizontally [%s]"
.field protected static final LOG_ROTATE_IMAGE:Ljava/lang/String; = "Rotate image on %1$d\u00b0 [%2$s]"
.field protected static final LOG_SABSAMPLE_IMAGE:Ljava/lang/String; = "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"
.field protected static final LOG_SCALE_IMAGE:Ljava/lang/String; = "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"
.field protected final loggingEnabled:Z
.method public constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z
return-void
.end method
.method protected considerExactScaleAndOrientaiton(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
.registers 16
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
move-result-object v9
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if-eq v9, v0, :cond_11
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if-ne v9, v0, :cond_5f
:cond_11
new-instance v10, Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
invoke-direct {v10, v0, v1, p3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
move-result-object v1
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
move-result-object v2
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if-ne v9, v0, :cond_b3
const/4 v0, 0x1
:goto_2b
invoke-static {v10, v1, v2, v0}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
move-result v8
const/high16 v0, 0x3f80
invoke-static {v8, v0}, Ljava/lang/Float;->compare(FF)I
move-result v0
if-eqz v0, :cond_5f
invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z
if-eqz v0, :cond_5f
const-string/jumbo v0, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object v10, v1, v2
const/4 v2, 0x1
invoke-virtual {v10, v8}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->scale(F)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_5f
if-eqz p4, :cond_7c
const/high16 v0, -0x4080
const/high16 v1, 0x3f80
invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z
if-eqz v0, :cond_7c
const-string/jumbo v0, "Flip image horizontally [%s]"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_7c
if-eqz p3, :cond_9d
int-to-float v0, p3
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z
if-eqz v0, :cond_9d
const-string/jumbo v0, "Rotate image on %1$d\u00b0 [%2$s]"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_9d
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
if-eq v7, p1, :cond_b2
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
:cond_b2
return-object v7
:cond_b3
const/4 v0, 0x0
goto/16 :goto_2b
.end method
.method public decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
.registers 10
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
move-result-object v3
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v3, v4}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineImageSizeAndRotation(Ljava/io/InputStream;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
move-result-object v2
iget-object v4, v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invoke-virtual {p0, v4, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
move-result-object v1
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
move-result-object v3
invoke-virtual {p0, v3, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_2d
const-string/jumbo v4, "Image can\'t be decoded [%s]"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_2c
return-object v0
:cond_2d
iget-object v4, v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
iget v4, v4, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I
iget-object v5, v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
iget-boolean v5, v5, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z
invoke-virtual {p0, v0, p1, v4, v5}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->considerExactScaleAndOrientaiton(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_2c
.end method
.method protected decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_9
move-result-object v0
invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
return-object v0
:catchall_9
move-exception v0
invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
throw v0
.end method
.method protected defineExifOrientation(Ljava/lang/String;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
.registers 11
const/4 v7, 0x1
const/4 v4, 0x0
const/4 v3, 0x0
const-string/jumbo v5, "image/jpeg"
invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_2a
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
move-result-object v5
sget-object v6, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
if-ne v5, v6, :cond_2a
:try_start_14
new-instance v1, Landroid/media/ExifInterface;
sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {v5, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "Orientation"
const/4 v6, 0x1
invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
:try_end_26
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_26} :catch_3f
move-result v2
packed-switch v2, :pswitch_data_4c
:goto_2a
:cond_2a
new-instance v5, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
invoke-direct {v5, v4, v3}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(IZ)V
return-object v5
:pswitch_30
const/4 v3, 0x1
:pswitch_31
const/4 v4, 0x0
goto :goto_2a
:pswitch_33
const/4 v3, 0x1
:pswitch_34
const/16 v4, 0x5a
goto :goto_2a
:pswitch_37
const/4 v3, 0x1
:pswitch_38
const/16 v4, 0xb4
goto :goto_2a
:pswitch_3b
const/4 v3, 0x1
:pswitch_3c
const/16 v4, 0x10e
goto :goto_2a
:catch_3f
move-exception v0
const-string/jumbo v5, "Can\'t read EXIF tags from file [%s]"
new-array v6, v7, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object p1, v6, v7
invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_2a
:pswitch_data_4c
.packed-switch 0x1
:pswitch_31
:pswitch_30
:pswitch_38
:pswitch_37
:pswitch_3b
:pswitch_34
:pswitch_33
:pswitch_3c
.end packed-switch
.end method
.method protected defineImageSizeAndRotation(Ljava/io/InputStream;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
.registers 10
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v2, 0x1
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v2, 0x0
:try_start_9
invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_2b
invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/4 v3, 0x5
if-lt v2, v3, :cond_30
iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
invoke-virtual {p0, p2, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Ljava/lang/String;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
move-result-object v0
:goto_1a
new-instance v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;
iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget v6, v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I
invoke-direct {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V
invoke-direct {v2, v3, v0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V
return-object v2
:catchall_2b
move-exception v2
invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
throw v2
:cond_30
new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V
goto :goto_1a
.end method
.method protected getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
.registers 5
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
move-result-object v0
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method protected prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
.registers 12
const/4 v5, 0x1
const/4 v6, 0x0
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
move-result-object v3
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
move-result-object v4
const/4 v2, 0x1
sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if-eq v3, v7, :cond_3f
sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if-ne v3, v7, :cond_46
move v1, v5
:goto_14
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
move-result-object v7
invoke-static {p1, v4, v7, v1}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
move-result v2
iget-boolean v7, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z
if-eqz v7, :cond_3f
const-string/jumbo v7, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"
const/4 v8, 0x4
new-array v8, v8, [Ljava/lang/Object;
aput-object p1, v8, v6
invoke-virtual {p1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->scaleDown(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
move-result-object v6
aput-object v6, v8, v5
const/4 v5, 0x2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v8, v5
const/4 v5, 0x3
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;
move-result-object v6
aput-object v6, v8, v5
invoke-static {v7, v8}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_3f
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
move-result-object v0
iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
return-object v0
:cond_46
move v1, v6
goto :goto_14
.end method