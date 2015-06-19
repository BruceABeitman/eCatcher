.class public Lcom/tencent/connect/share/a;
.super Ljava/lang/Object;
.source "ProGuard"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final a(Landroid/graphics/BitmapFactory$Options;II)I
.registers 5
invoke-static {p0, p1, p2}, Lcom/tencent/connect/share/a;->b(Landroid/graphics/BitmapFactory$Options;II)I
move-result v1
const/16 v0, 0x8
if-gt v1, v0, :cond_e
const/4 v0, 0x1
:goto_9
if-ge v0, v1, :cond_14
shl-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_e
add-int/lit8 v0, v1, 0x7
div-int/lit8 v0, v0, 0x8
mul-int/lit8 v0, v0, 0x8
:cond_14
return v0
.end method
.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 9
const/4 v1, 0x0
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
if-le v0, v2, :cond_27
:goto_10
int-to-float v2, p1
int-to-float v0, v0
div-float v0, v2, v0
invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
:cond_27
move v0, v2
goto :goto_10
.end method
.method public static final a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.registers 8
const/4 v2, 0x0
const/4 v5, -0x1
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
move-object v0, v2
:goto_9
:cond_9
return-object v0
:cond_a
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v0, 0x1
iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v4, :cond_25
iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v4, v5, :cond_25
iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne v4, v5, :cond_27
:cond_25
move-object v0, v2
goto :goto_9
:cond_27
if-le v0, v1, :cond_42
:goto_29
sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
if-le v0, p1, :cond_37
mul-int v0, p1, p1
invoke-static {v3, v5, v0}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/BitmapFactory$Options;II)I
move-result v0
iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_37
const/4 v0, 0x0
iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_44
move-object v0, v2
goto :goto_9
:cond_42
move v0, v1
goto :goto_29
:cond_44
iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-le v1, v2, :cond_51
:goto_4a
if-le v1, p1, :cond_9
invoke-static {v0, p1}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_9
:cond_51
move v1, v2
goto :goto_4a
.end method
.method protected static final a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_e
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_e
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_29
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_29
if-eqz p0, :cond_45
:try_start_2b
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x50
invoke-virtual {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
:try_end_40
.catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_40} :catch_41
.catch Ljava/io/IOException; {:try_start_2b .. :try_end_40} :catch_47
:goto_40
return-object v0
:catch_41
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
:goto_45
:cond_45
const/4 v0, 0x0
goto :goto_40
:catch_47
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_45
.end method
.method public static final a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/utils/AsynLoadImgBack;)V
.registers 6
const/4 v2, 0x0
const-string/jumbo v0, "AsynScaleCompressImage"
const-string/jumbo v1, "scaleCompressImage"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_15
const/4 v0, 0x1
invoke-interface {p2, v0, v2}, Lcom/tencent/utils/AsynLoadImgBack;->saved(ILjava/lang/String;)V
:goto_14
return-void
:cond_15
invoke-static {}, Lcom/tencent/utils/Util;->hasSDCard()Z
move-result v0
if-nez v0, :cond_20
const/4 v0, 0x2
invoke-interface {p2, v0, v2}, Lcom/tencent/utils/AsynLoadImgBack;->saved(ILjava/lang/String;)V
goto :goto_14
:cond_20
new-instance v0, Lcom/tencent/connect/share/a$1;
invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p2}, Lcom/tencent/connect/share/a$1;-><init>(Landroid/os/Looper;Lcom/tencent/utils/AsynLoadImgBack;)V
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/tencent/connect/share/a$2;
invoke-direct {v2, p1, v0}, Lcom/tencent/connect/share/a$2;-><init>(Ljava/lang/String;Landroid/os/Handler;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
goto :goto_14
.end method
.method public static final a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/utils/AsynLoadImgBack;)V
.registers 6
const-string/jumbo v0, "AsynScaleCompressImage"
const-string/jumbo v1, "batchScaleCompressImage"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-nez p1, :cond_11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-interface {p2, v0, v1}, Lcom/tencent/utils/AsynLoadImgBack;->saved(ILjava/lang/String;)V
:goto_10
return-void
:cond_11
new-instance v0, Lcom/tencent/connect/share/a$3;
invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p2}, Lcom/tencent/connect/share/a$3;-><init>(Landroid/os/Looper;Lcom/tencent/utils/AsynLoadImgBack;)V
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/tencent/connect/share/a$4;
invoke-direct {v2, p1, v0}, Lcom/tencent/connect/share/a$4;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
goto :goto_10
.end method
.method static synthetic a(Ljava/lang/String;II)Z
.registers 4
invoke-static {p0, p1, p2}, Lcom/tencent/connect/share/a;->b(Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
.registers 14
const/4 v1, 0x1
const/4 v10, -0x1
iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-double v2, v0
iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-double v4, v0
if-ne p2, v10, :cond_12
move v0, v1
:goto_b
if-ne p1, v10, :cond_20
const/16 v2, 0x80
:goto_f
if-ge v2, v0, :cond_32
:cond_11
:goto_11
return v0
:cond_12
mul-double v6, v2, v4
int-to-double v8, p2
div-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D
move-result-wide v6
double-to-int v0, v6
goto :goto_b
:cond_20
int-to-double v6, p1
div-double/2addr v2, v6
invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D
move-result-wide v2
int-to-double v6, p1
div-double/2addr v4, v6
invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D
move-result-wide v4
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D
move-result-wide v2
double-to-int v2, v2
goto :goto_f
:cond_32
if-ne p2, v10, :cond_38
if-ne p1, v10, :cond_38
move v0, v1
goto :goto_11
:cond_38
if-eq p1, v10, :cond_11
move v0, v2
goto :goto_11
.end method
.method private static final b(Ljava/lang/String;II)Z
.registers 11
const/4 v3, 0x1
const/4 v6, -0x1
const/4 v2, 0x0
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b
move v0, v2
:goto_a
return v0
:cond_b
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z
if-nez v4, :cond_25
iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-eq v4, v6, :cond_25
iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne v4, v6, :cond_27
:cond_25
move v0, v2
goto :goto_a
:cond_27
if-le v0, v1, :cond_5b
move v4, v0
:goto_2a
if-ge v0, v1, :cond_5d
:goto_2c
const-string/jumbo v1, "AsynScaleCompressImage"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "longSide="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "shortSide="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
iput-object v1, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
if-gt v4, p2, :cond_59
if-le v0, p1, :cond_5f
:cond_59
move v0, v3
goto :goto_a
:cond_5b
move v4, v1
goto :goto_2a
:cond_5d
move v0, v1
goto :goto_2c
:cond_5f
move v0, v2
goto :goto_a
.end method