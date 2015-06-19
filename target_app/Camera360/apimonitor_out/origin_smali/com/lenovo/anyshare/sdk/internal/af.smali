.class Lcom/lenovo/anyshare/sdk/internal/af;
.super Lcom/lenovo/anyshare/sdk/internal/ab;
.source "ItemDownloadExecutor.java"


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ab$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ab;-><init>(Lcom/lenovo/anyshare/sdk/internal/ab$a;)V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;Lcom/lenovo/anyshare/sdk/internal/ad;J)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/channel/exception/TransmitException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/lenovo/anyshare/sdk/internal/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    new-instance v14, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_195

    :try_start_2e
    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v12, Lcom/lenovo/anyshare/sdk/internal/ba;

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->g()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v4

    invoke-direct {v12, v2, v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/ba;-><init>(JJ)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    const/high16 v2, 0x1

    new-array v8, v2, [B

    const/4 v9, 0x0

    :cond_4d
    :goto_4d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v2, -0x1

    if-ne v9, v2, :cond_f3

    :cond_5e
    const-string/jumbo v2, "Task.Scheduler.Download.Executor.Item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/ba;->b(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes/s, Download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " completed and save at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_2e .. :try_end_9f} :catchall_104

    invoke-static {v14}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V

    const-string/jumbo v2, "Task.Scheduler.Download.Executor.Item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "download task completed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_f2

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->g()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_f2

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    const-string/jumbo v2, "Task.Scheduler.Download.Executor.Item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rename file result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    return-void

    :cond_f3
    :try_start_f3
    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->j()Z

    move-result v2

    if-eqz v2, :cond_15a

    new-instance v2, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v3, 0x8

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_104
    .catchall {:try_start_f3 .. :try_end_104} :catchall_104

    :catchall_104
    move-exception v2

    move-object v13, v14

    :goto_106
    invoke-static {v13}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V

    const-string/jumbo v3, "Task.Scheduler.Download.Executor.Item"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "download task completed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_159

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->g()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_159

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    const-string/jumbo v3, "Task.Scheduler.Download.Executor.Item"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rename file result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_159
    throw v2

    :cond_15a
    if-eqz v9, :cond_4d

    const/4 v2, 0x0

    :try_start_15d
    invoke-virtual {v14, v8, v2, v9}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_104
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_18d

    :try_start_160
    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v2

    int-to-long v4, v9

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ad;->c(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ba;->a(J)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->g()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/anyshare/sdk/internal/af;->a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ba;->c(J)V

    goto/16 :goto_4d

    :catch_18d
    move-exception v10

    new-instance v2, Lcom/lenovo/channel/exception/TransmitException;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v10}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_195
    .catchall {:try_start_160 .. :try_end_195} :catchall_104

    :catchall_195
    move-exception v2

    goto/16 :goto_106
.end method


# virtual methods
.method a(Lcom/lenovo/anyshare/sdk/internal/ad;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/channel/exception/TransmitException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lenovo/anyshare/sdk/internal/ad;->c:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lenovo/anyshare/sdk/internal/ad;->c:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ad;->d(J)V

    :cond_19
    const/4 v10, 0x0

    new-instance v18, Lcom/lenovo/anyshare/sdk/internal/bf;

    invoke-direct/range {v18 .. v18}, Lcom/lenovo/anyshare/sdk/internal/bf;-><init>()V

    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->j()Z

    move-result v20

    if-eqz v20, :cond_69

    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v21, 0x8

    const-string/jumbo v22, ""

    invoke-direct/range {v20 .. v22}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    throw v20
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_30} :catch_30
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_30} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_30} :catch_295

    :catch_30
    move-exception v3

    :goto_31
    :try_start_31
    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/Throwable;)V

    throw v20
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v20

    :goto_3e
    const-string/jumbo v21, "Task.Scheduler.Download.Executor.Item"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "download time spend: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_68

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_68
    throw v20

    :cond_69
    :try_start_69
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->a()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_94

    const-string/jumbo v20, "Task.Scheduler.Download.Executor.Item"

    const-string/jumbo v21, "download url is empty!"

    invoke-static/range {v20 .. v21}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v21, 0x0

    const-string/jumbo v22, ""

    invoke-direct/range {v20 .. v22}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    throw v20
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_87} :catch_30
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_87} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_87} :catch_295

    :catch_87
    move-exception v3

    :goto_88
    :try_start_88
    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/Throwable;)V

    throw v20
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_3d

    :cond_94
    :try_start_94
    const-string/jumbo v20, "Task.Scheduler.Download.Executor.Item"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Ready to download "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_94 .. :try_end_b9} :catchall_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_b9} :catch_30
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_b9} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_b9} :catch_295

    :try_start_b9
    const-string/jumbo v20, "Accept-Ranges"

    const-string/jumbo v21, "bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_f9

    const-string/jumbo v20, "Range"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "bytes="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f9
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v20

    const-string/jumbo v21, "http.route.default-proxy"

    sget-object v22, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/af;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    const-string/jumbo v20, "Task.Scheduler.Download.Executor.Item"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "download status code:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0xc8

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_145

    const/16 v20, 0xce

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_161

    :cond_145
    const/16 v17, 0x1

    :goto_147
    if-nez v17, :cond_164

    const/4 v4, 0x0

    const/16 v20, 0x194

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_153

    const/4 v4, 0x5

    :cond_153
    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    throw v20

    :catch_15d
    move-exception v3

    move-object v10, v11

    goto/16 :goto_31

    :cond_161
    const/16 v17, 0x0

    goto :goto_147

    :cond_164
    const-wide/16 v13, 0x0

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    invoke-static {v12}, Lcom/lenovo/anyshare/sdk/internal/as;->a(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v5

    const/16 v20, 0xce

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1fc

    const-string/jumbo v20, "Content-Range"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_18d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1bd

    :cond_18d
    const-string/jumbo v20, "Task.Scheduler.Download.Executor.Item"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Content-Range not found in a range download response, url = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    throw v20

    :catch_1b9
    move-exception v3

    move-object v10, v11

    goto/16 :goto_88

    :cond_1bd
    const-string/jumbo v20, "bytes "

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x2d

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move-object v15, v9

    if-ltz v6, :cond_1e2

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_1e2
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/16 v20, 0x2f

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_258

    add-int/lit8 v20, v6, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :cond_1fc
    :goto_1fc
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/lenovo/anyshare/sdk/internal/ad;->c(J)V

    const-string/jumbo v20, "Task.Scheduler.Download.Executor.Item"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "start:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", length="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " <- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v20, 0x0

    cmp-long v20, v7, v20

    if-gez v20, :cond_25a

    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v21, 0x0

    const-string/jumbo v22, ""

    invoke-direct/range {v20 .. v22}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    throw v20
    :try_end_24a
    .catchall {:try_start_b9 .. :try_end_24a} :catchall_291
    .catch Ljava/io/FileNotFoundException; {:try_start_b9 .. :try_end_24a} :catch_15d
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_24a} :catch_1b9
    .catch Ljava/lang/RuntimeException; {:try_start_b9 .. :try_end_24a} :catch_24a

    :catch_24a
    move-exception v3

    move-object v10, v11

    :goto_24c
    :try_start_24c
    new-instance v20, Lcom/lenovo/channel/exception/TransmitException;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/Throwable;)V

    throw v20
    :try_end_258
    .catchall {:try_start_24c .. :try_end_258} :catchall_3d

    :cond_258
    add-long/2addr v7, v13

    goto :goto_1fc

    :cond_25a
    :try_start_25a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lcom/lenovo/anyshare/sdk/internal/ad;->b(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v13, v14}, Lcom/lenovo/anyshare/sdk/internal/af;->a(Lorg/apache/http/HttpResponse;Lcom/lenovo/anyshare/sdk/internal/ad;J)V
    :try_end_266
    .catchall {:try_start_25a .. :try_end_266} :catchall_291
    .catch Ljava/io/FileNotFoundException; {:try_start_25a .. :try_end_266} :catch_15d
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_266} :catch_1b9
    .catch Ljava/lang/RuntimeException; {:try_start_25a .. :try_end_266} :catch_24a

    const-string/jumbo v20, "Task.Scheduler.Download.Executor.Item"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "download time spend: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_290

    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_290
    return-void

    :catchall_291
    move-exception v20

    move-object v10, v11

    goto/16 :goto_3e

    :catch_295
    move-exception v3

    goto :goto_24c
.end method
