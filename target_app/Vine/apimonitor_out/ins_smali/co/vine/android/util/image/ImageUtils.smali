.class public Lco/vine/android/util/image/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"
.field public static final MAX_AVATAR_UPLOAD_SIZE_KB:I = 0x2bc
.field public static final MAX_TWEET_UPLOAD_SIZE_KB:I = 0xc00
.field public static final MIN_REQUIRED_SD_SPACE:J = 0x100000L
.field public static final SUPPORTS_FILTERS:Z = false
.field public static final TEMP_FILENAME_PREFIX:Ljava/lang/String; = "pic-"
.field public static final TEMP_RESIZED_PREFIX:Ljava/lang/String; = "pic-r-"
.field private static final sInStrokePaint:Landroid/graphics/Paint;
.field private static final sOutStrokePaint:Landroid/graphics/Paint;
.field private static final sResizePaint:Landroid/graphics/Paint;
.field private static final sSolidStrokePaint:Landroid/graphics/Paint;
.field public static final sSrcXferMode:Landroid/graphics/PorterDuffXfermode;
.method static constructor <clinit>()V
.registers 4
const v3, -0xf0f10
const/high16 v2, 0x3f80
new-instance v0, Landroid/graphics/PorterDuffXfermode;
sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
sput-object v0, Lco/vine/android/util/image/ImageUtils;->sSrcXferMode:Landroid/graphics/PorterDuffXfermode;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x2
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sput-object v0, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;
const v1, -0x1f1f20
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;
const/high16 v1, 0x4040
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 14
const/4 v2, 0x0
invoke-static {p0, p1}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
move-result v8
packed-switch v8, :pswitch_data_32
:pswitch_8
:goto_8
return-object p2
:pswitch_9
const/high16 v10, 0x4334
:goto_b
new-instance v6, Landroid/graphics/Matrix;
invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->postRotate(F)Z
invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
const/4 v7, 0x1
move-object v0, p0
move-object v1, p2
move v3, v2
invoke-static/range {v0 .. v7}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v9
if-eqz v9, :cond_2a
if-eq v9, p2, :cond_2a
invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
:cond_2a
move-object p2, v9
goto :goto_8
:pswitch_2c
const/high16 v10, 0x4387
goto :goto_b
:pswitch_2f
const/high16 v10, 0x42b4
goto :goto_b
:pswitch_data_32
.packed-switch 0x3
:pswitch_9
:pswitch_8
:pswitch_8
:pswitch_2f
:pswitch_8
:pswitch_2c
.end packed-switch
.end method
.method public static changeFormatIfNeeded(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;
.registers 14
const/4 v7, 0x0
if-nez p1, :cond_5
move-object v4, v7
:goto_4
return-object v4
:cond_5
const/4 v3, 0x0
const/4 v5, 0x0
:try_start_7
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v5
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v8, 0x1
iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v8, 0x0
invoke-static {p0, v5, v8, v1}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
const-string v9, "image/jpeg"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_39
iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
const-string v9, "image/gif"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_39
iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
const-string v9, "image/png"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_36
.catchall {:try_start_7 .. :try_end_36} :catchall_6c
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_36} :catch_63
move-result v8
if-eqz v8, :cond_41
:cond_39
invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
move-object v4, p1
goto :goto_4
:try_start_41
:cond_41
invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v3
invoke-static {p0, v3}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_5b
invoke-static {p0, v6, p2, p3}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;
move-result-object v4
if-eqz v4, :cond_54
invoke-static {p1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z
:try_end_54
.catchall {:try_start_41 .. :try_end_54} :catchall_6c
.catch Ljava/io/IOException; {:try_start_41 .. :try_end_54} :catch_63
:cond_54
invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_4
:cond_5b
invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
move-object v4, v7
goto :goto_4
:catch_63
move-exception v2
invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
move-object v4, v7
goto :goto_4
:catchall_6c
move-exception v7
invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v7
.end method
.method public static createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.registers 6
:try_start_0
invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
:try_end_3
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
.registers 8
:try_start_0
invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
:try_end_3
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
.registers 10
:try_start_0
invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
:try_end_3
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public static decodeByteArray(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 12
const/4 v4, 0x0
:try_start_1
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
invoke-static {p1, p2, p3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_18
new-instance v3, Lco/vine/android/util/image/ImageUtils$BitmapInfo;
iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v3, v0, v5, v6, v7}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
:try_end_17
.catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_17} :catch_1a
:goto_17
return-object v3
:cond_18
move-object v3, v4
goto :goto_17
:catch_1a
move-exception v2
move-object v3, v4
goto :goto_17
.end method
.method public static decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 14
const/4 v7, 0x0
:try_start_1
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v6, 0x1
iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v6, 0x0
array-length v8, p1
invoke-static {p1, v6, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_20
new-instance v6, Lco/vine/android/util/image/ImageUtils$BitmapInfo;
invoke-direct {v6, v0, v5, v4, v3}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
:goto_1f
:try_end_1f
.catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1f} :catch_22
return-object v6
:cond_20
move-object v6, v7
goto :goto_1f
:catch_22
move-exception v2
move-object v6, v7
goto :goto_1f
.end method
.method public static decodeResource(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
.registers 5
:try_start_0
invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
:try_end_3
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public static decodeResource(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 6
:try_start_0
invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_3
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public static decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
.registers 4
:try_start_0
invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
:try_end_3
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public static decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 6
:try_start_0
invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_3
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method
.method public static deleteTempPic(Landroid/net/Uri;)Z
.registers 3
invoke-static {p0}, Lco/vine/android/util/image/ImageUtils;->isTempPic(Landroid/net/Uri;)Z
move-result v1
if-nez v1, :cond_8
const/4 v1, 0x0
:goto_7
return v1
:cond_8
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v1
goto :goto_7
.end method
.method public static getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
.registers 11
const/16 v6, 0x80
invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
move-result-object v4
invoke-static {v4}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v5
invoke-static {v4, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
move-result-object v2
int-to-float v5, p2
invoke-virtual {v2, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V
sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
invoke-static {v4, p1, v5, v6}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v0
sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;
invoke-static {v4, p1, v5, v6}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
move-result-object v1
invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V
invoke-virtual {v2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V
if-eqz p3, :cond_3e
invoke-static {v4}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
move-result-object v5
invoke-static {v4, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setGreyscale()V
invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
invoke-virtual {v3, v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
:goto_3d
return-object p1
:cond_3e
invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
goto :goto_3d
.end method
.method public static getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 12
const/4 v9, 0x1
const/4 v8, 0x0
invoke-static {p0, p1, p1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v4
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
new-instance v2, Landroid/graphics/Paint;
invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V
new-instance v3, Landroid/graphics/Rect;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setDither(Z)V
invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
div-int/lit8 v5, v5, 0x2
int-to-float v5, v5
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
div-int/lit8 v6, v6, 0x2
int-to-float v6, v6
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
div-int/lit8 v7, v7, 0x2
int-to-float v7, v7
invoke-virtual {v0, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
new-instance v5, Landroid/graphics/PorterDuffXfermode;
sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
invoke-virtual {v0, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
return-object v1
.end method
.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
.registers 15
const/4 v12, 0x0
invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v11
if-eqz v11, :cond_f
const-string v1, "file"
invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
:cond_f
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Ljava/lang/String;)I
move-result v10
:goto_17
return v10
:cond_18
const-string v1, "content"
invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_71
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
move-result-object v0
if-eqz v0, :cond_71
const/4 v1, 0x2
:try_start_2b
new-array v2, v1, [Ljava/lang/String;
const/4 v1, 0x0
const-string v3, "orientation"
aput-object v3, v2, v1
const/4 v1, 0x1
const-string v3, "_data"
aput-object v3, v2, v1
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_3e
.catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3e} :catch_43
.catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_3e} :catch_43
move-result-object v8
if-nez v8, :cond_46
move v10, v12
goto :goto_17
:catch_43
move-exception v6
move v10, v12
goto :goto_17
:cond_46
:try_start_46
invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_6e
const/4 v1, 0x1
invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_5d
invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Ljava/lang/String;)I
:try_end_56
.catchall {:try_start_46 .. :try_end_56} :catchall_73
move-result v10
if-eqz v10, :cond_5d
invoke-interface {v8}, Landroid/database/Cursor;->close()V
goto :goto_17
:cond_5d
const/4 v1, 0x0
:try_start_5e
invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
:try_end_61
.catchall {:try_start_5e .. :try_end_61} :catchall_73
move-result v9
if-eqz v9, :cond_69
invoke-interface {v8}, Landroid/database/Cursor;->close()V
move v10, v9
goto :goto_17
:cond_69
invoke-interface {v8}, Landroid/database/Cursor;->close()V
move v10, v12
goto :goto_17
:cond_6e
invoke-interface {v8}, Landroid/database/Cursor;->close()V
:cond_71
move v10, v12
goto :goto_17
:catchall_73
move-exception v1
invoke-interface {v8}, Landroid/database/Cursor;->close()V
throw v1
.end method
.method public static getExifOrientation(Ljava/lang/String;)I
.registers 6
const/4 v2, 0x0
if-nez p0, :cond_4
:goto_3
return v2
:try_start_4
:cond_4
new-instance v1, Landroid/media/ExifInterface;
invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string v3, "Orientation"
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
:try_end_f
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_11
move-result v2
goto :goto_3
:catch_11
move-exception v0
goto :goto_3
.end method
.method public static getRealPathFromImageUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.registers 11
const/4 v1, 0x0
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_10
const-string v0, "file"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
:cond_10
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v7
:goto_14
return-object v7
:cond_15
const-string v0, "content"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const-string v0, "_data"
aput-object v0, v2, v1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_57
:try_start_31
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_4a
const/4 v0, 0x0
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_3b
.catchall {:try_start_31 .. :try_end_3b} :catchall_52
move-result-object v7
if-eqz v7, :cond_42
invoke-interface {v6}, Landroid/database/Cursor;->close()V
goto :goto_14
:cond_42
:try_start_42
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
:try_end_45
.catchall {:try_start_42 .. :try_end_45} :catchall_52
move-result-object v7
invoke-interface {v6}, Landroid/database/Cursor;->close()V
goto :goto_14
:try_start_4a
:cond_4a
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
:try_end_4d
.catchall {:try_start_4a .. :try_end_4d} :catchall_52
move-result-object v7
invoke-interface {v6}, Landroid/database/Cursor;->close()V
goto :goto_14
:catchall_52
move-exception v0
invoke-interface {v6}, Landroid/database/Cursor;->close()V
throw v0
:cond_57
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v7
goto :goto_14
.end method
.method public static getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;
.registers 10
invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
if-nez v0, :cond_8
const/4 v2, 0x0
:goto_7
return-object v2
:cond_8
if-eqz p1, :cond_2d
const-string v1, "pic-r-"
:goto_c
new-instance v2, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ".jpg"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
goto :goto_7
:cond_2d
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "pic-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "-"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_c
.end method
.method public static hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z
.registers 10
const/4 v4, 0x0
invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v2
if-nez v2, :cond_8
:cond_7
:goto_7
return v4
:cond_8
new-instance v3, Landroid/os/StatFs;
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
move-result v5
int-to-long v5, v5
invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v7
int-to-long v7, v7
mul-long v0, v5, v7
const-wide/32 v5, 0x100000
cmp-long v5, v0, v5
if-lez v5, :cond_7
const/4 v4, 0x1
goto :goto_7
.end method
.method private static isPortrait(II)Z
.registers 3
if-le p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public static isResized(Landroid/net/Uri;)Z
.registers 3
invoke-static {p0}, Lco/vine/android/util/image/ImageUtils;->isTempPic(Landroid/net/Uri;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "pic-r-"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public static isTempPic(Landroid/net/Uri;)Z
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v0
const-string v1, "pic-"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public static processPicture(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;
.registers 10
invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->changeFormatIfNeeded(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v1
const/16 v2, 0xc00
const/4 v5, 0x0
move-object v0, p0
move-wide v3, p2
invoke-static/range {v0 .. v5}, Lco/vine/android/util/image/ImageUtils;->resizeIfNeeded(Landroid/content/Context;Landroid/net/Uri;IJLandroid/graphics/Rect;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static removeFiles(Landroid/content/Context;)V
.registers 8
invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
if-nez v1, :cond_7
:cond_6
return-void
:cond_7
invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
if-eqz v3, :cond_6
move-object v0, v3
array-length v5, v0
const/4 v4, 0x0
:goto_10
if-ge v4, v5, :cond_6
aget-object v2, v0, v4
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v6
if-nez v6, :cond_1d
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_1d
add-int/lit8 v4, v4, 0x1
goto :goto_10
.end method
.method public static resizeBitmap(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;
.registers 23
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v5
const/4 v10, 0x0
const/4 v13, 0x0
:try_start_6
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v13
new-instance v6, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/16 v16, 0x1
move/from16 v0, v16
iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/16 v16, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-static {v0, v13, v1, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I
move/from16 v16, v0
move/from16 v0, v16
int-to-float v12, v0
iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
move/from16 v16, v0
move/from16 v0, v16
int-to-float v11, v0
move/from16 v0, p4
int-to-float v0, v0
move/from16 v16, v0
sub-float p2, p2, v16
move/from16 v0, p4
int-to-float v0, v0
move/from16 v16, v0
sub-float p3, p3, v16
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v10
cmpl-float v16, v12, p2
if-gtz v16, :cond_4a
cmpl-float v16, v11, p3
if-lez v16, :cond_98
:cond_4a
div-float v7, v12, p2
div-float v8, v11, p3
cmpl-float v16, v7, v8
if-lez v16, :cond_8c
move/from16 v4, p2
div-float v3, v11, v7
:goto_56
div-float v16, v12, v4
const/high16 v17, 0x3f80
cmpl-float v16, v16, v17
if-lez v16, :cond_91
new-instance v14, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V
div-float v16, v12, v4
move/from16 v0, v16
float-to-int v0, v0
move/from16 v16, v0
move/from16 v0, v16
iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/16 v16, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-static {v0, v10, v1, v14}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v15
:goto_78
if-eqz v15, :cond_a3
move-object/from16 v0, p0
move/from16 v1, p4
invoke-static {v0, v15, v4, v3, v1}, Lco/vine/android/util/image/ImageUtils;->scaleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
:try_end_85
.catchall {:try_start_6 .. :try_end_85} :catchall_b4
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_85} :catch_ab
invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:goto_8b
return-object v2
:cond_8c
div-float v4, v12, v8
move/from16 v3, p3
goto :goto_56
:cond_91
:try_start_91
move-object/from16 v0, p0
invoke-static {v0, v10}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v15
goto :goto_78
:cond_98
move/from16 v4, p2
move/from16 v3, p3
move-object/from16 v0, p0
invoke-static {v0, v10}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
:try_end_a1
.catchall {:try_start_91 .. :try_end_a1} :catchall_b4
.catch Ljava/io/IOException; {:try_start_91 .. :try_end_a1} :catch_ab
move-result-object v15
goto :goto_78
:cond_a3
const/4 v2, 0x0
invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_8b
:catch_ab
move-exception v9
const/4 v2, 0x0
invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_8b
:catchall_b4
move-exception v16
invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v16
.end method
.method public static resizeBitmap(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
.registers 16
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const/4 v5, 0x0
const/4 v8, 0x0
:try_start_6
invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v8
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v9, 0x1
iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v9, 0x0
invoke-static {p0, v8, v9, v2}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-float v9, v9
iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-float v10, v10
div-float v0, v9, v10
long-to-float v9, p2
mul-float/2addr v9, v0
invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F
move-result v7
long-to-float v9, p2
const/high16 v10, 0x3f80
div-float/2addr v10, v0
mul-float/2addr v9, v10
invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F
move-result v6
const/4 v4, 0x1
iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-float v9, v9
cmpl-float v9, v9, v7
if-gtz v9, :cond_3c
iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-float v9, v9
cmpl-float v9, v9, v6
if-lez v9, :cond_62
:cond_3c
iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-le v9, v10, :cond_77
iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-float v9, v9
div-float/2addr v9, v6
float-to-double v9, v9
invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D
move-result-wide v9
double-to-int v4, v9
:goto_4c
if-eqz p4, :cond_62
iget v9, p4, Landroid/graphics/Rect;->left:I
div-int/2addr v9, v4
iput v9, p4, Landroid/graphics/Rect;->left:I
iget v9, p4, Landroid/graphics/Rect;->top:I
div-int/2addr v9, v4
iput v9, p4, Landroid/graphics/Rect;->top:I
iget v9, p4, Landroid/graphics/Rect;->right:I
div-int/2addr v9, v4
iput v9, p4, Landroid/graphics/Rect;->right:I
iget v9, p4, Landroid/graphics/Rect;->bottom:I
div-int/2addr v9, v4
iput v9, p4, Landroid/graphics/Rect;->bottom:I
:cond_62
invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v5
iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v9, 0x0
iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v9, 0x0
invoke-static {p0, v5, v9, v2}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_6f
.catchall {:try_start_6 .. :try_end_6f} :catchall_8b
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_6f} :catch_82
move-result-object v9
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:goto_76
return-object v9
:try_start_77
:cond_77
iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-float v9, v9
div-float/2addr v9, v7
float-to-double v9, v9
invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D
:try_end_7f
.catchall {:try_start_77 .. :try_end_7f} :catchall_8b
.catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_82
move-result-wide v9
double-to-int v4, v9
goto :goto_4c
:catch_82
move-exception v3
const/4 v9, 0x0
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_76
:catchall_8b
move-exception v9
invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v9
.end method
.method private static resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 16
if-nez p1, :cond_4
const/4 p1, 0x0
:cond_3
:goto_3
return-object p1
:cond_4
iget-object v1, p1, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I
move-result v9
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v11
if-le v11, v9, :cond_3
new-instance v6, Landroid/graphics/Matrix;
invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, v9
int-to-float v2, v11
div-float v10, v0, v2
invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v7, 0x1
move-object v0, p0
invoke-static/range {v0 .. v7}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v8
if-eqz v8, :cond_38
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
new-instance p1, Lco/vine/android/util/image/ImageUtils$BitmapInfo;
float-to-int v0, v10
invoke-direct {p1, v8, v0, v4, v5}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
goto :goto_3
:cond_38
const/4 p1, 0x0
goto :goto_3
.end method
.method public static resizeBitmap(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 5
invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
move-result-object v0
invoke-static {p0, v0, p2, p3}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
move-result-object v0
return-object v0
.end method
.method public static resizeBitmap(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 5
invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
move-result-object v0
invoke-static {p0, v0, p2, p3}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
move-result-object v0
return-object v0
.end method
.method public static resizeIfNeeded(Landroid/content/Context;Landroid/net/Uri;IJLandroid/graphics/Rect;)Landroid/net/Uri;
.registers 12
const/4 v2, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v2
:cond_4
mul-int/lit16 v4, p2, 0xfa
int-to-long v0, v4
invoke-static {p0, p1}, Lco/vine/android/util/Util;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)F
move-result v4
int-to-float v5, p2
cmpl-float v4, v4, v5
if-lez v4, :cond_20
invoke-static {p0, p1, v0, v1, p5}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
move-result-object v3
if-eqz v3, :cond_3
invoke-static {p0, v3, p3, p4}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;
move-result-object v2
if-eqz v2, :cond_3
invoke-static {p1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z
goto :goto_3
:cond_20
move-object v2, p1
goto :goto_3
.end method
.method public static roundBitmapCorners(Landroid/content/Context;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
.registers 15
sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p0, p2, p3, v6}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
new-instance v3, Landroid/graphics/Paint;
const/4 v6, 0x3
invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V
new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;
const/16 v6, 0x8
new-array v6, v6, [F
const/4 v7, 0x0
aput p4, v6, v7
const/4 v7, 0x1
aput p4, v6, v7
const/4 v7, 0x2
aput p4, v6, v7
const/4 v7, 0x3
aput p4, v6, v7
const/4 v7, 0x4
aput p4, v6, v7
const/4 v7, 0x5
aput p4, v6, v7
const/4 v7, 0x6
aput p4, v6, v7
const/4 v7, 0x7
aput p4, v6, v7
const/4 v7, 0x0
const/4 v8, 0x0
invoke-direct {v4, v6, v7, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V
int-to-float v6, p2
int-to-float v7, p3
invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V
invoke-virtual {v4, v1, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
sget-object v6, Lco/vine/android/util/image/ImageUtils;->sSrcXferMode:Landroid/graphics/PorterDuffXfermode;
invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
if-ne v6, p2, :cond_51
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
if-eq v6, p3, :cond_6b
:cond_51
new-instance v5, Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v8
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v9
invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v2, Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-direct {v2, v6, v7, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-virtual {v1, p1, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_9
:cond_6b
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v1, p1, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto :goto_9
.end method
.method public static safeDecode(Landroid/content/Context;Landroid/net/Uri;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 5
const/4 v0, 0x0
invoke-static {p0, p1, p2, p3, v0}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
move-result-object v0
return-object v0
.end method
.method public static safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 21
const/4 v9, 0x0
const/4 v8, 0x0
:try_start_2
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
:try_end_5
.catchall {:try_start_2 .. :try_end_5} :catchall_82
.catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_79
.catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_5} :catch_79
move-result-object v10
if-eqz v10, :cond_a
if-nez p1, :cond_12
:cond_a
const/4 v13, 0x0
invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:goto_11
return-object v13
:cond_12
:try_start_12
move-object/from16 v0, p1
invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v9
new-instance v6, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v13, 0x1
iput-boolean v13, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v13, 0x0
move-object/from16 v0, p0
invoke-static {v0, v9, v13, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
move/from16 v0, p2
move/from16 v1, p3
move/from16 v2, p4
invoke-static {v6, v0, v1, v2}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V
move-object/from16 v0, p1
invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v8
const/4 v13, 0x0
move-object/from16 v0, p0
invoke-static {v0, v8, v13, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_3f
.catchall {:try_start_12 .. :try_end_3f} :catchall_82
.catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3f} :catch_79
.catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_3f} :catch_79
move-result-object v5
if-nez v5, :cond_4a
const/4 v13, 0x0
invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_11
:try_start_4a
:cond_4a
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-static {v0, v1, v5}, Lco/vine/android/util/image/ImageUtils;->adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v11
if-nez v11, :cond_63
move-object v11, v5
:goto_55
:cond_55
new-instance v13, Lco/vine/android/util/image/ImageUtils$BitmapInfo;
iget v14, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-direct {v13, v11, v14, v4, v3}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
:try_end_5c
.catchall {:try_start_4a .. :try_end_5c} :catchall_82
.catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_5c} :catch_79
.catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_5c} :catch_79
invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_11
:try_start_63
:cond_63
invoke-static {v4, v3}, Lco/vine/android/util/image/ImageUtils;->isPortrait(II)Z
move-result v13
invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I
move-result v14
invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I
move-result v15
invoke-static {v14, v15}, Lco/vine/android/util/image/ImageUtils;->isPortrait(II)Z
:try_end_72
.catchall {:try_start_63 .. :try_end_72} :catchall_82
.catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_72} :catch_79
.catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_72} :catch_79
move-result v14
if-eq v13, v14, :cond_55
move v12, v3
move v3, v4
move v4, v12
goto :goto_55
:catch_79
move-exception v7
const/4 v13, 0x0
invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_11
:catchall_82
move-exception v13
invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v13
.end method
.method public static safeDecode(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 21
invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getTempFile(Landroid/content/Context;)Ljava/io/File;
move-result-object v6
const/4 v13, 0x0
:try_start_5
new-instance v14, Ljava/io/FileOutputStream;
invoke-direct {v14, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_77
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_6e
const/16 v15, 0x1000
:try_start_c
move-object/from16 v0, p1
invoke-static {v0, v14, v15}, Lco/vine/android/util/Util;->readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_c1
.catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_c4
move-result v3
if-nez v3, :cond_1d
const/4 v15, 0x0
:try_start_15
invoke-static {v14}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:try_end_18
.catchall {:try_start_15 .. :try_end_18} :catchall_a9
invoke-virtual {v6}, Ljava/io/File;->delete()Z
move-object v13, v14
:goto_1c
return-object v15
:cond_1d
:try_start_1d
invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_c1
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_c4
:try_start_20
invoke-static {v14}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:try_end_23
.catchall {:try_start_20 .. :try_end_23} :catchall_a9
const/4 v9, 0x0
const/4 v7, 0x0
:try_start_25
new-instance v10, Ljava/io/BufferedInputStream;
new-instance v15, Ljava/io/FileInputStream;
invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v10, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_2f
:try_end_2f
.catchall {:try_start_25 .. :try_end_2f} :catchall_a1
.catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_8d
.catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_2f} :catch_9a
new-instance v4, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v15, 0x1
iput-boolean v15, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v15, 0x0
invoke-static {v10, v15, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
new-instance v8, Ljava/io/BufferedInputStream;
new-instance v15, Ljava/io/FileInputStream;
invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v8, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_45
:try_end_45
.catchall {:try_start_2f .. :try_end_45} :catchall_ac
.catch Ljava/io/IOException; {:try_start_2f .. :try_end_45} :catch_ba
.catch Ljava/lang/OutOfMemoryError; {:try_start_2f .. :try_end_45} :catch_b3
iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
const/4 v15, 0x0
move/from16 v0, p2
move/from16 v1, p3
invoke-static {v4, v0, v1, v15}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V
const/4 v15, 0x0
invoke-static {v8, v15, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_81
new-instance v15, Lco/vine/android/util/image/ImageUtils$BitmapInfo;
iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
move/from16 v16, v0
move/from16 v0, v16
invoke-direct {v15, v2, v0, v12, v11}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
:try_end_63
.catchall {:try_start_45 .. :try_end_63} :catchall_af
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_63} :catch_bd
.catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_63} :catch_b6
:try_start_63
invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:try_end_69
.catchall {:try_start_63 .. :try_end_69} :catchall_a9
invoke-virtual {v6}, Ljava/io/File;->delete()Z
move-object v13, v14
goto :goto_1c
:catch_6e
move-exception v5
:goto_6f
const/4 v15, 0x0
:try_start_70
invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:try_end_73
.catchall {:try_start_70 .. :try_end_73} :catchall_7c
invoke-virtual {v6}, Ljava/io/File;->delete()Z
goto :goto_1c
:catchall_77
move-exception v15
:goto_78
:try_start_78
invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v15
:try_end_7c
.catchall {:try_start_78 .. :try_end_7c} :catchall_7c
:catchall_7c
move-exception v15
:goto_7d
invoke-virtual {v6}, Ljava/io/File;->delete()Z
throw v15
:cond_81
const/4 v15, 0x0
:try_start_82
invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:try_end_88
.catchall {:try_start_82 .. :try_end_88} :catchall_a9
invoke-virtual {v6}, Ljava/io/File;->delete()Z
move-object v13, v14
goto :goto_1c
:catch_8d
move-exception v5
:goto_8e
const/4 v15, 0x0
:try_start_8f
invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
:try_end_95
.catchall {:try_start_8f .. :try_end_95} :catchall_a9
invoke-virtual {v6}, Ljava/io/File;->delete()Z
move-object v13, v14
goto :goto_1c
:catch_9a
move-exception v5
:goto_9b
:try_start_9b
new-instance v15, Lco/vine/android/util/image/ImageUtils$ImageMemoryException;
invoke-direct {v15, v5}, Lco/vine/android/util/image/ImageUtils$ImageMemoryException;-><init>(Ljava/lang/OutOfMemoryError;)V
throw v15
:try_end_a1
.catchall {:try_start_9b .. :try_end_a1} :catchall_a1
:catchall_a1
move-exception v15
:try_start_a2
:goto_a2
invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v15
:try_end_a9
.catchall {:try_start_a2 .. :try_end_a9} :catchall_a9
:catchall_a9
move-exception v15
move-object v13, v14
goto :goto_7d
:catchall_ac
move-exception v15
move-object v9, v10
goto :goto_a2
:catchall_af
move-exception v15
move-object v7, v8
move-object v9, v10
goto :goto_a2
:catch_b3
move-exception v5
move-object v9, v10
goto :goto_9b
:catch_b6
move-exception v5
move-object v7, v8
move-object v9, v10
goto :goto_9b
:catch_ba
move-exception v5
move-object v9, v10
goto :goto_8e
:catch_bd
move-exception v5
move-object v7, v8
move-object v9, v10
goto :goto_8e
:catchall_c1
move-exception v15
move-object v13, v14
goto :goto_78
:catch_c4
move-exception v5
move-object v13, v14
goto :goto_6f
.end method
.method public static safeDecode(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.registers 11
const/4 v5, 0x0
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v4, 0x1
iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
array-length v4, p1
invoke-static {p0, p1, v5, v4, v1}, Lco/vine/android/util/image/ImageUtils;->decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-static {v1, p2, p3, v5}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V
array-length v4, p1
invoke-static {p0, p1, v5, v4, v1}, Lco/vine/android/util/image/ImageUtils;->decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
move-result-object v0
if-eqz v0, :cond_25
new-instance v4, Lco/vine/android/util/image/ImageUtils$BitmapInfo;
iget-object v5, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;
iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-direct {v4, v5, v6, v3, v2}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
:goto_24
return-object v4
:cond_25
const/4 v4, 0x0
goto :goto_24
.end method
.method public static scaleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
.registers 13
const/high16 v7, 0x3f80
const/4 v1, 0x0
const/4 v5, 0x0
float-to-int v2, p2
add-int/2addr v2, p4
float-to-int v3, p3
add-int/2addr v3, p4
sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p0, v2, v3, v4}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v6
if-nez v6, :cond_12
const/4 v6, 0x0
:goto_11
return-object v6
:cond_12
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
if-lez p4, :cond_54
const/4 v2, -0x1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
new-instance v2, Landroid/graphics/Rect;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v3, Landroid/graphics/Rect;
float-to-int v4, p2
add-int/lit8 v4, v4, 0x1
float-to-int v5, p3
invoke-direct {v3, p4, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
sget-object v4, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
int-to-float v2, p4
add-float/2addr v2, p2
sub-float v3, v2, v7
int-to-float v2, p4
add-float/2addr v2, p3
sub-float v4, v2, v7
sget-object v5, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
add-int/lit8 v1, p4, -0x1
int-to-float v1, v1
add-int/lit8 v2, p4, -0x1
int-to-float v2, v2
sget-object v5, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
goto :goto_11
:cond_54
new-instance v1, Landroid/graphics/Rect;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v2, Landroid/graphics/Rect;
float-to-int v3, p2
add-int/lit8 v3, v3, 0x1
float-to-int v4, p3
invoke-direct {v2, p4, p4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
sget-object v3, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto :goto_11
.end method
.method public static setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V
.registers 12
const/4 v7, 0x1
iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
const/4 v3, 0x1
invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I
move-result v4
invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I
move-result v2
if-eqz p3, :cond_1a
const/4 v1, 0x1
:goto_11
div-int v6, v4, v1
if-lt v6, v2, :cond_1c
div-int/lit8 v4, v4, 0x2
mul-int/lit8 v3, v3, 0x2
goto :goto_11
:cond_1a
const/4 v1, 0x2
goto :goto_11
:cond_1c
const/4 v6, 0x0
iput-boolean v6, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iput-boolean v7, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z
iput-boolean v7, p0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z
iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
return-void
.end method
.method public static writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;
.registers 11
const/4 v4, 0x0
const/4 v2, 0x0
const/4 v5, 0x1
invoke-static {p0, v5, p2, p3}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_20
:try_start_9
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_start_e
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_2b
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_21
.catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_e} :catch_26
sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v6, 0x55
invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
:try_end_1b
.catchall {:try_start_e .. :try_end_1b} :catchall_30
.catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_36
.catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_1b} :catch_33
move-result-object v4
invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
move-object v2, v3
:goto_20
:cond_20
return-object v4
:catch_21
move-exception v0
:goto_22
invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_20
:catch_26
move-exception v0
:goto_27
invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
goto :goto_20
:catchall_2b
move-exception v4
:goto_2c
invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
throw v4
:catchall_30
move-exception v4
move-object v2, v3
goto :goto_2c
:catch_33
move-exception v0
move-object v2, v3
goto :goto_27
:catch_36
move-exception v0
move-object v2, v3
goto :goto_22
.end method