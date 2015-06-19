.class public Lcom/instagram/filterkit/d/b;
.super Ljava/lang/Object;
.source "GlHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/filterkit/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/instagram/filterkit/d/b;

    sput-object v0, Lcom/instagram/filterkit/d/b;->a:Ljava/lang/Class;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/instagram/filterkit/d/b;->b:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Lcom/instagram/filterkit/e/a;
    .registers 8

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->b(I)I

    move-result v6

    const/16 v3, 0x1907

    const v4, 0x8363

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    const-string v0, "makeETC1Texture"

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Lcom/instagram/filterkit/d/d;

    invoke-virtual {v5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v2

    invoke-direct {v0, v6, v1, v2}, Lcom/instagram/filterkit/d/d;-><init>(III)V

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static a(Ljava/nio/Buffer;)Lcom/instagram/filterkit/e/a;
    .registers 11

    const/16 v2, 0x1909

    const/16 v0, 0xde1

    const/16 v3, 0x100

    const/4 v4, 0x2

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->b(I)I

    move-result v9

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const-string v0, "loadTexture"

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/instagram/filterkit/d/d;

    invoke-direct {v0, v9, v3, v4}, Lcom/instagram/filterkit/d/d;-><init>(III)V

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static a(I)V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput p0, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v0, Lcom/instagram/filterkit/d/b;->a:Ljava/lang/Class;

    const-string v4, "GL error 0x%x after %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    aput-object p0, v5, v2

    invoke-static {v0, v4, v5}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_3

    :cond_1d
    return v0
.end method

.method public static b(I)I
    .registers 7

    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    new-array v0, v1, [I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v0, v3

    return v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/instagram/filterkit/e/a;
    .registers 6

    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/instagram/filterkit/d/b;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-static {v4}, Lcom/instagram/filterkit/d/b;->b(I)I

    move-result v2

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const-string v3, "makeBitmapTexture"

    invoke-static {v3}, Lcom/instagram/filterkit/d/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v0, Lcom/instagram/filterkit/d/d;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/instagram/filterkit/d/d;-><init>(III)V

    goto :goto_c
.end method

.method public static c(I)V
    .registers 1

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :try_start_5
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_56

    move-result-object v2

    :goto_1e
    :try_start_1e
    const-string v3, ".pkm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {v2}, Lcom/instagram/filterkit/d/b;->a(Ljava/io/InputStream;)Lcom/instagram/filterkit/e/a;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_80
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_29} :catch_82

    move-result-object v0

    :goto_2a
    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_4d

    :cond_2f
    :goto_2f
    return-object v0

    :cond_30
    :try_start_30
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filters/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_46} :catch_56

    move-result-object v2

    goto :goto_1e

    :cond_48
    :try_start_48
    invoke-static {v2}, Lcom/instagram/filterkit/d/b;->b(Ljava/io/InputStream;)Lcom/instagram/filterkit/e/a;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_80
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_82

    move-result-object v0

    goto :goto_2a

    :catch_4d
    move-exception v1

    sget-object v2, Lcom/instagram/filterkit/d/b;->a:Ljava/lang/Class;

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :catch_56
    move-exception v1

    move-object v2, v0

    :goto_58
    :try_start_58
    sget-object v3, Lcom/instagram/filterkit/d/b;->a:Ljava/lang/Class;

    const-string v4, "Failed to open input stream"

    invoke-static {v3, v4, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_80

    if-eqz v2, :cond_2f

    :try_start_61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_2f

    :catch_65
    move-exception v1

    sget-object v2, Lcom/instagram/filterkit/d/b;->a:Ljava/lang/Class;

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :catchall_6e
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_71
    if-eqz v2, :cond_76

    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    :cond_76
    :goto_76
    throw v0

    :catch_77
    move-exception v1

    sget-object v2, Lcom/instagram/filterkit/d/b;->a:Ljava/lang/Class;

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    :catchall_80
    move-exception v0

    goto :goto_71

    :catch_82
    move-exception v1

    goto :goto_58
.end method
