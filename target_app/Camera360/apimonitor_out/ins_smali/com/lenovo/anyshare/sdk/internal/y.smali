.class public Lcom/lenovo/anyshare/sdk/internal/y;
.super Lcom/lenovo/httpserver/HttpServlet;
.source "DownloadServlet.java"
.field private final a:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;-><init>(Landroid/content/Context;Ljava/lang/String;)V
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/y;->a:Ljava/util/List;
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/y;Ljava/lang/String;Ljava/lang/String;JJ)V
.registers 7
invoke-direct/range {p0 .. p6}, Lcom/lenovo/anyshare/sdk/internal/y;->a(Ljava/lang/String;Ljava/lang/String;JJ)V
return-void
.end method
.method private a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;Ljava/io/OutputStream;Ljava/io/InputStream;JJJ)V
.registers 33
invoke-virtual/range {p1 .. p1}, Lcom/lenovo/httpserver/HttpRequest;->getUrl()Ljava/net/URL;
move-result-object v3
invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v5
move-wide/from16 v8, p7
new-instance v21, Lcom/lenovo/anyshare/sdk/internal/ba;
move-object/from16 v0, v21
move-wide/from16 v1, p5
invoke-direct {v0, v1, v2, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/ba;-><init>(JJ)V
:try_start_13
move-object/from16 v0, p4
move-wide/from16 v1, p7
invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J
const/high16 v3, 0x1
new-array v0, v3, [B
move-object/from16 v18, v0
:cond_20
:goto_20
cmp-long v3, v8, p9
if-gez v3, :cond_31
move-object/from16 v0, p4
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
move-result v19
const/4 v3, -0x1
move/from16 v0, v19
if-ne v0, v3, :cond_73
:cond_31
const-string/jumbo v3, "DownloadServlet"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, ">> AVG: "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, v21
invoke-virtual {v0, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/ba;->b(J)J
move-result-wide v6
invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v6, " bytes/s, url="
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_5c
.catchall {:try_start_13 .. :try_end_5c} :catchall_e3
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_5c} :catch_9c
invoke-static/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V
move-wide/from16 v16, v8
new-instance v10, Lcom/lenovo/anyshare/sdk/internal/y$1;
move-object/from16 v11, p0
move-object/from16 v12, p1
move-object v13, v5
move-wide/from16 v14, p5
invoke-direct/range {v10 .. v17}, Lcom/lenovo/anyshare/sdk/internal/y$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/y;Lcom/lenovo/httpserver/HttpRequest;Ljava/lang/String;JJ)V
:goto_6d
move-object/from16 v0, p2
invoke-virtual {v0, v10}, Lcom/lenovo/httpserver/HttpResponse;->setPostCloseHandler(Ljava/lang/Runnable;)V
return-void
:cond_73
if-eqz v19, :cond_20
const/4 v3, 0x0
:try_start_76
move-object/from16 v0, p3
move-object/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
move/from16 v0, v19
int-to-long v3, v0
add-long/2addr v8, v3
move-object/from16 v0, v21
invoke-virtual {v0, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/ba;->a(J)Z
move-result v3
if-eqz v3, :cond_20
move-object/from16 v0, p1
iget-object v4, v0, Lcom/lenovo/httpserver/HttpRequest;->remoteIp:Ljava/lang/String;
move-object/from16 v3, p0
move-wide/from16 v6, p5
invoke-direct/range {v3 .. v9}, Lcom/lenovo/anyshare/sdk/internal/y;->a(Ljava/lang/String;Ljava/lang/String;JJ)V
move-object/from16 v0, v21
invoke-virtual {v0, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/ba;->c(J)V
:try_end_9b
.catchall {:try_start_76 .. :try_end_9b} :catchall_e3
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_9b} :catch_9c
goto :goto_20
:catch_9c
move-exception v20
:try_start_9d
const-string/jumbo v3, "DownloadServlet"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "failed: url = "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v6, ", completed = "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v6, "/"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-wide/from16 v0, p5
invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, v20
invoke-static {v3, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_d1
.catchall {:try_start_9d .. :try_end_d1} :catchall_e3
invoke-static/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V
move-wide/from16 v16, v8
new-instance v10, Lcom/lenovo/anyshare/sdk/internal/y$1;
move-object/from16 v11, p0
move-object/from16 v12, p1
move-object v13, v5
move-wide/from16 v14, p5
invoke-direct/range {v10 .. v17}, Lcom/lenovo/anyshare/sdk/internal/y$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/y;Lcom/lenovo/httpserver/HttpRequest;Ljava/lang/String;JJ)V
goto :goto_6d
:catchall_e3
move-exception v3
invoke-static/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;)V
move-wide/from16 v16, v8
new-instance v10, Lcom/lenovo/anyshare/sdk/internal/y$1;
move-object/from16 v11, p0
move-object/from16 v12, p1
move-object v13, v5
move-wide/from16 v14, p5
invoke-direct/range {v10 .. v17}, Lcom/lenovo/anyshare/sdk/internal/y$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/y;Lcom/lenovo/httpserver/HttpRequest;Ljava/lang/String;JJ)V
move-object/from16 v0, p2
invoke-virtual {v0, v10}, Lcom/lenovo/httpserver/HttpResponse;->setPostCloseHandler(Ljava/lang/Runnable;)V
throw v3
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;J)V
.registers 10
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/y;->a:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/y$a;
:try_start_12
invoke-interface {v2, p1, p2, p3, p4}, Lcom/lenovo/anyshare/sdk/internal/y$a;->a(Ljava/lang/String;Ljava/lang/String;J)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
const-string/jumbo v3, "DownloadServlet"
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:cond_22
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;JJ)V
.registers 16
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/y;->a:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_6
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_26
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/y$a;
move-object v1, p1
move-object v2, p2
move-wide v3, p3
move-wide v5, p5
:try_start_16
invoke-interface/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/y$a;->a(Ljava/lang/String;Ljava/lang/String;JJ)V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a
goto :goto_6
:catch_1a
move-exception v7
const-string/jumbo v1, "DownloadServlet"
invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:cond_26
return-void
.end method
.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/y;Ljava/lang/String;Ljava/lang/String;JJ)V
.registers 7
invoke-direct/range {p0 .. p6}, Lcom/lenovo/anyshare/sdk/internal/y;->b(Ljava/lang/String;Ljava/lang/String;JJ)V
return-void
.end method
.method private b(Ljava/lang/String;Ljava/lang/String;JJ)V
.registers 16
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/y;->a:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_6
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_26
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/y$a;
move-object v1, p1
move-object v2, p2
move-wide v3, p3
move-wide v5, p5
:try_start_16
invoke-interface/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/y$a;->b(Ljava/lang/String;Ljava/lang/String;JJ)V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a
goto :goto_6
:catch_1a
move-exception v7
const-string/jumbo v1, "DownloadServlet"
invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:cond_26
return-void
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/y$a;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/y;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;Ljava/io/InputStream;J)V
.registers 27
invoke-virtual/range {p1 .. p1}, Lcom/lenovo/httpserver/HttpRequest;->getUrl()Ljava/net/URL;
move-result-object v4
invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v20
const-wide/16 v11, 0x0
const-wide/16 v4, 0x1
sub-long v13, p4, v4
const-string/jumbo v4, "Range"
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Lcom/lenovo/httpserver/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_4f
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v18
const-string/jumbo v4, "bytes"
move-object/from16 v0, v18
invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-eqz v4, :cond_b9
const-string/jumbo v4, "DownloadServlet"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "Range header["
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, v18
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "] is wrong!"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_4f
:cond_4f
const-string/jumbo v4, "Accept-Ranges"
const-string/jumbo v5, "bytes"
move-object/from16 v0, p2
invoke-virtual {v0, v4, v5}, Lcom/lenovo/httpserver/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
sub-long v4, p4, v11
move-object/from16 v0, p2
invoke-virtual {v0, v4, v5}, Lcom/lenovo/httpserver/HttpResponse;->setContentLength(J)V
const-wide/16 v4, 0x0
cmp-long v4, v11, v4
if-lez v4, :cond_94
const/16 v4, 0xce
move-object/from16 v0, p2
iput v4, v0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
const-string/jumbo v4, "bytes %d-%d/%d"
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x2
invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
const-string/jumbo v4, "Content-Range"
move-object/from16 v0, p2
invoke-virtual {v0, v4, v15}, Lcom/lenovo/httpserver/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_94
const-wide/16 v4, 0x0
cmp-long v4, v11, v4
if-nez v4, :cond_a7
move-object/from16 v0, p1
iget-object v4, v0, Lcom/lenovo/httpserver/HttpRequest;->remoteIp:Ljava/lang/String;
move-object/from16 v0, p0
move-object/from16 v1, v20
move-wide/from16 v2, p4
invoke-direct {v0, v4, v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/y;->a(Ljava/lang/String;Ljava/lang/String;J)V
:cond_a7
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/httpserver/HttpResponse;->getOutputStream()Ljava/io/OutputStream;
move-result-object v7
move-object/from16 v4, p0
move-object/from16 v5, p1
move-object/from16 v6, p2
move-object/from16 v8, p3
move-wide/from16 v9, p4
invoke-direct/range {v4 .. v14}, Lcom/lenovo/anyshare/sdk/internal/y;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;Ljava/io/OutputStream;Ljava/io/InputStream;JJJ)V
return-void
:cond_b9
const/16 v4, 0x3d
move-object/from16 v0, v18
invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I
move-result v17
if-ltz v17, :cond_cb
add-int/lit8 v4, v17, 0x1
move-object/from16 v0, v18
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v18
:cond_cb
const/16 v4, 0x2d
move-object/from16 v0, v18
invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I
move-result v17
if-ltz v17, :cond_f8
const/4 v4, 0x0
move-object/from16 v0, v18
move/from16 v1, v17
invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v19
:goto_de
invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v11
if-ltz v17, :cond_fb
add-int/lit8 v4, v17, 0x1
move-object/from16 v0, v18
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v16
:goto_ec
invoke-static/range {v16 .. v16}, Lcom/lenovo/anyshare/sdk/internal/bg;->d(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_4f
invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v13
goto/16 :goto_4f
:cond_f8
move-object/from16 v19, v18
goto :goto_de
:cond_fb
const/16 v16, 0x0
goto :goto_ec
.end method
.method public b(Lcom/lenovo/anyshare/sdk/internal/y$a;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/y;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method protected doGet(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
.registers 22
invoke-virtual/range {p1 .. p1}, Lcom/lenovo/httpserver/HttpRequest;->getParams()Ljava/util/Map;
move-result-object v15
if-eqz v15, :cond_c
invoke-interface {v15}, Ljava/util/Map;->size()I
move-result v1
if-nez v1, :cond_35
:cond_c
const-string/jumbo v1, "DownloadServlet"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "bad request: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual/range {p1 .. p1}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x190
const-string/jumbo v2, "Params Null"
move-object/from16 v0, p2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V
:goto_34
return-void
:cond_35
const-string/jumbo v1, "metadatatype"
invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/String;
const-string/jumbo v1, "metadataid"
invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/String;
const-string/jumbo v1, "filetype"
invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v17
check-cast v17, Ljava/lang/String;
if-eqz v13, :cond_54
if-nez v11, :cond_7d
:cond_54
const-string/jumbo v1, "DownloadServlet"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "bad request: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual/range {p1 .. p1}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x190
const-string/jumbo v2, "Params invalid"
move-object/from16 v0, p2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V
goto :goto_34
:cond_7d
invoke-static {v13}, Lcom/lenovo/content/base/ContentType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;
move-result-object v12
sget-object v1, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
if-ne v12, v1, :cond_97
const-string/jumbo v1, "versionedid"
invoke-interface {v15, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_97
const-string/jumbo v1, "versionedid"
invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/String;
:cond_97
if-eqz v17, :cond_f8
:goto_99
invoke-static/range {v17 .. v17}, Lcom/lenovo/content/base/FileType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/FileType;
move-result-object v10
move-object/from16 v0, p0
iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/y;->mContext:Landroid/content/Context;
invoke-static {v1, v12, v10, v11}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/FileType;Ljava/lang/String;)Ljava/io/File;
move-result-object v9
const/16 v16, 0x0
if-eqz v9, :cond_af
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_100
:cond_af
sget-object v1, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-ne v10, v1, :cond_bb
move-object/from16 v0, p0
iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/y;->mContext:Landroid/content/Context;
invoke-static {v1, v12, v11}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
move-result-object v16
:cond_bb
if-nez v16, :cond_100
const-string/jumbo v2, "DownloadServlet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "not found: file = "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
if-eqz v9, :cond_fc
invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
:goto_d2
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, ", url = "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual/range {p1 .. p1}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x194
const-string/jumbo v2, "target file is not found!"
move-object/from16 v0, p2
invoke-virtual {v0, v1, v2}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V
goto/16 :goto_34
:cond_f8
const-string/jumbo v17, "raw"
goto :goto_99
:cond_fc
const-string/jumbo v1, ""
goto :goto_d2
:cond_100
if-eqz v9, :cond_175
const-string/jumbo v1, "DownloadServlet"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "file = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_120
if-nez v9, :cond_17f
const-string/jumbo v8, "png"
:goto_125
const/4 v14, 0x0
const-string/jumbo v1, "html"
invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_138
const-string/jumbo v1, "htm"
invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_188
:cond_138
const-string/jumbo v14, "text/html; charset=UTF-8"
:goto_13b
const-string/jumbo v1, "DownloadServlet"
const-string/jumbo v2, "extName=%s, mimeType=%s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/16 v18, 0x0
aput-object v8, v3, v18
const/16 v18, 0x1
aput-object v14, v3, v18
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v14, :cond_15a
move-object/from16 v0, p2
invoke-virtual {v0, v14}, Lcom/lenovo/httpserver/HttpResponse;->setContentType(Ljava/lang/String;)V
:cond_15a
const/4 v4, 0x0
const-wide/16 v5, 0x0
if-nez v9, :cond_191
invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v7
array-length v1, v7
int-to-long v5, v1
new-instance v4, Ljava/io/ByteArrayInputStream;
invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:goto_16a
move-object/from16 v1, p0
move-object/from16 v2, p1
move-object/from16 v3, p2
invoke-virtual/range {v1 .. v6}, Lcom/lenovo/anyshare/sdk/internal/y;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;Ljava/io/InputStream;J)V
goto/16 :goto_34
:cond_175
const-string/jumbo v1, "DownloadServlet"
const-string/jumbo v2, "thumbnail file is not exist, load bitmap directly!"
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_120
:cond_17f
invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
goto :goto_125
:cond_188
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v1
invoke-virtual {v1, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
goto :goto_13b
:cond_191
invoke-virtual {v9}, Ljava/io/File;->length()J
move-result-wide v5
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
goto :goto_16a
.end method