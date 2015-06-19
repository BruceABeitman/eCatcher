.class public final Lcom/instagram/creation/base/d;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static a:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/instagram/creation/base/d;->a:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public static a(I)I
    .registers 6

    const v4, 0x812f

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v3

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v0, v3

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_44

    move-result-object v0

    :goto_1a
    const-string v2, ".pkm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(Ljava/io/InputStream;)I

    move-result v1

    :goto_26
    if-eqz v0, :cond_2b

    :try_start_28
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_5c

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filters/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_1a

    :catch_44
    move-exception v0

    const-string v2, "GLHelper"

    const-string v3, "Failed to open input stream"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1a

    :cond_4e
    sget-object v2, Lcom/instagram/creation/base/d;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/base/d;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_26

    :catch_5c
    move-exception v0

    const-string v2, "GLHelper"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .registers 12

    const v10, 0x812f

    const/4 v1, 0x1

    const v9, 0x46180400

    const/16 v8, 0xde1

    const/4 v6, 0x0

    if-nez p0, :cond_e

    move v0, v6

    :goto_d
    return v0

    :cond_e
    new-array v0, v1, [I

    invoke-static {v1, v0, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v7, v0, v6

    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    :try_start_1b
    invoke-static {p0}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-static {p0}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_28} :catch_43

    const/16 v0, 0x2801

    invoke-static {v8, v0, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v8, v0, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-static {v8, v0, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v8, v0, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "makeBitmapTexture"

    invoke-static {v0}, Lcom/instagram/creation/base/d;->a(Ljava/lang/String;)V

    move v0, v7

    goto :goto_d

    :catch_43
    move-exception v0

    move v0, v6

    goto :goto_d
.end method

.method private static a(Ljava/io/InputStream;)I
    .registers 10

    const v8, 0x812f

    const/4 v3, 0x1

    const v7, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    new-array v2, v3, [I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v6, v2, v1

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :try_start_14
    invoke-static {p0}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_36

    move-result-object v5

    const/16 v3, 0x1907

    const v4, 0x8363

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    const/16 v1, 0x2801

    invoke-static {v0, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v0, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-static {v0, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v0, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v6

    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!!!!!>>>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .registers 6

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1b

    const-string v1, "GLHelper"

    const-string v2, "GL error 0x%x after %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v1, v2, v3}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1b
    return-void
.end method
