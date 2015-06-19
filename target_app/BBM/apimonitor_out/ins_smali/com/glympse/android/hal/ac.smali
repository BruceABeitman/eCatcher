.class  Lcom/glympse/android/hal/ac;
.super Ljava/lang/Object;
.source "GlympseDrawable.java"
.implements Lcom/glympse/android/hal/GDrawablePrivate;
.implements Lcom/glympse/android/ui/GDrawableExt;
.field private bb:[B
.field private bc:Landroid/graphics/drawable/BitmapDrawable;
.field private bd:Z
.field private be:I
.field private bf:I
.field private bg:I
.field private bh:I
.field private bi:I
.field private bj:I
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/ac;->bb:[B
iput-boolean v1, p0, Lcom/glympse/android/hal/ac;->bd:Z
iput v1, p0, Lcom/glympse/android/hal/ac;->be:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bf:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bg:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bh:I
const/16 v0, 0x64
iput v0, p0, Lcom/glympse/android/hal/ac;->bi:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bj:I
iput-object p1, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/ac;->bb:[B
iput-boolean v1, p0, Lcom/glympse/android/hal/ac;->bd:Z
iput v1, p0, Lcom/glympse/android/hal/ac;->be:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bf:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bg:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bh:I
const/16 v0, 0x64
iput v0, p0, Lcom/glympse/android/hal/ac;->bi:I
iput v1, p0, Lcom/glympse/android/hal/ac;->bj:I
iput p2, p0, Lcom/glympse/android/hal/ac;->bj:I
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/glympse/android/hal/ac;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
return-void
.end method
.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 9
const/4 v1, 0x0
if-nez p1, :cond_4
:goto_3
return-object p0
:cond_4
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
move-result-object p0
goto :goto_3
.end method
.method private static a(Landroid/graphics/drawable/BitmapDrawable;III)Landroid/graphics/Bitmap;
.registers 14
const/4 v0, 0x0
const/4 v4, 0x3
const/4 v9, 0x1
if-eqz p0, :cond_9
if-lez p1, :cond_9
if-gtz p2, :cond_a
:goto_9
:cond_9
return-object v0
:cond_a
invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I
move-result v2
invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I
move-result v1
if-eqz p3, :cond_20
if-ne v2, p1, :cond_18
if-eq v1, p2, :cond_20
:cond_18
if-ne v9, p3, :cond_29
if-gt v2, p1, :cond_29
if-gt v1, p2, :cond_29
move p2, v1
move p1, v2
:goto_20
:cond_20
if-ne v2, p1, :cond_60
if-ne v1, p2, :cond_60
invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_9
:cond_29
if-ne v4, p3, :cond_32
if-le v2, p1, :cond_2f
if-gt v1, p2, :cond_32
:cond_2f
move p2, v1
move p1, v2
goto :goto_20
:cond_32
const/4 v3, 0x2
if-eq v3, p3, :cond_37
if-ne v9, p3, :cond_49
:cond_37
int-to-double v3, p1
int-to-double v5, v2
div-double/2addr v3, v5
int-to-double v5, p2
int-to-double v7, v1
div-double/2addr v5, v7
cmpg-double v0, v3, v5
if-gtz v0, :cond_45
int-to-double v5, v1
mul-double/2addr v3, v5
double-to-int p2, v3
goto :goto_20
:cond_45
int-to-double v3, v2
mul-double/2addr v3, v5
double-to-int p1, v3
goto :goto_20
:cond_49
const/4 v3, 0x4
if-eq v3, p3, :cond_4e
if-ne v4, p3, :cond_9
:cond_4e
int-to-double v3, p1
int-to-double v5, v2
div-double/2addr v3, v5
int-to-double v5, p2
int-to-double v7, v1
div-double/2addr v5, v7
cmpl-double v0, v3, v5
if-ltz v0, :cond_5c
int-to-double v5, v1
mul-double/2addr v3, v5
double-to-int p2, v3
goto :goto_20
:cond_5c
int-to-double v3, v2
mul-double/2addr v3, v5
double-to-int p1, v3
goto :goto_20
:cond_60
invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0, p1, p2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_9
.end method
.method private a(Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
const-string v0, "://"
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_15
invoke-direct {p0, p1, p2}, Lcom/glympse/android/hal/ac;->b(Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_7
:cond_15
invoke-static {p1, p2}, Lcom/glympse/android/hal/ac;->c(Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_7
.end method
.method private static a([BZ)Landroid/graphics/drawable/BitmapDrawable;
.registers 6
const/4 v3, 0x0
:try_start_1
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
if-eqz p1, :cond_13
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v1, 0x0
array-length v2, p0
invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-static {v0}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/BitmapFactory$Options;)V
:cond_13
const/4 v1, 0x0
array-length v2, p0
invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1, v0}, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->createInstance(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_20
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_22
move-result-object v0
:goto_21
return-object v0
:catch_22
move-exception v0
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
const/4 v0, 0x0
goto :goto_21
.end method
.method public static a(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;
.registers 4
new-instance v0, Lcom/glympse/android/hal/ac;
invoke-direct {v0, p0, p1}, Lcom/glympse/android/hal/ac;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0}, Lcom/glympse/android/hal/ac;->getImage()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v1
if-nez v1, :cond_c
const/4 v0, 0x0
:cond_c
return-object v0
.end method
.method private static a(Landroid/graphics/BitmapFactory$Options;)V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
int-to-double v0, v0
const-wide/high16 v2, 0x4074
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
double-to-int v1, v0
const/high16 v0, 0x4000
:goto_15
if-le v0, v5, :cond_1e
and-int v2, v1, v0
if-nez v2, :cond_1e
ushr-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_1e
iput-boolean v4, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iput v4, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
:try_start_26
const-class v0, Landroid/graphics/BitmapFactory$Options;
const-string v1, "inPurgeable"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:goto_36
:try_end_36
.catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_36} :catch_37
return-void
:catch_37
move-exception v0
goto :goto_36
.end method
.method private static a(Landroid/graphics/Bitmap;III)[B
.registers 8
const/4 v0, 0x0
if-nez p0, :cond_4
:goto_3
:cond_3
return-object v0
:cond_4
invoke-static {p0, p2}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v2
if-nez p1, :cond_22
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
:goto_c
:try_start_c
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-virtual {v2, v1, p3, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_1b
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1b} :catch_1c
goto :goto_3
:catch_1c
move-exception v1
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_3
:cond_22
const/4 v1, 0x1
if-ne v1, p1, :cond_3
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
goto :goto_c
.end method
.method private static a(Landroid/graphics/drawable/BitmapDrawable;IIIIII)[B
.registers 8
invoke-static {p0, p1, p2, p3}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/drawable/BitmapDrawable;III)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0, p5, p4, p6}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/Bitmap;III)[B
move-result-object v0
return-object v0
.end method
.method private b(Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
.registers 11
const/4 v4, 0x0
const/4 v0, 0x0
:try_start_2
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
if-nez v5, :cond_9
:goto_8
:cond_8
return-object v0
:cond_9
const/4 v1, 0x0
invoke-static {v1}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;
:try_end_d
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_73
move-result-object v6
if-eqz v6, :cond_8
:try_start_10
invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v5, v2}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
:try_end_18
.catchall {:try_start_10 .. :try_end_18} :catchall_6b
.catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_5d
move-result-object v3
if-eqz v3, :cond_bb
:try_start_1b
invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_bb
const-string v1, "_data"
invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_b9
invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_b9
new-instance v1, Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->canRead()Z
:try_end_3b
.catchall {:try_start_1b .. :try_end_3b} :catchall_ae
.catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_3b} :catch_b0
move-result v1
if-eqz v1, :cond_b9
:try_start_3e
:goto_3e
const-string v1, "orientation"
invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_b7
invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I
:try_end_49
.catchall {:try_start_3e .. :try_end_49} :catchall_ae
.catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_49} :catch_b3
move-result v1
:goto_4a
if-eqz v3, :cond_4f
:try_start_4c
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:goto_4f
:cond_4f
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_78
iput v1, p0, Lcom/glympse/android/hal/ac;->bj:I
const/4 v1, 0x1
invoke-static {v2, v1}, Lcom/glympse/android/hal/ac;->c(Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
:try_end_5b
.catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_5b} :catch_73
move-result-object v0
goto :goto_8
:catch_5d
move-exception v1
move-object v2, v0
move-object v3, v0
:goto_60
const/4 v7, 0x0
:try_start_61
invoke-static {v1, v7}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:try_end_64
.catchall {:try_start_61 .. :try_end_64} :catchall_ae
if-eqz v3, :cond_b5
:try_start_66
invoke-interface {v3}, Landroid/database/Cursor;->close()V
move v1, v4
goto :goto_4f
:catchall_6b
move-exception v1
move-object v3, v0
:goto_6d
if-eqz v3, :cond_72
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_72
throw v1
:try_end_73
.catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_73} :catch_73
:catch_73
move-exception v1
invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_8
:try_start_78
:cond_78
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v2, 0x1
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v2
const/4 v3, 0x0
invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
invoke-static {v1}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/BitmapFactory$Options;)V
invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v2
const/4 v3, 0x0
invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v3
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
:try_end_ab
.catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_ab} :catch_73
move-object v0, v1
goto/16 :goto_8
:catchall_ae
move-exception v1
goto :goto_6d
:catch_b0
move-exception v1
move-object v2, v0
goto :goto_60
:catch_b3
move-exception v1
goto :goto_60
:cond_b5
move v1, v4
goto :goto_4f
:cond_b7
move v1, v4
goto :goto_4a
:cond_b9
move-object v2, v0
goto :goto_3e
:cond_bb
move v1, v4
move-object v2, v0
goto :goto_4a
.end method
.method private static c(Ljava/lang/String;Z)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
:try_start_0
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
if-eqz p1, :cond_10
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-static {v0}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/BitmapFactory$Options;)V
:cond_10
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1, v0}, Lcom/glympse/android/hal/Reflection$_BitmapDrawable;->createInstance(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_1b
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d
move-result-object v0
:goto_1c
return-object v0
:catch_1d
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
const/4 v0, 0x0
goto :goto_1c
.end method
.method public clearBuffer()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/ac;->bb:[B
return-void
.end method
.method public compress()Z
.registers 9
const/4 v7, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
if-nez v0, :cond_7
move v0, v7
:goto_6
return v0
:cond_7
invoke-virtual {p0}, Lcom/glympse/android/hal/ac;->clearBuffer()V
:try_start_a
iget-boolean v0, p0, Lcom/glympse/android/hal/ac;->bd:Z
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
iget v1, p0, Lcom/glympse/android/hal/ac;->bf:I
iget v2, p0, Lcom/glympse/android/hal/ac;->bg:I
iget v3, p0, Lcom/glympse/android/hal/ac;->be:I
iget v4, p0, Lcom/glympse/android/hal/ac;->bj:I
iget v5, p0, Lcom/glympse/android/hal/ac;->bh:I
iget v6, p0, Lcom/glympse/android/hal/ac;->bi:I
invoke-static/range {v0 .. v6}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/drawable/BitmapDrawable;IIIIII)[B
move-result-object v0
:goto_20
iput-object v0, p0, Lcom/glympse/android/hal/ac;->bb:[B
const/4 v0, 0x1
goto :goto_6
:cond_24
iget-object v0, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iget v1, p0, Lcom/glympse/android/hal/ac;->bh:I
iget v2, p0, Lcom/glympse/android/hal/ac;->bj:I
iget v3, p0, Lcom/glympse/android/hal/ac;->bi:I
invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/hal/ac;->a(Landroid/graphics/Bitmap;III)[B
:try_end_33
.catch Ljava/lang/Throwable; {:try_start_a .. :try_end_33} :catch_35
move-result-object v0
goto :goto_20
:catch_35
move-exception v0
invoke-static {v0, v7}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
move v0, v7
goto :goto_6
.end method
.method public decompress(Z)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/hal/ac;->bb:[B
if-nez v1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
iget-object v1, p0, Lcom/glympse/android/hal/ac;->bb:[B
iget-boolean v2, p0, Lcom/glympse/android/hal/ac;->bd:Z
invoke-static {v1, v2}, Lcom/glympse/android/hal/ac;->a([BZ)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
if-eqz p1, :cond_15
invoke-virtual {p0}, Lcom/glympse/android/hal/ac;->clearBuffer()V
:cond_15
iget-object v1, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public getBuffer()[B
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/ac;->bb:[B
return-object v0
.end method
.method public getImage()Landroid/graphics/drawable/BitmapDrawable;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/ac;->bc:Landroid/graphics/drawable/BitmapDrawable;
return-object v0
.end method
.method public getLength()I
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/ac;->bb:[B
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/hal/ac;->bb:[B
array-length v0, v0
goto :goto_5
.end method
.method public setBuffer([BIZ)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/hal/ac;->bb:[B
return-void
.end method
.method public setCompression(II)V
.registers 3
iput p1, p0, Lcom/glympse/android/hal/ac;->bh:I
iput p2, p0, Lcom/glympse/android/hal/ac;->bi:I
return-void
.end method
.method public setRotation(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/hal/ac;->bj:I
return-void
.end method
.method public setScale(ZIII)V
.registers 5
iput-boolean p1, p0, Lcom/glympse/android/hal/ac;->bd:Z
iput p2, p0, Lcom/glympse/android/hal/ac;->be:I
iput p3, p0, Lcom/glympse/android/hal/ac;->bf:I
iput p4, p0, Lcom/glympse/android/hal/ac;->bg:I
return-void
.end method