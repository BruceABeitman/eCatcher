.class public final Lcom/bbm/util/b/h;
.super Ljava/lang/Object;
.source "ImageUtil.java"
.method public static a(Landroid/content/Context;)I
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
const/16 v1, 0x800
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method public static a(Landroid/graphics/Point;Landroid/graphics/Point;)I
.registers 11
const/4 v0, 0x1
iget v1, p0, Landroid/graphics/Point;->y:I
iget v2, p0, Landroid/graphics/Point;->x:I
iget v3, p1, Landroid/graphics/Point;->x:I
if-lez v3, :cond_43
iget v3, p1, Landroid/graphics/Point;->y:I
if-lez v3, :cond_43
iget v3, p1, Landroid/graphics/Point;->y:I
if-gt v1, v3, :cond_15
iget v3, p1, Landroid/graphics/Point;->x:I
if-le v2, v3, :cond_43
:cond_15
iget v3, p1, Landroid/graphics/Point;->y:I
div-int v3, v1, v3
iget v4, p1, Landroid/graphics/Point;->x:I
div-int v4, v2, v4
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v0
mul-int/2addr v1, v2
iget v2, p1, Landroid/graphics/Point;->x:I
iget v3, p1, Landroid/graphics/Point;->y:I
mul-int/2addr v2, v3
int-to-float v2, v2
const/high16 v3, 0x3fc0
mul-float/2addr v2, v3
float-to-int v2, v2
if-le v1, v2, :cond_43
:goto_32
int-to-double v3, v1
int-to-double v5, v0
const-wide/high16 v7, 0x4000
invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D
move-result-wide v5
div-double/2addr v3, v5
int-to-double v5, v2
cmpl-double v3, v3, v5
if-lez v3, :cond_43
add-int/lit8 v0, v0, 0x1
goto :goto_32
:cond_43
return v0
.end method
.method public static a(Ljava/lang/String;I)I
.registers 7
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-static {p0}, Lcom/bbm/util/b/h;->c(Ljava/lang/String;)I
move-result v1
const/16 v2, 0x5a
if-eq v1, v2, :cond_17
const/16 v2, 0x10e
if-ne v1, v2, :cond_1f
:cond_17
iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
:cond_1f
int-to-double v1, p1
iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-double v3, v3
div-double/2addr v1, v3
iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-double v3, v0
mul-double v0, v3, v1
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v0, v0
return v0
.end method
.method public static a(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
.registers 9
const/4 v4, 0x0
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v1
invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
new-instance v1, Landroid/graphics/Point;
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2, p2, p3}, Landroid/graphics/Point;-><init>(II)V
invoke-static {v1, v2}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Point;Landroid/graphics/Point;)I
move-result v1
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-static {}, Lcom/bbm/util/fb;->b()Z
move-result v1
if-eqz v1, :cond_31
invoke-static {v0, v4}, Lcom/bbm/util/b/h;->a(Landroid/graphics/BitmapFactory$Options;Lcom/bbm/util/b/d;)V
:cond_31
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v1
invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 4
const/4 v2, 0x0
if-nez p0, :cond_c
const-string v0, "ImageUtils.cropSquare. Bitmap is null return"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 p0, 0x0
:goto_b
:cond_b
return-object p0
:cond_c
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
if-le v0, v1, :cond_29
sub-int/2addr v0, v1
div-int/lit8 v0, v0, 0x2
invoke-static {p0, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
const-string v1, "ImageUtils.cropSquare. Cropped height"
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object p0, v0
goto :goto_b
:cond_29
if-le v1, v0, :cond_b
sub-int/2addr v1, v0
div-int/lit8 v1, v1, 0x2
invoke-static {p0, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
const-string v1, "ImageUtils.cropSquare. Cropped width"
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object p0, v0
goto :goto_b
.end method
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
.registers 9
const/4 v1, 0x0
const/4 v7, 0x0
if-nez p0, :cond_5
:goto_4
return-object v1
:cond_5
instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_10
check-cast p0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_4
:cond_10
:try_start_10
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v2, Landroid/graphics/Canvas;
invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I
move-result v5
invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I
move-result v6
invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:goto_33
:try_end_33
.catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_33} :catch_35
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_33} :catch_3f
move-object v1, v0
goto :goto_4
:catch_35
move-exception v0
const-string v2, "getBitmapFromDrawable ran out of memory"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v1
goto :goto_33
:catch_3f
move-exception v0
const-string v2, "getBitmapFromDrawable got exception"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v1
goto :goto_33
.end method
.method private static a(Lcom/bbm/ui/cl;)Landroid/graphics/Bitmap;
.registers 5
const/4 v3, 0x0
:try_start_1
invoke-virtual {p0}, Lcom/bbm/ui/cl;->getIntrinsicWidth()I
move-result v0
invoke-virtual {p0}, Lcom/bbm/ui/cl;->getIntrinsicHeight()I
move-result v1
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {p0}, Lcom/bbm/ui/cl;->b()V
invoke-virtual {p0, v1}, Lcom/bbm/ui/cl;->draw(Landroid/graphics/Canvas;)V
:try_end_1a
.catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1a} :catch_1b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_25
:goto_1a
return-object v0
:catch_1b
move-exception v0
const-string v1, "getBitmapFromMovie ran out of memory."
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_23
const/4 v0, 0x0
goto :goto_1a
:catch_25
move-exception v0
const-string v1, "getBitmapFromMovie got exception."
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_23
.end method
.method public static a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;)Landroid/graphics/Bitmap;
.registers 5
const/4 v0, 0x1
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-static {p0, p1, p2, v0, v1}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;ZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;ZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;
.registers 12
iget v1, p1, Landroid/graphics/Point;->x:I
iget v2, p1, Landroid/graphics/Point;->y:I
const/4 v5, 0x0
move-object v0, p0
move-object v3, p2
move v4, p3
move-object v6, p4
invoke-static/range {v0 .. v6}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;IILcom/bbm/util/b/d;ZZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {p0}, Lcom/bbm/util/b/h;->b(Ljava/lang/String;)Landroid/graphics/Matrix;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z
move-result v1
if-nez v1, :cond_22
if-eqz v0, :cond_22
invoke-static {p0}, Lcom/bbm/util/b/h;->c(Ljava/lang/String;)I
move-result v1
int-to-float v1, v1
invoke-static {v0, p1, v1}, Lcom/cropimage/n;->a(Landroid/graphics/Bitmap;Landroid/graphics/Point;F)Landroid/graphics/Bitmap;
move-result-object v0
:cond_22
return-object v0
.end method
.method public static a(Landroid/app/Activity;)Landroid/graphics/Point;
.registers 4
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->orientation:I
const/4 v2, 0x1
if-ne v1, v2, :cond_27
iget v1, v0, Landroid/graphics/Point;->x:I
iget v0, v0, Landroid/graphics/Point;->y:I
:goto_21
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V
return-object v2
:cond_27
iget v1, v0, Landroid/graphics/Point;->y:I
iget v0, v0, Landroid/graphics/Point;->x:I
goto :goto_21
.end method
.method public static a(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/Drawable;
.registers 5
:try_start_0
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
const/4 v1, 0x0
array-length v2, p1
invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
move-result-object v1
invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
:goto_b
:try_end_b
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_b
.end method
.method public static a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/bbm/d/fd;->a()Lcom/bbm/ui/cl;
move-result-object v1
if-eqz v1, :cond_14
invoke-virtual {p0}, Lcom/bbm/d/fd;->a()Lcom/bbm/ui/cl;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Lcom/bbm/ui/cl;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_f
:cond_f
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
return-object v0
:cond_14
invoke-virtual {p0}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v1
if-eqz v1, :cond_f
invoke-virtual {p0}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_f
.end method
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.registers 9
const/4 v4, 0x0
const/4 v0, 0x1
new-array v3, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "_data"
aput-object v1, v3, v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
if-ne v0, v1, :cond_34
new-instance v0, Landroid/content/CursorLoader;
move-object v1, p0
move-object v2, p1
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
move-result-object v0
:goto_24
if-eqz v0, :cond_40
const-string v1, "_data"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_33
return-object v0
:cond_34
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
move-object v2, p1
move-object v5, v4
move-object v6, v4
invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
goto :goto_24
:cond_40
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
goto :goto_33
.end method
.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
.registers 6
invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
if-eqz p1, :cond_2c
const-string v0, ".gif"
:goto_8
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2c
const-string v0, ".jpg"
goto :goto_8
.end method
.method public static a(Landroid/graphics/BitmapFactory$Options;Lcom/bbm/util/b/d;)V
.registers 10
const/4 v4, 0x1
iput-boolean v4, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
if-eqz p1, :cond_5d
const/4 v2, 0x0
iget-object v0, p1, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;
if-eqz v0, :cond_66
iget-object v0, p1, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z
move-result v0
if-nez v0, :cond_66
new-instance v0, Ljava/util/HashSet;
iget-object v1, p1, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_1d
:cond_1d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/SoftReference;
invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/graphics/Bitmap;
if-eqz v1, :cond_60
invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z
move-result v3
if-eqz v3, :cond_60
iget v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-eqz v3, :cond_5e
iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v6, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
div-int/2addr v3, v6
iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget v7, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
div-int/2addr v6, v7
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
if-ne v7, v3, :cond_5e
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
if-ne v3, v6, :cond_5e
move v3, v4
:goto_52
if-eqz v3, :cond_1d
iget-object v2, p1, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;
invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
:goto_59
if-eqz v1, :cond_5d
iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:cond_5d
return-void
:cond_5e
const/4 v3, 0x0
goto :goto_52
:cond_60
iget-object v1, p1, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;
invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
goto :goto_1d
:cond_66
move-object v1, v2
goto :goto_59
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_4
if-nez p1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-static {p2}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
:try_start_d
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-static {p0, v1}, Lcom/bbm/util/bj;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_14
.catch Ljava/nio/channels/NonReadableChannelException; {:try_start_d .. :try_end_14} :catch_22
.catch Ljava/nio/channels/NonWritableChannelException; {:try_start_d .. :try_end_14} :catch_31
.catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_40
invoke-static {p1, v0}, Lcom/bbm/util/b/h;->b(Landroid/content/Context;Landroid/net/Uri;)V
const v0, 0x7f0e063d
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_4
:catch_22
move-exception v0
const v1, 0x7f0e063b
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_4
:catch_31
move-exception v0
const v1, 0x7f0e063c
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_4
:catch_40
move-exception v0
const v1, 0x7f0e063a
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_4
.end method
.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
.registers 5
const-wide/32 v0, 0x8000
invoke-static {p0, p1, p2, v0, v1}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ZJ)Z
move-result v0
return v0
.end method
.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;ZJ)Z
.registers 19
const/4 v6, 0x1
if-nez p0, :cond_5
const/4 v0, 0x0
:goto_4
return v0
:cond_5
if-eqz p2, :cond_71
invoke-static {p0}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_b
new-instance v5, Ljava/io/File;
invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {v5}, Ljava/io/File;->delete()Z
:cond_19
invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
const/4 v4, 0x1
invoke-virtual {v5}, Ljava/io/File;->length()J
move-result-wide v1
const/4 v3, 0x1
move-wide v12, v1
move-object v2, v5
move v1, v6
move v6, v4
move v5, v3
move-wide v3, v12
:goto_37
:cond_37
cmp-long v7, v3, p3
if-lez v7, :cond_134
if-eqz v6, :cond_134
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v7
if-eqz v7, :cond_46
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_46
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
new-instance v8, Ljava/io/FileOutputStream;
invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v7, 0x5a
:goto_50
const/16 v9, 0x32
if-lt v7, v9, :cond_89
sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
invoke-virtual {v0, v9, v7, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
move-result v9
if-eqz v9, :cond_89
invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
new-instance v9, Ljava/io/File;
invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->length()J
move-result-wide v10
cmp-long v2, v10, p3
if-gez v2, :cond_73
move v0, v1
goto :goto_4
:cond_71
move-object v0, p0
goto :goto_b
:cond_73
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_7c
invoke-virtual {v9}, Ljava/io/File;->delete()Z
:cond_7c
invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
new-instance v8, Ljava/io/FileOutputStream;
invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
add-int/lit8 v2, v7, -0xa
move v7, v2
move-object v2, v9
goto :goto_50
:cond_89
invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
mul-int/lit8 v8, v5, 0x2
div-int/2addr v7, v8
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v8
mul-int/lit8 v9, v5, 0x2
div-int/2addr v8, v9
if-lez v7, :cond_a1
if-gtz v8, :cond_be
:cond_a1
const-string v1, "Cannot scale down image size further width %d, height %d"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v9
const/4 v7, 0x1
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v1, v6}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v1, 0x0
const/4 v6, 0x0
move v12, v1
move v1, v6
move v6, v12
goto/16 :goto_37
:cond_be
const/4 v2, 0x0
:try_start_bf
invoke-static {p0, v7, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v2
new-instance v7, Ljava/io/File;
invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_d1
invoke-virtual {v7}, Ljava/io/File;->delete()Z
:cond_d1
invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
new-instance v8, Ljava/io/FileOutputStream;
invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v10, 0x64
invoke-virtual {v2, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v7}, Ljava/io/File;->length()J
:try_end_e9
.catch Ljava/lang/OutOfMemoryError; {:try_start_bf .. :try_end_e9} :catch_f2
move-result-wide v2
add-int/lit8 v4, v5, 0x1
move v5, v4
move-wide v12, v2
move-wide v3, v12
move-object v2, v7
goto/16 :goto_37
:catch_f2
move-exception v2
const-string v7, "compress out of memory"
const/4 v8, 0x0
new-array v8, v8, [Ljava/lang/Object;
invoke-static {v2, v7, v8}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v2, Ljava/io/File;
invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v7
if-eqz v7, :cond_109
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_109
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
new-instance v7, Ljava/io/FileOutputStream;
invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_start_111
sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/4 v9, 0x0
invoke-virtual {v0, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v2}, Ljava/io/File;->length()J
:try_end_120
.catch Ljava/lang/OutOfMemoryError; {:try_start_111 .. :try_end_120} :catch_128
move-result-wide v7
cmp-long v7, v7, p3
if-gez v7, :cond_37
const/4 v0, 0x1
goto/16 :goto_4
:catch_128
move-exception v0
const-string v1, "compress out of memory"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, 0x0
goto/16 :goto_4
:cond_134
move v0, v1
goto/16 :goto_4
.end method
.method public static a(Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
:try_start_1
new-instance v1, Landroid/graphics/Point;
const/16 v2, 0x140
const/16 v3, 0x140
invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V
const/4 v2, 0x0
invoke-static {p0, v1, v2}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;)Landroid/graphics/Bitmap;
move-result-object v1
const/4 v2, 0x0
const-wide/32 v3, 0x8000
invoke-static {v1, p0, v2, v3, v4}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ZJ)Z
:try_end_16
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_18
.catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_16} :catch_1d
move-result v0
:goto_17
return v0
:catch_18
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_17
:catch_1d
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_17
.end method
.method public static b(Ljava/lang/String;)Landroid/graphics/Matrix;
.registers 3
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
invoke-static {p0}, Lcom/bbm/util/b/h;->c(Ljava/lang/String;)I
move-result v1
sparse-switch v1, :sswitch_data_20
:goto_c
return-object v0
:sswitch_d
const/high16 v1, 0x42b4
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
goto :goto_c
:sswitch_13
const/high16 v1, 0x4334
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
goto :goto_c
:sswitch_19
const/high16 v1, 0x4387
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
goto :goto_c
nop
:sswitch_data_20
.sparse-switch
0x5a -> :sswitch_d
0xb4 -> :sswitch_13
0x10e -> :sswitch_19
.end sparse-switch
.end method
.method public static b(Landroid/content/Context;Landroid/net/Uri;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public static b(Landroid/graphics/Bitmap;)[B
.registers 6
const/4 v4, 0x0
new-array v0, v4, [B
if-eqz p0, :cond_15
:try_start_5
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_14
.catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_14} :catch_16
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_1f
move-result-object v0
:cond_15
:goto_15
return-object v0
:catch_16
move-exception v1
const-string v2, "bitmapToByteArray couldn\'t get raw data for bitmap out of memory"
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_15
:catch_1f
move-exception v1
const-string v2, "bitmapToByteArray couldn\'t get raw data for bitmap"
new-array v3, v4, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_15
.end method
.method public static c(Ljava/lang/String;)I
.registers 5
const/4 v1, -0x1
:try_start_1
new-instance v0, Landroid/media/ExifInterface;
invoke-static {p0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string v2, "Orientation"
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
:try_end_10
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_15
move-result v0
:goto_11
packed-switch v0, :pswitch_data_26
:pswitch_14
:goto_14
return v0
:catch_15
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move v0, v1
goto :goto_11
:pswitch_1b
const/4 v0, 0x0
goto :goto_14
:pswitch_1d
const/16 v0, 0x5a
goto :goto_14
:pswitch_20
const/16 v0, 0xb4
goto :goto_14
:pswitch_23
const/16 v0, 0x10e
goto :goto_14
:pswitch_data_26
.packed-switch 0x1
:pswitch_1b
:pswitch_14
:pswitch_20
:pswitch_14
:pswitch_14
:pswitch_1d
:pswitch_14
:pswitch_23
.end packed-switch
.end method
.method public static c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "content"
invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
:goto_1a
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "ImageUtils.getMimeType Mime type = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
return-object v0
:cond_30
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v0
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_1a
.end method
.method public static d(Ljava/lang/String;)Ljava/io/File;
.registers 6
const-string v0, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
const-string v0, "no external media available."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_14
new-instance v0, Ljava/io/File;
sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;
invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v1
const-string v2, "BBM"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v2, "yyyyMMdd_HHmmss"
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
const-string v0, "image/gif"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6b
const-string v0, ".gif"
:goto_44
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "IMG_"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
return-object v3
:cond_6b
const-string v0, ".jpg"
goto :goto_44
.end method
.method public static e(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v0
invoke-static {p0}, Lcom/bbm/util/bj;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method