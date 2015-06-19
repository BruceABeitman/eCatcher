.class final Lcom/alipay/android/app/util/FileFetch;
.super Ljava/lang/Object;
.source "FileFetch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/util/FileFetch$FileAccess;
    }
.end annotation


# instance fields
.field private downloader:Lcom/alipay/android/app/util/FileDownloader;

.field private fileEnd:J

.field private fileStart:J

.field private fileUrl:Ljava/lang/String;

.field private savePath:Ljava/lang/String;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/util/FileDownloader;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z

    iput-object p1, p0, Lcom/alipay/android/app/util/FileFetch;->fileUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/util/FileFetch;->savePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/util/FileFetch;->downloader:Lcom/alipay/android/app/util/FileDownloader;

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/app/util/FileFetch;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/util/FileFetch;->savePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getFileEnd()J
    .registers 3

    iget-wide v0, p0, Lcom/alipay/android/app/util/FileFetch;->fileEnd:J

    return-wide v0
.end method

.method public final getFileStart()J
    .registers 3

    iget-wide v0, p0, Lcom/alipay/android/app/util/FileFetch;->fileStart:J

    return-wide v0
.end method

.method public final isStop()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z

    return v0
.end method

.method public run()V
    .registers 16

    iget-object v11, p0, Lcom/alipay/android/app/util/FileFetch;->downloader:Lcom/alipay/android/app/util/FileDownloader;

    invoke-virtual {v11}, Lcom/alipay/android/app/util/FileDownloader;->showProgress()Z

    move-result v11

    if-eqz v11, :cond_1c

    iget-wide v11, p0, Lcom/alipay/android/app/util/FileFetch;->fileEnd:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_18

    iget-wide v11, p0, Lcom/alipay/android/app/util/FileFetch;->fileStart:J

    iget-wide v13, p0, Lcom/alipay/android/app/util/FileFetch;->fileEnd:J

    cmp-long v11, v11, v13

    if-ltz v11, :cond_1c

    :cond_18
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z

    :goto_1b
    return-void

    :cond_1c
    const/4 v1, 0x0

    new-instance v3, Lcom/alipay/android/app/util/FileFetch$FileAccess;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/util/FileFetch$FileAccess;-><init>(Lcom/alipay/android/app/util/FileFetch;)V

    :cond_22
    :goto_22
    iget-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z

    if-eqz v11, :cond_2a

    :cond_26
    :goto_26
    invoke-virtual {v3}, Lcom/alipay/android/app/util/FileFetch$FileAccess;->close()V

    goto :goto_1b

    :cond_2a
    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_2c
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v11, p0, Lcom/alipay/android/app/util/FileFetch;->fileUrl:Ljava/lang/String;

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v11, p0, Lcom/alipay/android/app/util/FileFetch;->downloader:Lcom/alipay/android/app/util/FileDownloader;

    invoke-virtual {v11}, Lcom/alipay/android/app/util/FileDownloader;->showProgress()Z

    move-result v11

    if-eqz v11, :cond_65

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "bytes="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/alipay/android/app/util/FileFetch;->fileStart:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/alipay/android/app/util/FileFetch;->fileEnd:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "Range"

    invoke-virtual {v5, v11, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    packed-switch v9, :pswitch_data_120

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z

    :goto_77
    iget-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z
    :try_end_79
    .catchall {:try_start_2c .. :try_end_79} :catchall_116
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_79} :catch_8c
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_79} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_79} :catch_108

    if-eqz v11, :cond_93

    if-eqz v6, :cond_26

    :try_start_7d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_26

    :catch_81
    move-exception v11

    goto :goto_26

    :pswitch_83
    :try_start_83
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_116
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8a} :catch_8c
    .catch Ljava/net/SocketTimeoutException; {:try_start_83 .. :try_end_8a} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8a} :catch_108

    move-result-object v6

    goto :goto_77

    :catch_8c
    move-exception v2

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_116
    .catch Ljava/net/SocketTimeoutException; {:try_start_8d .. :try_end_93} :catch_ea
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_93} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_93} :catch_108

    :cond_93
    if-nez v6, :cond_9d

    if-eqz v6, :cond_22

    :try_start_97
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_22

    :catch_9b
    move-exception v11

    goto :goto_22

    :cond_9d
    const/16 v11, 0x400

    :try_start_9f
    new-array v0, v11, [B

    :cond_a1
    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v6, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_ba

    iget-wide v11, p0, Lcom/alipay/android/app/util/FileFetch;->fileStart:J

    const/4 v13, 0x0

    invoke-virtual {v3, v0, v13, v10}, Lcom/alipay/android/app/util/FileFetch$FileAccess;->write([BII)I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/alipay/android/app/util/FileFetch;->fileStart:J

    iget-object v11, p0, Lcom/alipay/android/app/util/FileFetch;->downloader:Lcom/alipay/android/app/util/FileDownloader;

    invoke-virtual {v11}, Lcom/alipay/android/app/util/FileDownloader;->writeTempFile()V

    :cond_ba
    iget-object v11, p0, Lcom/alipay/android/app/util/FileFetch;->downloader:Lcom/alipay/android/app/util/FileDownloader;

    invoke-virtual {v11}, Lcom/alipay/android/app/util/FileDownloader;->showProgress()Z

    move-result v11

    if-eqz v11, :cond_e6

    iget-wide v11, p0, Lcom/alipay/android/app/util/FileFetch;->fileStart:J

    iget-wide v13, p0, Lcom/alipay/android/app/util/FileFetch;->fileEnd:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_e4

    const/4 v1, 0x1

    :goto_cb
    iget-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z

    if-nez v11, :cond_e8

    if-eqz v1, :cond_e8

    const/4 v1, 0x1

    :goto_d2
    const/4 v11, -0x1

    if-le v10, v11, :cond_d7

    if-nez v1, :cond_a1

    :cond_d7
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z
    :try_end_da
    .catchall {:try_start_9f .. :try_end_da} :catchall_116
    .catch Ljava/net/SocketTimeoutException; {:try_start_9f .. :try_end_da} :catch_ea
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_da} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_da} :catch_108

    if-eqz v6, :cond_22

    :try_start_dc
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_e1

    goto/16 :goto_22

    :catch_e1
    move-exception v11

    goto/16 :goto_22

    :cond_e4
    const/4 v1, 0x0

    goto :goto_cb

    :cond_e6
    const/4 v1, 0x1

    goto :goto_cb

    :cond_e8
    const/4 v1, 0x0

    goto :goto_d2

    :catch_ea
    move-exception v2

    if-nez v9, :cond_f0

    const/4 v11, 0x1

    :try_start_ee
    iput-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z
    :try_end_f0
    .catchall {:try_start_ee .. :try_end_f0} :catchall_116

    :cond_f0
    if-eqz v6, :cond_22

    :try_start_f2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_f7

    goto/16 :goto_22

    :catch_f7
    move-exception v11

    goto/16 :goto_22

    :catch_fa
    move-exception v2

    const/4 v11, 0x1

    :try_start_fc
    iput-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z
    :try_end_fe
    .catchall {:try_start_fc .. :try_end_fe} :catchall_116

    if-eqz v6, :cond_22

    :try_start_100
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_105

    goto/16 :goto_22

    :catch_105
    move-exception v11

    goto/16 :goto_22

    :catch_108
    move-exception v2

    const/4 v11, 0x1

    :try_start_10a
    iput-boolean v11, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z
    :try_end_10c
    .catchall {:try_start_10a .. :try_end_10c} :catchall_116

    if-eqz v6, :cond_22

    :try_start_10e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_111} :catch_113

    goto/16 :goto_22

    :catch_113
    move-exception v11

    goto/16 :goto_22

    :catchall_116
    move-exception v11

    if-eqz v6, :cond_11c

    :try_start_119
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_11d

    :cond_11c
    :goto_11c
    throw v11

    :catch_11d
    move-exception v12

    goto :goto_11c

    nop

    :pswitch_data_120
    .packed-switch 0xc8
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_83
    .end packed-switch
.end method

.method public final setFileEnd(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alipay/android/app/util/FileFetch;->fileEnd:J

    return-void
.end method

.method public final setFileStart(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alipay/android/app/util/FileFetch;->fileStart:J

    return-void
.end method

.method public final stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/util/FileFetch;->stop:Z

    return-void
.end method
