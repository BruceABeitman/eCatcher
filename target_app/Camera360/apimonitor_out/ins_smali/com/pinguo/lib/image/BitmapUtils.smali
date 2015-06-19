.class public final Lcom/pinguo/lib/image/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"
.field private static final PRECISION:F = 0.01f
.field public static final QUALITY_MAX:I = 0x64
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/lib/image/BitmapUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/image/BitmapUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCropImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 14
const/4 v2, 0x0
const/high16 v11, 0x3f00
if-nez p1, :cond_6
:goto_5
:cond_5
return-object p0
:cond_6
const/high16 v4, -0x4080
packed-switch p1, :pswitch_data_a2
goto :goto_5
:pswitch_c
const v4, 0x3fe38e39
:goto_f
if-eqz p0, :cond_17
invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v9
if-eqz v9, :cond_23
:cond_17
move-object p0, v2
goto :goto_5
:pswitch_19
const v4, 0x3faaaaab
goto :goto_f
:pswitch_1d
const/high16 v4, 0x3fc0
goto :goto_f
:pswitch_20
const/high16 v4, 0x3f80
goto :goto_f
:cond_23
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
if-lez v6, :cond_2f
if-gtz v1, :cond_31
:cond_2f
move-object p0, v2
goto :goto_5
:cond_31
if-ge v6, v1, :cond_69
int-to-float v9, v1
int-to-float v10, v6
div-float v3, v9, v10
invoke-static {v3, v4}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->isEqual(FF)Z
move-result v9
if-nez v9, :cond_5
cmpl-float v9, v3, v4
if-lez v9, :cond_55
int-to-float v9, v6
mul-float/2addr v9, v4
add-float/2addr v9, v11
float-to-int v0, v9
move v5, v6
const/4 v7, 0x0
sub-int v9, v1, v0
div-int/lit8 v8, v9, 0x2
invoke-static {p0, v7, v8, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
const/4 p0, 0x0
move-object p0, v2
goto :goto_5
:cond_55
move v0, v1
int-to-float v9, v1
div-float/2addr v9, v4
add-float/2addr v9, v11
float-to-int v5, v9
sub-int v9, v6, v5
div-int/lit8 v7, v9, 0x2
const/4 v8, 0x0
invoke-static {p0, v7, v8, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
const/4 p0, 0x0
move-object p0, v2
goto :goto_5
:cond_69
int-to-float v9, v6
int-to-float v10, v1
div-float v3, v9, v10
invoke-static {v3, v4}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->isEqual(FF)Z
move-result v9
if-nez v9, :cond_5
cmpl-float v9, v3, v4
if-lez v9, :cond_8c
move v0, v1
int-to-float v9, v1
mul-float/2addr v9, v4
add-float/2addr v9, v11
float-to-int v5, v9
sub-int v9, v6, v5
div-int/lit8 v7, v9, 0x2
const/4 v8, 0x0
invoke-static {p0, v7, v8, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
const/4 p0, 0x0
move-object p0, v2
goto/16 :goto_5
:cond_8c
int-to-float v9, v6
div-float/2addr v9, v4
add-float/2addr v9, v11
float-to-int v0, v9
move v5, v6
const/4 v7, 0x0
sub-int v9, v1, v0
div-int/lit8 v8, v9, 0x2
invoke-static {p0, v7, v8, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
const/4 p0, 0x0
move-object p0, v2
goto/16 :goto_5
nop
:pswitch_data_a2
.packed-switch 0x1
:pswitch_c
:pswitch_19
:pswitch_1d
:pswitch_20
.end packed-switch
.end method
.method public static getMirrorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 9
new-instance v2, Landroid/graphics/Canvas;
invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
new-instance v1, Landroid/graphics/Camera;
invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V
new-instance v3, Landroid/graphics/Matrix;
invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V
const/high16 v5, 0x4334
invoke-virtual {v1, v5}, Landroid/graphics/Camera;->rotateY(F)V
invoke-virtual {v1, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
int-to-float v5, v5
const/4 v6, 0x0
invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z
invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I
invoke-virtual {v2, p0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V
return-object v0
.end method
.method public static getPictureSize([B)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.registers 6
const/4 v2, 0x0
const/4 v3, 0x1
const/4 v4, -0x1
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v0, Ljava/io/ByteArrayInputStream;
invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v3, :cond_20
iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v3, v4, :cond_20
iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne v3, v4, :cond_21
:cond_20
:goto_20
return-object v2
:cond_21
new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
goto :goto_20
.end method
.method public static getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 10
const/4 v1, 0x0
if-eqz p0, :cond_1e
if-lez p1, :cond_1e
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, p1
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
:goto_1d
return-object v7
:cond_1e
move-object v7, p0
goto :goto_1d
.end method
.method public static getRotateBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 14
const/4 v1, 0x0
const/4 v10, 0x0
:try_start_2
new-instance v8, Landroid/media/ExifInterface;
invoke-direct {v8, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "Orientation"
const/4 v2, 0x0
invoke-virtual {v8, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
:try_end_e
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_3f
move-result v9
packed-switch v9, :pswitch_data_46
:pswitch_12
:goto_12
if-eqz p0, :cond_44
if-lez v10, :cond_44
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, v10
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v11
if-eqz v11, :cond_44
if-eq v11, p0, :cond_44
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
:goto_35
return-object v11
:pswitch_36
const/16 v10, 0x5a
goto :goto_12
:pswitch_39
const/16 v10, 0xb4
goto :goto_12
:pswitch_3c
const/16 v10, 0x10e
goto :goto_12
:catch_3f
move-exception v7
invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_12
:cond_44
move-object v11, p0
goto :goto_35
:pswitch_data_46
.packed-switch 0x3
:pswitch_39
:pswitch_12
:pswitch_12
:pswitch_36
:pswitch_12
:pswitch_3c
.end packed-switch
.end method
.method private static getSampleSize(Landroid/graphics/BitmapFactory$Options;IZ)I
.registers 7
iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eqz p2, :cond_13
iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ge v2, v3, :cond_13
iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
:cond_c
:goto_c
const/4 v1, 0x1
:goto_d
div-int v2, v0, p1
const/4 v3, 0x2
if-ge v2, v3, :cond_1e
return v1
:cond_13
if-nez p2, :cond_c
iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-le v2, v3, :cond_c
iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
goto :goto_c
:cond_1e
shl-int/lit8 v1, v1, 0x1
shr-int/lit8 v0, v0, 0x1
goto :goto_d
.end method
.method public static makeTextBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;
.registers 16
move-object v6, p0
const/4 v3, -0x1
const-string/jumbo v4, "\u9ed1\u4f53"
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
const/4 v10, 0x0
invoke-static {v4, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
move-result-object v2
new-instance v7, Landroid/graphics/Paint;
const/4 v10, 0x1
invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V
invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setTextSize(F)V
const/high16 v10, 0x3f00
const/high16 v11, 0x3f80
const/high16 v12, 0x3f80
const/high16 v13, -0x100
invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V
const/4 v10, 0x0
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v11
invoke-virtual {v7, v6, v10, v11, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
invoke-virtual {v8}, Landroid/graphics/Rect;->width()I
move-result v10
add-int/lit8 v9, v10, 0x6
invoke-virtual {v8}, Landroid/graphics/Rect;->height()I
move-result v10
add-int/lit8 v5, v10, 0x6
sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v10, 0x0
invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->drawColor(I)V
const/4 v10, 0x0
const/16 v11, 0xff
const/16 v12, 0xff
const/16 v13, 0xff
invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V
const/high16 v10, 0x4000
add-int/lit8 v11, v5, -0x3
int-to-float v11, v11
invoke-virtual {v1, v6, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
return-object v0
.end method
.method public static makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.registers 9
const/16 v2, 0xa
if-ge p1, v2, :cond_1e
const/16 v2, 0x1388
if-le p1, v2, :cond_1e
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "length must between [10,5000],but value is:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1e
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-static {v2, v3}, Lcom/pinguo/lib/util/MathUitls;->getCenterClipInfo(II)Lcom/pinguo/lib/util/MathUitls$ClipInfo;
move-result-object v0
iget v2, v0, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->x:I
iget v3, v0, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->y:I
iget v4, v0, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->size:I
iget v5, v0, Lcom/pinguo/lib/util/MathUitls$ClipInfo;->size:I
invoke-static {p0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v2
invoke-static {v2, p1, p1, p2}, Lcom/pinguo/lib/image/BitmapUtils;->zoomAndRotate(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
move-result-object v1
return-object v1
.end method
.method public static makeThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 9
const/4 v3, 0x0
const/4 v5, -0x1
const/16 v4, 0xa
if-ge p1, v4, :cond_20
const/16 v4, 0x1388
if-le p1, v4, :cond_20
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "length must between [10,5000],but value is:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_20
:try_start_20
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v4, 0x1
iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v4, 0x1
iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v4, :cond_3a
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v4, v5, :cond_3a
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne v4, v5, :cond_3b
:goto_3a
:cond_3a
return-object v3
:cond_3b
const/4 v4, 0x1
invoke-static {v2, p1, v4}, Lcom/pinguo/lib/image/BitmapUtils;->getSampleSize(Landroid/graphics/BitmapFactory$Options;IZ)I
move-result v4
iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v4, 0x0
iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v4, 0x0
iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z
sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_4f
.catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_4f} :catch_55
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v3
goto :goto_3a
:catch_55
move-exception v1
sget-object v4, Lcom/pinguo/lib/image/BitmapUtils;->TAG:Ljava/lang/String;
invoke-static {v4, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3a
.end method
.method public static makeThumbnail([BII)Landroid/graphics/Bitmap;
.registers 12
const/4 v8, -0x1
const/4 v6, 0x0
const/16 v7, 0xa
if-ge p1, v7, :cond_20
const/16 v7, 0x1388
if-le p1, v7, :cond_20
new-instance v6, Ljava/lang/IllegalArgumentException;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "length must between [10,5000],but value is:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_20
:try_start_20
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v7, 0x1
iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v7, 0x1
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v7, 0x0
invoke-static {v1, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v7, :cond_40
iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v7, v8, :cond_40
iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne v7, v8, :cond_41
:goto_40
:cond_40
return-object v6
:cond_41
const/4 v7, 0x1
invoke-static {v5, p1, v7}, Lcom/pinguo/lib/image/BitmapUtils;->getSampleSize(Landroid/graphics/BitmapFactory$Options;IZ)I
move-result v3
iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v7, 0x0
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v7, 0x0
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v7, 0x0
invoke-static {v2, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_5b
.catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_5b} :catch_61
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v6
goto :goto_40
:catch_61
move-exception v4
sget-object v7, Lcom/pinguo/lib/image/BitmapUtils;->TAG:Ljava/lang/String;
invoke-static {v7, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_40
.end method
.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 10
const/4 v1, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_7
:cond_5
move-object v7, p0
:goto_6
:cond_6
return-object v7
:cond_7
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, p1
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
if-eq v7, p0, :cond_6
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_6
.end method
.method public static rotateBitmapIntate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 10
const/4 v1, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_7
:cond_5
move-object v7, p0
:goto_6
return-object v7
:cond_7
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, p1
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
goto :goto_6
.end method
.method public static scaleBitmap(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
.registers 12
const/4 v1, 0x0
if-nez p0, :cond_5
const/4 v7, 0x0
:goto_4
:cond_4
return-object v7
:cond_5
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z
if-eqz p3, :cond_13
int-to-float v0, p3
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
:cond_13
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
if-eq v7, p0, :cond_4
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_4
.end method
.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.registers 9
const/16 v3, 0xa
if-ge p1, v3, :cond_1e
const/16 v3, 0x1388
if-le p1, v3, :cond_1e
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "length must between [10,5000],but value is:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1e
if-nez p0, :cond_22
const/4 p0, 0x0
:goto_21
:cond_21
return-object p0
:cond_22
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
if-lt v2, v0, :cond_44
int-to-float v3, p1
int-to-float v4, v2
div-float v1, v3, v4
:goto_30
const/high16 v3, 0x3f80
sub-float v3, v1, v3
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
const v4, 0x3c23d70a
cmpg-float v3, v3, v4
if-ltz v3, :cond_21
invoke-static {p0, v1, v1, p2}, Lcom/pinguo/lib/image/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
move-result-object p0
goto :goto_21
:cond_44
int-to-float v3, p1
int-to-float v4, v0
div-float v1, v3, v4
goto :goto_30
.end method
.method public static scaleJpegPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 16
const/4 v12, 0x0
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v8, 0x1
iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
mul-int v4, v6, v5
mul-int v1, p1, p2
int-to-double v8, v4
const-wide/high16 v10, 0x3ff0
mul-double/2addr v8, v10
int-to-double v10, v1
div-double/2addr v8, v10
invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v8
double-to-float v2, v8
float-to-double v8, v2
const-wide v10, 0x3fe999999999999aL
add-double/2addr v8, v10
double-to-int v7, v8
iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z
sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static scalePicture(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
.registers 13
const/4 v7, 0x0
const/4 v9, -0x1
const/16 v8, 0xa
if-lt p1, v8, :cond_a
const/16 v8, 0x1388
if-le p1, v8, :cond_20
:cond_a
new-instance v7, Ljava/lang/IllegalArgumentException;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "length must between [10,5000],but value is:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:try_start_20
:cond_20
new-instance v4, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v8, 0x1
iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v8, 0x1
iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v8, :cond_3a
iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v8, v9, :cond_3a
iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne v8, v9, :cond_3b
:goto_3a
:cond_3a
return-object v7
:cond_3b
const/4 v8, 0x1
invoke-static {v4, p1, v8}, Lcom/pinguo/lib/image/BitmapUtils;->getSampleSize(Landroid/graphics/BitmapFactory$Options;IZ)I
move-result v8
iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v8, 0x0
iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v8, 0x0
iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z
sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_4f
.catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_4f} :catch_69
move-result-object v0
const/4 v6, 0x0
if-eqz p2, :cond_64
:try_start_53
new-instance v2, Landroid/media/ExifInterface;
invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "Orientation"
const/4 v8, 0x1
invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
move-result v5
invoke-static {v5}, Lcom/pinguo/lib/image/Exif;->getOrientation(I)I
:try_end_63
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_70
move-result v6
:cond_64
:goto_64
invoke-static {v0, p1, v6}, Lcom/pinguo/lib/image/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v7
goto :goto_3a
:catch_69
move-exception v3
sget-object v8, Lcom/pinguo/lib/image/BitmapUtils;->TAG:Ljava/lang/String;
invoke-static {v8, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3a
:catch_70
move-exception v1
const/4 v6, 0x0
goto :goto_64
.end method
.method public static scalePicture([BIZ)Landroid/graphics/Bitmap;
.registers 13
const/4 v9, -0x1
const/4 v7, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return-object v7
:cond_5
const/16 v8, 0xa
if-ge p1, v8, :cond_23
const/16 v8, 0x1388
if-le p1, v8, :cond_23
new-instance v7, Ljava/lang/IllegalArgumentException;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "length must between [10,5000],but value is:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_23
:try_start_23
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v8, 0x1
iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v8, 0x1
iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v8, 0x0
invoke-static {v1, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v8, :cond_4
iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v8, v9, :cond_4
iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-eq v8, v9, :cond_4
const/4 v8, 0x1
invoke-static {v5, p1, v8}, Lcom/pinguo/lib/image/BitmapUtils;->getSampleSize(Landroid/graphics/BitmapFactory$Options;IZ)I
move-result v3
iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v8, 0x0
iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v8, 0x0
iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z
sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v8, 0x0
invoke-static {v2, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_5d
.catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_5d} :catch_6a
move-result-object v0
const/4 v6, 0x0
if-eqz p2, :cond_65
invoke-static {p0}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
move-result v6
:cond_65
invoke-static {v0, p1, v6}, Lcom/pinguo/lib/image/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v7
goto :goto_4
:catch_6a
move-exception v4
sget-object v8, Lcom/pinguo/lib/image/BitmapUtils;->TAG:Ljava/lang/String;
invoke-static {v8, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_4
.end method
.method private static scalePreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.registers 9
const/16 v3, 0xa
if-ge p1, v3, :cond_1e
const/16 v3, 0x1388
if-le p1, v3, :cond_1e
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "length must between [10,5000],but value is:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1e
if-nez p0, :cond_22
const/4 p0, 0x0
:goto_21
:cond_21
return-object p0
:cond_22
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
if-lt v2, v0, :cond_3e
int-to-float v3, p1
int-to-float v4, v2
div-float v1, v3, v4
:goto_30
const v3, 0x3f8ccccd
cmpg-float v3, v1, v3
if-gez v3, :cond_43
if-eqz p2, :cond_21
invoke-static {p0, p2}, Lcom/pinguo/lib/image/BitmapUtils;->getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object p0
goto :goto_21
:cond_3e
int-to-float v3, p1
int-to-float v4, v0
div-float v1, v3, v4
goto :goto_30
:cond_43
invoke-static {p0, v1, v1, p2}, Lcom/pinguo/lib/image/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
move-result-object p0
goto :goto_21
.end method
.method public static scalePreviewJpegData([BII)Landroid/graphics/Bitmap;
.registers 12
const/4 v8, -0x1
const/4 v6, 0x0
const/16 v7, 0xa
if-ge p1, v7, :cond_20
const/16 v7, 0x1388
if-le p1, v7, :cond_20
new-instance v6, Ljava/lang/IllegalArgumentException;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "length must between [10,5000],but value is:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_20
:try_start_20
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v7, 0x1
iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v7, 0x1
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v7, 0x0
invoke-static {v1, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v7, :cond_40
iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v7, v8, :cond_40
iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne v7, v8, :cond_41
:goto_40
:cond_40
return-object v6
:cond_41
int-to-float v7, p1
const v8, 0x3f4ccccd
mul-float/2addr v7, v8
float-to-int v7, v7
const/4 v8, 0x1
invoke-static {v5, v7, v8}, Lcom/pinguo/lib/image/BitmapUtils;->getSampleSize(Landroid/graphics/BitmapFactory$Options;IZ)I
move-result v3
iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v7, 0x0
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v7, 0x0
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v7, 0x0
invoke-static {v2, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/pinguo/lib/image/BitmapUtils;->scalePreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
:try_end_65
.catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_65} :catch_67
move-result-object v6
goto :goto_40
:catch_67
move-exception v4
sget-object v7, Lcom/pinguo/lib/image/BitmapUtils;->TAG:Ljava/lang/String;
invoke-static {v7, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_40
.end method
.method public static zoomAndRotate(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
.registers 14
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, p1
int-to-float v1, v3
div-float v9, v0, v1
int-to-float v0, p2
int-to-float v1, v4
div-float v8, v0, v1
invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V
if-eqz p3, :cond_1e
int-to-float v0, p3
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
:cond_1e
invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z
if-lez v4, :cond_25
if-gtz v3, :cond_76
:cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Width or Heigth < 0:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v5}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_76
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v6, 0x1
move-object v0, p0
:try_start_7a
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
:try_end_7d
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7f
move-result-object v0
return-object v0
:catch_7f
move-exception v7
sget-object v0, Lcom/pinguo/lib/image/BitmapUtils;->TAG:Ljava/lang/String;
invoke-static {v0, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "orgSize : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", size : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", matrix : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v5}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method