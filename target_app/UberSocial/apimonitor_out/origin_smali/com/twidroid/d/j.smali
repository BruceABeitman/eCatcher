.class public Lcom/twidroid/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 16

    invoke-static {p0, p1}, Lcom/twidroid/net/a/b/b;->b(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_9
    const-string v1, "temp_image"

    const-string v3, ".png"

    invoke-static {v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-static {v0, p3}, Lcom/twidroid/net/a/b/b;->a(Ljava/io/File;I)I

    move-result v1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v0, Lcom/b/a/a/a/a/n;

    invoke-direct {v0, v9}, Lcom/b/a/a/a/a/n;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p2}, Lcom/b/a/a/a/a/f;->a(Lcom/b/a/a/a/a/n;I)Lcom/b/a/a/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/a/n;->b()Landroid/graphics/Bitmap;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_30} :catch_a9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_30} :catch_c1

    move-result-object v0

    const/4 v1, 0x0

    :try_start_32
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_93

    if-eqz v0, :cond_59

    if-eqz v2, :cond_59

    :try_start_3b
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v2

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_58

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_58
    move-object v0, v1

    :cond_59
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_60
    .catchall {:try_start_3b .. :try_end_60} :catchall_d2
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_60} :catch_d4

    if-eqz v7, :cond_65

    :try_start_62
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_65} :catch_c1

    :cond_65
    :goto_65
    if-eqz v0, :cond_70

    :try_start_67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_70
    if-eqz v9, :cond_7b

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_91} :catch_a9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_67 .. :try_end_91} :catch_c1

    move-result-object v0

    :goto_92
    return-object v0

    :catch_93
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_97
    if-eqz v0, :cond_d8

    :try_start_99
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_99 .. :try_end_9c} :catch_c1

    move-object v0, v1

    goto :goto_65

    :catch_9e
    move-exception v0

    move-object v0, v1

    goto :goto_65

    :catchall_a1
    move-exception v0

    move-object v7, v1

    :goto_a3
    if-eqz v7, :cond_a8

    :try_start_a5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a5 .. :try_end_a8} :catch_c1

    :cond_a8
    :goto_a8
    :try_start_a8
    throw v0
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_a9} :catch_a9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a8 .. :try_end_a9} :catch_c1

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    :catch_c1
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    if-eqz p4, :cond_ad

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/twidroid/d/j;->a(Landroid/app/Activity;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    :catch_ce
    move-exception v1

    goto :goto_65

    :catch_d0
    move-exception v1

    goto :goto_a8

    :catchall_d2
    move-exception v0

    goto :goto_a3

    :catch_d4
    move-exception v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_97

    :cond_d8
    move-object v0, v1

    goto :goto_65
.end method
