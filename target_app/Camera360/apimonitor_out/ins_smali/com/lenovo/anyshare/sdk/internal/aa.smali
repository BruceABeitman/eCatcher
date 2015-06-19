.class  Lcom/lenovo/anyshare/sdk/internal/aa;
.super Lcom/lenovo/anyshare/sdk/internal/ab;
.source "CollectionDownloadExecutor.java"
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ab$a;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ab;-><init>(Lcom/lenovo/anyshare/sdk/internal/ab$a;)V
return-void
.end method
.method private a(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;Lcom/lenovo/content/base/ContentType;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
.registers 13
invoke-virtual {p3}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_9
invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z
:cond_9
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getChildren()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_3f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
new-instance v3, Ljava/io/File;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getName()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, p3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getId()Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v4, p2, v3, p4}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getLastModified()J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-lez v4, :cond_11
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getLastModified()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
goto :goto_11
:cond_3f
return-void
.end method
.method private a(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
.registers 11
invoke-virtual {p2}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_9
invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
:cond_9
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getChildren()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_43
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->isCollection()Z
move-result v5
if-eqz v5, :cond_30
new-instance v5, Ljava/io/File;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getName()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-direct {p0, v0, v5, p3}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
goto :goto_11
:cond_30
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getId()Ljava/lang/String;
move-result-object v4
new-instance v3, Ljava/io/File;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->getName()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
sget-object v5, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
invoke-direct {p0, v4, v5, v3, p3}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
goto :goto_11
:cond_43
return-void
.end method
.method private a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
.registers 35
const/4 v11, 0x3
const/16 v21, 0x0
new-instance v17, Lcom/lenovo/anyshare/sdk/internal/aa$a;
const/4 v5, 0x0
move-object/from16 v0, v17
move-object/from16 v1, p0
invoke-direct {v0, v1, v5}, Lcom/lenovo/anyshare/sdk/internal/aa$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/aa;Lcom/lenovo/anyshare/sdk/internal/aa$1;)V
const/4 v15, 0x0
move-object/from16 v22, v21
:goto_10
const/4 v5, 0x3
if-ge v15, v5, :cond_26c
:try_start_13
const-string/jumbo v5, "%s?metadatatype=%s&metadataid=%s&filetype=%s&collection_share_id=%s&position=%s"
const/4 v6, 0x6
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-virtual/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/ad;->a()Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x1
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x2
const-string/jumbo v8, "UTF-8"
move-object/from16 v0, p1
invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x3
const-string/jumbo v8, "raw"
aput-object v8, v6, v7
const/4 v7, 0x4
invoke-virtual/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v8
invoke-virtual {v8}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x5
invoke-virtual/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v29
new-instance v21, Lorg/apache/http/client/methods/HttpGet;
move-object/from16 v0, v21
move-object/from16 v1, v29
invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
:try_end_5c
.catchall {:try_start_13 .. :try_end_5c} :catchall_257
.catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_5c} :catch_267
.catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_5c} :catch_262
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_5c} :catch_25e
.catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_5c} :catch_22f
:try_start_5c
const-string/jumbo v5, "Accept-Ranges"
const-string/jumbo v6, "bytes"
move-object/from16 v0, v21
invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v17
iget-wide v5, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
const-wide/16 v7, 0x0
cmp-long v5, v5, v7
if-lez v5, :cond_98
const-string/jumbo v5, "Range"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "bytes="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v17
iget-wide v7, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "-"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object/from16 v0, v21
invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_98
invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v5
const-string/jumbo v6, "http.route.default-proxy"
sget-object v7, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;
invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/aa;->a()Lorg/apache/http/client/HttpClient;
move-result-object v5
move-object/from16 v0, v21
invoke-interface {v5, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v23
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v5
invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v27
const-string/jumbo v5, "Task.Scheduler.Download.Executor.Collection"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "download status code:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move/from16 v0, v27
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const/16 v5, 0xc8
move/from16 v0, v27
if-eq v5, v0, :cond_de
const/16 v5, 0xce
move/from16 v0, v27
if-ne v5, v0, :cond_108
:cond_de
const/16 v28, 0x1
:goto_e0
if-nez v28, :cond_10b
const/4 v13, 0x0
const/16 v5, 0x194
move/from16 v0, v27
if-ne v5, v0, :cond_ea
const/4 v13, 0x5
:cond_ea
new-instance v5, Lcom/lenovo/channel/exception/TransmitException;
move-object/from16 v0, v29
invoke-direct {v5, v13, v0}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v5
:try_end_f2
.catchall {:try_start_5c .. :try_end_f2} :catchall_15d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5c .. :try_end_f2} :catch_f2
.catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_f2} :catch_155
.catch Ljava/io/IOException; {:try_start_5c .. :try_end_f2} :catch_1f5
.catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_f2} :catch_25c
:catch_f2
move-exception v12
:goto_f3
:try_start_f3
const-string/jumbo v5, "Task.Scheduler.Download.Executor.Collection"
invoke-virtual {v12}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_fd
.catchall {:try_start_f3 .. :try_end_fd} :catchall_15d
if-eqz v21, :cond_102
:goto_ff
invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:cond_102
add-int/lit8 v15, v15, 0x1
move-object/from16 v22, v21
goto/16 :goto_10
:cond_108
const/16 v28, 0x0
goto :goto_e0
:cond_10b
const-wide/16 v24, 0x0
:try_start_10d
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v5
invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v18
invoke-static/range {v23 .. v23}, Lcom/lenovo/anyshare/sdk/internal/as;->a(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
move-result-object v14
const/16 v5, 0xce
move/from16 v0, v27
if-ne v0, v5, :cond_1a3
const-string/jumbo v5, "Content-Range"
invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v20
check-cast v20, Ljava/lang/String;
if-eqz v20, :cond_130
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
move-result v5
if-nez v5, :cond_164
:cond_130
const-string/jumbo v5, "Task.Scheduler.Download.Executor.Collection"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Content-Range not found in a range download response, url = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v29
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/lenovo/channel/exception/TransmitException;
const/4 v6, 0x0
move-object/from16 v0, v29
invoke-direct {v5, v6, v0}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v5
:catch_155
:try_end_155
.catchall {:try_start_10d .. :try_end_155} :catchall_15d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_10d .. :try_end_155} :catch_f2
.catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_155} :catch_155
.catch Ljava/io/IOException; {:try_start_10d .. :try_end_155} :catch_1f5
.catch Ljava/lang/RuntimeException; {:try_start_10d .. :try_end_155} :catch_25c
move-exception v12
:try_start_156
:goto_156
new-instance v5, Lcom/lenovo/channel/exception/TransmitException;
const/4 v6, 0x5
invoke-direct {v5, v6, v12}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/Throwable;)V
throw v5
:try_end_15d
.catchall {:try_start_156 .. :try_end_15d} :catchall_15d
:catchall_15d
move-exception v5
:goto_15e
if-eqz v21, :cond_163
invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:cond_163
throw v5
:try_start_164
:cond_164
const-string/jumbo v5, "bytes "
const-string/jumbo v6, ""
move-object/from16 v0, v20
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v20
const/16 v5, 0x2d
move-object/from16 v0, v20
invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I
move-result v16
move-object/from16 v26, v20
if-ltz v16, :cond_189
const/4 v5, 0x0
move-object/from16 v0, v20
move/from16 v1, v16
invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v26
:cond_189
invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v24
const/16 v5, 0x2f
move-object/from16 v0, v20
invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I
move-result v16
if-ltz v16, :cond_204
add-int/lit8 v5, v16, 0x1
move-object/from16 v0, v20
invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v18
:cond_1a3
:goto_1a3
move-wide/from16 v0, v24
move-object/from16 v2, v17
iput-wide v0, v2, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
move-wide/from16 v0, v18
move-object/from16 v2, v17
iput-wide v0, v2, Lcom/lenovo/anyshare/sdk/internal/aa$a;->a:J
const-string/jumbo v5, "Task.Scheduler.Download.Executor.Collection"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "start:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-wide/from16 v0, v24
invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", length="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-wide/from16 v0, v18
invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " <- "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v29
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v5, 0x0
cmp-long v5, v18, v5
if-gez v5, :cond_207
new-instance v5, Lcom/lenovo/channel/exception/TransmitException;
const/4 v6, 0x0
const-string/jumbo v7, ""
invoke-direct {v5, v6, v7}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v5
:try_end_1f5
.catchall {:try_start_164 .. :try_end_1f5} :catchall_15d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_164 .. :try_end_1f5} :catch_f2
.catch Ljava/io/FileNotFoundException; {:try_start_164 .. :try_end_1f5} :catch_155
.catch Ljava/io/IOException; {:try_start_164 .. :try_end_1f5} :catch_1f5
.catch Ljava/lang/RuntimeException; {:try_start_164 .. :try_end_1f5} :catch_25c
:catch_1f5
move-exception v12
:goto_1f6
:try_start_1f6
const-string/jumbo v5, "Task.Scheduler.Download.Executor.Collection"
invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_200
.catchall {:try_start_1f6 .. :try_end_200} :catchall_15d
if-eqz v21, :cond_102
goto/16 :goto_ff
:cond_204
add-long v18, v18, v24
goto :goto_1a3
:cond_207
:try_start_207
move-object/from16 v0, p0
move-object/from16 v1, v23
move-object/from16 v2, p4
move-object/from16 v3, v17
move-object/from16 v4, p3
invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Lorg/apache/http/HttpResponse;Lcom/lenovo/anyshare/sdk/internal/ad;Lcom/lenovo/anyshare/sdk/internal/aa$a;Ljava/io/File;)V
:try_end_214
.catchall {:try_start_207 .. :try_end_214} :catchall_15d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_207 .. :try_end_214} :catch_f2
.catch Ljava/io/FileNotFoundException; {:try_start_207 .. :try_end_214} :catch_155
.catch Ljava/io/IOException; {:try_start_207 .. :try_end_214} :catch_1f5
.catch Ljava/lang/RuntimeException; {:try_start_207 .. :try_end_214} :catch_25c
if-eqz v21, :cond_219
invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:goto_219
:cond_219
move-object/from16 v0, v17
iget-wide v5, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
move-object/from16 v0, v17
iget-wide v7, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->a:J
cmp-long v5, v5, v7
if-gez v5, :cond_239
new-instance v5, Lcom/lenovo/channel/exception/TransmitException;
const/4 v6, 0x1
const-string/jumbo v7, "network is failed!"
invoke-direct {v5, v6, v7}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v5
:catch_22f
move-exception v12
move-object/from16 v21, v22
:goto_232
:try_start_232
new-instance v5, Lcom/lenovo/channel/exception/TransmitException;
const/4 v6, 0x0
invoke-direct {v5, v6, v12}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/Throwable;)V
throw v5
:cond_239
:try_end_239
.catchall {:try_start_232 .. :try_end_239} :catchall_15d
invoke-virtual/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J
move-result-wide v5
move-object/from16 v0, v17
iget-wide v7, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->a:J
add-long/2addr v5, v7
move-object/from16 v0, p4
invoke-virtual {v0, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/ad;->c(J)V
invoke-virtual/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/ad;->g()J
move-result-wide v7
invoke-virtual/range {p4 .. p4}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J
move-result-wide v9
move-object/from16 v5, p0
move-object/from16 v6, p4
invoke-virtual/range {v5 .. v10}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
return-void
:catchall_257
move-exception v5
move-object/from16 v21, v22
goto/16 :goto_15e
:catch_25c
move-exception v12
goto :goto_232
:catch_25e
move-exception v12
move-object/from16 v21, v22
goto :goto_1f6
:catch_262
move-exception v12
move-object/from16 v21, v22
goto/16 :goto_156
:catch_267
move-exception v12
move-object/from16 v21, v22
goto/16 :goto_f3
:cond_26c
move-object/from16 v21, v22
goto :goto_219
.end method
.method private a(Lorg/apache/http/HttpResponse;Lcom/lenovo/anyshare/sdk/internal/ad;Lcom/lenovo/anyshare/sdk/internal/aa$a;Ljava/io/File;)V
.registers 21
const/4 v10, 0x0
const/4 v12, 0x0
const/4 v14, 0x0
:try_start_3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ".tmp"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v15}, Lcom/lenovo/anyshare/sdk/internal/k;->a(Ljava/lang/String;)Ljava/io/File;
move-result-object v14
new-instance v13, Ljava/io/RandomAccessFile;
const-string/jumbo v1, "rw"
invoke-direct {v13, v14, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_2b
:try_end_2b
.catchall {:try_start_3 .. :try_end_2b} :catchall_128
move-object/from16 v0, p3
iget-wide v1, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
new-instance v11, Lcom/lenovo/anyshare/sdk/internal/ba;
move-object/from16 v0, p3
iget-wide v1, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->a:J
move-object/from16 v0, p3
iget-wide v3, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
invoke-direct {v11, v1, v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/ba;-><init>(JJ)V
invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v10
const/high16 v1, 0x1
new-array v7, v1, [B
const/4 v8, 0x0
:goto_4c
:cond_4c
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z
move-result v1
if-nez v1, :cond_5d
invoke-virtual {v10, v7}, Ljava/io/InputStream;->read([B)I
move-result v8
const/4 v1, -0x1
if-ne v8, v1, :cond_b5
:cond_5d
const-string/jumbo v1, "Task.Scheduler.Download.Executor.Collection"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J
move-result-wide v3
invoke-virtual {v11, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/ba;->b(J)J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " bytes/s, Download "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " completed and save at "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_9e
.catchall {:try_start_2b .. :try_end_9e} :catchall_c6
invoke-static {v13}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V
if-eqz v14, :cond_b4
move-object/from16 v0, p3
iget-wide v1, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->a:J
move-object/from16 v0, p3
iget-wide v3, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
cmp-long v1, v1, v3
if-nez v1, :cond_b4
move-object/from16 v0, p4
invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:cond_b4
return-void
:try_start_b5
:cond_b5
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->j()Z
move-result v1
if-eqz v1, :cond_df
new-instance v1, Lcom/lenovo/channel/exception/TransmitException;
const/16 v2, 0x8
const-string/jumbo v3, ""
invoke-direct {v1, v2, v3}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v1
:try_end_c6
.catchall {:try_start_b5 .. :try_end_c6} :catchall_c6
:catchall_c6
move-exception v1
move-object v12, v13
:goto_c8
invoke-static {v12}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V
if-eqz v14, :cond_de
move-object/from16 v0, p3
iget-wide v2, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->a:J
move-object/from16 v0, p3
iget-wide v4, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
cmp-long v2, v2, v4
if-nez v2, :cond_de
move-object/from16 v0, p4
invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:cond_de
throw v1
:cond_df
if-eqz v8, :cond_4c
const/4 v1, 0x0
:try_start_e2
invoke-virtual {v13, v7, v1, v8}, Ljava/io/RandomAccessFile;->write([BII)V
:try_end_e5
.catchall {:try_start_e2 .. :try_end_e5} :catchall_c6
.catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_120
:try_start_e5
move-object/from16 v0, p3
iget-wide v1, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
int-to-long v3, v8
add-long/2addr v1, v3
move-object/from16 v0, p3
iput-wide v1, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J
move-result-wide v1
move-object/from16 v0, p3
iget-wide v3, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
add-long/2addr v1, v3
invoke-virtual {v11, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ba;->a(J)Z
move-result v1
if-eqz v1, :cond_4c
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->g()J
move-result-wide v3
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J
move-result-wide v1
move-object/from16 v0, p3
iget-wide v5, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
add-long/2addr v5, v1
move-object/from16 v1, p0
move-object/from16 v2, p2
invoke-virtual/range {v1 .. v6}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
invoke-virtual/range {p2 .. p2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J
move-result-wide v1
move-object/from16 v0, p3
iget-wide v3, v0, Lcom/lenovo/anyshare/sdk/internal/aa$a;->b:J
add-long/2addr v1, v3
invoke-virtual {v11, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ba;->c(J)V
goto/16 :goto_4c
:catch_120
move-exception v9
new-instance v1, Lcom/lenovo/channel/exception/TransmitException;
const/4 v2, 0x7
invoke-direct {v1, v2, v9}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/Throwable;)V
throw v1
:try_end_128
.catchall {:try_start_e5 .. :try_end_128} :catchall_c6
:catchall_128
move-exception v1
goto :goto_c8
.end method
.method  a(Lcom/lenovo/anyshare/sdk/internal/ad;)V
.registers 9
new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bf;
invoke-direct {v2}, Lcom/lenovo/anyshare/sdk/internal/bf;-><init>()V
:try_start_5
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->j()Z
move-result v3
if-eqz v3, :cond_3d
new-instance v3, Lcom/lenovo/channel/exception/TransmitException;
const/16 v4, 0x8
const-string/jumbo v5, ""
invoke-direct {v3, v4, v5}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v3
:catchall_16
:try_end_16
.catchall {:try_start_5 .. :try_end_16} :catchall_16
move-exception v3
const-string/jumbo v4, "Task.Scheduler.Download.Executor.Collection"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "download time spend: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " ms"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
throw v3
:cond_3d
:try_start_3d
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_5a
const-string/jumbo v3, "Task.Scheduler.Download.Executor.Collection"
const-string/jumbo v4, "download collection url is empty!"
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/lenovo/channel/exception/TransmitException;
const/4 v4, 0x0
const-string/jumbo v5, ""
invoke-direct {v3, v4, v5}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v3
:cond_5a
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v3
check-cast v3, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getCollection()Lcom/lenovo/channel/base/ShareCollection;
move-result-object v1
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/aa$1;->a:[I
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareCollection;->getType()Lcom/lenovo/content/base/ContentType;
move-result-object v4
invoke-virtual {v4}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v4
aget v3, v3, v4
:try_end_70
.catchall {:try_start_3d .. :try_end_70} :catchall_16
packed-switch v3, :pswitch_data_b6
:goto_73
const-string/jumbo v3, "Task.Scheduler.Download.Executor.Collection"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "download time spend: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/bf;->a()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " ms"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
:try_start_99
:pswitch_99
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareCollection;->getCollectionObject()Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v4
invoke-direct {p0, v3, v4, p1}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
goto :goto_73
:pswitch_a5
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareCollection;->getCollectionObject()Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
move-result-object v3
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareCollection;->getType()Lcom/lenovo/content/base/ContentType;
move-result-object v4
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v5
invoke-direct {p0, v3, v4, v5, p1}, Lcom/lenovo/anyshare/sdk/internal/aa;->a(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;Lcom/lenovo/content/base/ContentType;Ljava/io/File;Lcom/lenovo/anyshare/sdk/internal/ad;)V
:try_end_b4
.catchall {:try_start_99 .. :try_end_b4} :catchall_16
goto :goto_73
nop
:pswitch_data_b6
.packed-switch 0x1
:pswitch_99
:pswitch_a5
:pswitch_a5
:pswitch_a5
.end packed-switch
.end method