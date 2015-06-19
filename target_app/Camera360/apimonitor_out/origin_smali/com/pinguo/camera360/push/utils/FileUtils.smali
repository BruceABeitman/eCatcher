.class public final Lcom/pinguo/camera360/push/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/push/utils/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/push/utils/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 p0, 0x0

    :cond_6
    return-void
.end method

.method private static close(Ljava/io/OutputStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x0

    :cond_6
    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/pinguo/camera360/push/utils/FileUtils;->folderCheck(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_23

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Create folder("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_23
    sget-object v8, Lcom/pinguo/camera360/push/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Res Url:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v8, 0x1

    :try_start_44
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_6a

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Http connect error,status code ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8

    :cond_6a
    :try_start_6a
    sget-object v8, Lcom/pinguo/camera360/push/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "File Url:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v4, v8

    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_d4

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_d4

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_cb
    .catchall {:try_start_6a .. :try_end_cb} :catchall_65

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_d4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_d3
    return-object v3

    :cond_d4
    :try_start_d4
    invoke-static {p1, v0, v3}, Lcom/pinguo/camera360/push/utils/FileUtils;->downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_65

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_d3
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/push/utils/IDownloadProcess;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/pinguo/camera360/push/utils/FileUtils;->folderCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Create folder("

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ") failed!"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    :try_start_2f
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v0, 0xc8

    if-eq v9, v0, :cond_55

    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Http connect error,status code ="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_50
    .catchall {:try_start_2f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_55
    :try_start_55
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/pinguo/camera360/push/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "File Url:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v10, 0x0

    cmp-long v0, v3, v10

    if-gez v0, :cond_9a

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v5, "Unkonw File Size!"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v0, v10, v3

    if-nez v0, :cond_ce

    invoke-interface {p2, v2}, Lcom/pinguo/camera360/push/utils/IDownloadProcess;->setFileName(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/pinguo/camera360/push/utils/IDownloadProcess;->finish()V
    :try_end_ca
    .catchall {:try_start_55 .. :try_end_ca} :catchall_50

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_cd
    return-void

    :cond_ce
    :try_start_ce
    invoke-interface {p2, v2}, Lcom/pinguo/camera360/push/utils/IDownloadProcess;->setFileName(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/push/utils/FileUtils;->downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;JLcom/pinguo/camera360/push/utils/IDownloadProcess;)V
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_50

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_cd
.end method

.method private static downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_4b

    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_4d

    const/16 v6, 0x2000

    :try_start_29
    new-array v0, v6, [B

    const/4 v3, -0x1

    :goto_2c
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_3f

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3a

    :try_start_33
    invoke-static {v5}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/OutputStream;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_45

    invoke-static {v2}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/InputStream;)V

    return-void

    :cond_3a
    const/4 v6, 0x0

    :try_start_3b
    invoke-virtual {v5, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_2c

    :catchall_3f
    move-exception v6

    move-object v4, v5

    :goto_41
    :try_start_41
    invoke-static {v4}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/OutputStream;)V

    throw v6
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v6

    move-object v1, v2

    :goto_47
    invoke-static {v1}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/InputStream;)V

    throw v6

    :catchall_4b
    move-exception v6

    goto :goto_47

    :catchall_4d
    move-exception v6

    goto :goto_41
.end method

.method private static downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;JLcom/pinguo/camera360/push/utils/IDownloadProcess;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-interface/range {p5 .. p5}, Lcom/pinguo/camera360/push/utils/IDownloadProcess;->getUpdateInterval()I

    move-result v15

    const/4 v3, 0x0

    :try_start_9
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_89

    const/4 v6, 0x0

    :try_start_15
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_7e

    const/16 v16, 0x2000

    :try_start_39
    move/from16 v0, v16

    new-array v2, v0, [B

    const/4 v5, -0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    :cond_41
    :goto_41
    invoke-virtual {v4, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_8b

    move-result v5

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_55

    :try_start_4b
    invoke-static {v7}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/OutputStream;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_83

    invoke-static {v4}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/InputStream;)V

    invoke-interface/range {p5 .. p5}, Lcom/pinguo/camera360/push/utils/IDownloadProcess;->finish()V

    return-void

    :cond_55
    const/16 v16, 0x0

    :try_start_57
    move/from16 v0, v16

    invoke-virtual {v7, v2, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v9, v9, v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v16, v13, v11

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_41

    const-wide/16 v16, 0x64

    mul-long v16, v16, v9

    div-long v16, v16, p3

    move-wide/from16 v0, v16

    long-to-int v8, v0

    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Lcom/pinguo/camera360/push/utils/IDownloadProcess;->rate(I)V
    :try_end_7c
    .catchall {:try_start_57 .. :try_end_7c} :catchall_8b

    move-wide v11, v13

    goto :goto_41

    :catchall_7e
    move-exception v16

    :goto_7f
    :try_start_7f
    invoke-static {v6}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/OutputStream;)V

    throw v16
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v16

    move-object v3, v4

    :goto_85
    invoke-static {v3}, Lcom/pinguo/camera360/push/utils/FileUtils;->close(Ljava/io/InputStream;)V

    throw v16

    :catchall_89
    move-exception v16

    goto :goto_85

    :catchall_8b
    move-exception v16

    move-object v6, v7

    goto :goto_7f
.end method

.method public static folderCheck(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/pinguo/camera360/push/utils/PushUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_7

    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_7
.end method
