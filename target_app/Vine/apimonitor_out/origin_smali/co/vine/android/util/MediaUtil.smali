.class public Lco/vine/android/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;,
        Lco/vine/android/util/MediaUtil$MediaConnectionClient;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateThumbnails(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Use duration: {}."

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_9d

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    aput-wide p0, v4, v5

    :goto_1a
    invoke-static {p2, v4}, Lco/vine/android/util/MediaUtil;->getVideoFrames(Ljava/lang/String;[J)[Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v4, "Grabbing using MediaUtil took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_66

    array-length v4, v0

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    aget-object v4, v0, v4

    if-nez v4, :cond_41

    :cond_36
    const-string v4, "Mayday, mayday! Failed to get thumbnails, this will fail and crash: {}."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    const/4 v4, 0x0

    aget-object v4, v0, v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p4, :cond_66

    const/4 v4, 0x1

    aget-object v4, v0, v4

    if-eqz v4, :cond_a7

    const/4 v4, 0x1

    aget-object v4, v0, v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_66
    :goto_66
    :try_start_66
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "Retry generating thumbnail."

    invoke-static {v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    invoke-static {p2, v4}, Lco/vine/android/util/MediaUtil;->getVideoFrames(Ljava/lang/String;[J)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b2

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b2

    const/4 v4, 0x0

    aget-object v4, v0, v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v4, "First Thumbnail generated."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_9c} :catch_b8

    :cond_9c
    :goto_9c
    return-void

    :cond_9d
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    goto/16 :goto_1a

    :cond_a7
    new-instance v4, Lco/vine/android/VineLoggingException;

    const-string v5, "FAILED TO GENERATE GHOST IMAGE"

    invoke-direct {v4, v5}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_66

    :cond_b2
    :try_start_b2
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b8} :catch_b8

    :catch_b8
    move-exception v1

    const-string v4, "Failed to generate thumbnail."

    invoke-static {v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    goto :goto_9c
.end method

.method public static getVideoFrames(Ljava/lang/String;[J)[Landroid/graphics/Bitmap;
    .registers 16

    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_5
    invoke-virtual {v9, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    array-length v12, p1

    new-array v8, v12, [Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    move-object v0, p1

    array-length v7, v0

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v7, :cond_58

    aget-wide v10, v0, v6

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_38

    const-wide/16 v12, -0x1

    cmp-long v12, v1, v12

    if-nez v12, :cond_34

    const/16 v12, 0x9

    invoke-virtual {v9, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v12, "Got duration: {}."

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_34
    const-wide/16 v12, 0x3e8

    mul-long v10, v1, v12

    :cond_38
    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v8, v5

    aget-object v12, v8, v5

    if-nez v12, :cond_4a

    const/4 v12, 0x3

    invoke-virtual {v9, v10, v11, v12}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v8, v5

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    const-string v12, "Got frame at {}ms."

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_75
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_55} :catch_63

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_58
    :try_start_58
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5b} :catch_5c

    :goto_5b
    return-object v8

    :catch_5c
    move-exception v4

    const-string v12, "Failed to release."

    invoke-static {v12, v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5b

    :catch_63
    move-exception v4

    :try_start_64
    const-string v12, "Failed to get frame."

    invoke-static {v12, v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_75

    :try_start_69
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_6c} :catch_6e

    :goto_6c
    const/4 v8, 0x0

    goto :goto_5b

    :catch_6e
    move-exception v4

    const-string v12, "Failed to release."

    invoke-static {v12, v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    :catchall_75
    move-exception v12

    :try_start_76
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_79} :catch_7a

    :goto_79
    throw v12

    :catch_7a
    move-exception v4

    const-string v13, "Failed to release."

    invoke-static {v13, v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_79
.end method

.method public static scanFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lco/vine/android/util/MediaUtil$MediaConnectionClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, v0, Lco/vine/android/util/MediaUtil$MediaConnectionClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method
