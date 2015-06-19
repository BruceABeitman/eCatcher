.class public Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# static fields
.field public static final DOWNLOAD_ERROR:I = -0x1

.field private static final FILESIZE:I = 0x1000

.field public static final FILE_EXIST:I = 0x2

.field private static final NETWORK_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShutDown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->isShutDown:Z

    return-void
.end method

.method private writeDateFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .registers 16

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :try_start_1b
    iput-boolean v10, p0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->isShutDown:Z

    invoke-static {p1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_8f

    :try_start_25
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_91

    const/16 v10, 0x1000

    :try_start_2c
    new-array v0, v10, [B

    const/4 v1, -0x1

    :goto_2f
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_3a

    iget-boolean v10, p0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->isShutDown:Z

    if-eqz v10, :cond_58

    :cond_3a
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3d} :catch_5d

    if-eqz v8, :cond_42

    :try_start_3f
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_80

    :cond_42
    :goto_42
    iget-boolean v10, p0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->isShutDown:Z

    if-eqz v10, :cond_85

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_54
    move-object v7, v8

    move-object v4, v5

    move-object v5, v9

    :goto_57
    return-object v5

    :cond_58
    const/4 v10, 0x0

    :try_start_59
    invoke-virtual {v8, v0, v10, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_2f

    :catch_5d
    move-exception v3

    move-object v7, v8

    move-object v4, v5

    :goto_60
    :try_start_60
    sget-object v10, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Write data error."

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_74

    if-eqz v7, :cond_6d

    :try_start_6a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6f

    :cond_6d
    :goto_6d
    move-object v5, v9

    goto :goto_57

    :catch_6f
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6d

    :catchall_74
    move-exception v9

    :goto_75
    if-eqz v7, :cond_7a

    :try_start_77
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    :cond_7a
    :goto_7a
    throw v9

    :catch_7b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a

    :catch_80
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    :cond_85
    move-object v7, v8

    move-object v4, v5

    goto :goto_57

    :catchall_88
    move-exception v9

    move-object v4, v5

    goto :goto_75

    :catchall_8b
    move-exception v9

    move-object v7, v8

    move-object v4, v5

    goto :goto_75

    :catch_8f
    move-exception v3

    goto :goto_60

    :catch_91
    move-exception v3

    move-object v4, v5

    goto :goto_60
.end method


# virtual methods
.method public cancelDownload()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->isShutDown:Z

    return-void
.end method

.method public downFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 16

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->isShutDown:Z

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x8

    if-ge v8, v9, :cond_12

    const-string/jumbo v8, "http.keepAlive"

    const-string/jumbo v9, "false"

    invoke-static {v8, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_12
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_17
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const/16 v8, 0x2710

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string/jumbo v8, "Accept-Encoding"

    const-string/jumbo v9, "identity"

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_a2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v2, v8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_4e

    invoke-direct {p0, p2, p3, v4}, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->writeDateFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_4b} :catch_94

    move-result-object v5

    if-nez v5, :cond_5b

    :cond_4e
    :goto_4e
    if-eqz v4, :cond_53

    :try_start_50
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_56

    :cond_53
    :goto_53
    const-wide/16 v8, -0x1

    :goto_55
    return-wide v8

    :catch_56
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    :cond_5b
    :try_start_5b
    const-string/jumbo v8, "penn"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " fileSize"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " resultFile.length()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_c9

    sget-object v8, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "The file size does not match"

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_93
    .catchall {:try_start_5b .. :try_end_93} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_93} :catch_94

    goto :goto_4e

    :catch_94
    move-exception v1

    :try_start_95
    sget-object v8, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_b8

    if-eqz v4, :cond_9f

    :try_start_9c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_bf

    :cond_9f
    :goto_9f
    const-wide/16 v8, -0x1

    goto :goto_55

    :cond_a2
    :try_start_a2
    sget-object v8, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "server no response, url = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_a2 .. :try_end_b7} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b7} :catch_94

    goto :goto_4e

    :catchall_b8
    move-exception v8

    if-eqz v4, :cond_be

    :try_start_bb
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c4

    :cond_be
    :goto_be
    throw v8

    :catch_bf
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    :catch_c4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_be

    :cond_c9
    if-eqz v4, :cond_ce

    :try_start_cb
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_d0

    :cond_ce
    :goto_ce
    move-wide v8, v2

    goto :goto_55

    :catch_d0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ce
.end method
