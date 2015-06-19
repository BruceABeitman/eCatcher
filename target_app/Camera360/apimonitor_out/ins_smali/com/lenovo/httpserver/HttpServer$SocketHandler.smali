.class  Lcom/lenovo/httpserver/HttpServer$SocketHandler;
.super Ljava/lang/Object;
.source "HttpServer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/lenovo/httpserver/HttpServer;
.field private final b:Ljava/net/Socket;
.field private final c:Ljava/lang/String;
.field private final d:I
.method public constructor <init>(Lcom/lenovo/httpserver/HttpServer;Ljava/net/Socket;)V
.registers 7
iput-object p1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->a:Lcom/lenovo/httpserver/HttpServer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;
move-result-object v1
invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->c:Ljava/lang/String;
iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v1}, Ljava/net/Socket;->getPort()I
move-result v1
iput v1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->d:I
:try_start_1b
iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
const/4 v2, 0x1
const/16 v3, 0xa
invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V
iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V
iget-object v1, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
const/16 v2, 0x4e20
invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
:goto_30
:try_end_30
.catch Ljava/net/SocketException; {:try_start_1b .. :try_end_30} :catch_31
return-void
:catch_31
move-exception v0
const-string/jumbo v1, "HttpServer"
const-string/jumbo v2, "set socket linger error."
invoke-static {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_30
.end method
.method private a()Z
.registers 18
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v13}, Ljava/net/Socket;->isConnected()Z
move-result v13
if-eqz v13, :cond_14
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v13}, Ljava/net/Socket;->isClosed()Z
move-result v13
if-eqz v13, :cond_16
:cond_14
const/4 v2, 0x1
:cond_15
:goto_15
return v2
:cond_16
const/4 v2, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
const/4 v6, 0x0
const/4 v8, 0x0
:try_start_1d
new-instance v7, Lcom/lenovo/httpserver/HttpRequest;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->c:Ljava/lang/String;
move-object/from16 v0, p0
iget v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->d:I
invoke-direct {v7, v13, v14, v15}, Lcom/lenovo/httpserver/HttpRequest;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V
:try_start_32
:try_end_32
.catchall {:try_start_1d .. :try_end_32} :catchall_237
.catch Ljava/net/SocketException; {:try_start_1d .. :try_end_32} :catch_b7
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_32} :catch_133
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_1ac
invoke-virtual {v7}, Lcom/lenovo/httpserver/HttpRequest;->a()Z
move-result v13
if-eqz v13, :cond_5c
new-instance v9, Lcom/lenovo/httpserver/HttpResponse;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v13
invoke-direct {v9, v13}, Lcom/lenovo/httpserver/HttpResponse;-><init>(Ljava/io/OutputStream;)V
:try_end_45
.catchall {:try_start_32 .. :try_end_45} :catchall_2a0
.catch Ljava/net/SocketException; {:try_start_32 .. :try_end_45} :catch_2bc
.catch Ljava/io/IOException; {:try_start_32 .. :try_end_45} :catch_2b3
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_45} :catch_2aa
:try_start_45
invoke-virtual {v9, v7}, Lcom/lenovo/httpserver/HttpResponse;->a(Lcom/lenovo/httpserver/HttpRequest;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->a:Lcom/lenovo/httpserver/HttpServer;
invoke-virtual {v7}, Lcom/lenovo/httpserver/HttpRequest;->getOnlyPath()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Lcom/lenovo/httpserver/HttpServer;->a(Ljava/lang/String;)Lcom/lenovo/httpserver/HttpServlet;
move-result-object v10
if-eqz v10, :cond_59
invoke-virtual {v10, v7, v9}, Lcom/lenovo/httpserver/HttpServlet;->service(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
:cond_59
iget-boolean v2, v9, Lcom/lenovo/httpserver/HttpResponse;->mCloseSocket:Z
:try_end_5b
.catchall {:try_start_45 .. :try_end_5b} :catchall_2a3
.catch Ljava/net/SocketException; {:try_start_45 .. :try_end_5b} :catch_2c0
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_5b} :catch_2b7
.catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_2ae
move-object v8, v9
:cond_5c
if-eqz v8, :cond_61
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->a()V
:cond_61
if-eqz v7, :cond_a9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
sub-long v4, v13, v11
const-string/jumbo v13, "HttpServer"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, " ms. to serve ["
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->c:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, ":"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->d:I
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, "] url -> "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v7}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_a9
if-eqz v8, :cond_29a
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->getPostCloseCallback()Ljava/lang/Runnable;
move-result-object v1
:goto_af
if-eqz v1, :cond_b4
:try_start_b1
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
:try_end_b4
.catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_29d
:cond_b4
:goto_b4
move-object v6, v7
goto/16 :goto_15
:catch_b7
move-exception v3
:goto_b8
:try_start_b8
const-string/jumbo v13, "HttpServer"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v15, "SocketException:"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v3}, Ljava/net/SocketException;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_d6
.catchall {:try_start_b8 .. :try_end_d6} :catchall_237
if-eqz v8, :cond_db
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->a()V
:cond_db
if-eqz v6, :cond_123
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
sub-long v4, v13, v11
const-string/jumbo v13, "HttpServer"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, " ms. to serve ["
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->c:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, ":"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->d:I
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, "] url -> "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v6}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_123
if-eqz v8, :cond_292
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->getPostCloseCallback()Ljava/lang/Runnable;
move-result-object v1
:goto_129
if-eqz v1, :cond_15
:try_start_12b
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
:try_end_12e
.catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_130
goto/16 :goto_15
:catch_130
move-exception v13
goto/16 :goto_15
:catch_133
move-exception v3
:try_start_134
:goto_134
const-string/jumbo v13, "HttpServer"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v15, "IOException:"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_152
.catchall {:try_start_134 .. :try_end_152} :catchall_237
if-eqz v8, :cond_157
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->a()V
:cond_157
if-eqz v6, :cond_19f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
sub-long v4, v13, v11
const-string/jumbo v13, "HttpServer"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, " ms. to serve ["
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->c:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, ":"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->d:I
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, "] url -> "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v6}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_19f
if-eqz v8, :cond_295
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->getPostCloseCallback()Ljava/lang/Runnable;
move-result-object v1
:goto_1a5
if-eqz v1, :cond_15
:try_start_1a7
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
:try_end_1aa
.catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1aa} :catch_130
goto/16 :goto_15
:catch_1ac
move-exception v3
:goto_1ad
:try_start_1ad
const-string/jumbo v13, "HttpServer"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v15, "Exception:"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1cb
.catchall {:try_start_1ad .. :try_end_1cb} :catchall_237
if-eqz v8, :cond_1d6
const/16 v13, 0x1f4
:try_start_1cf
invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v14
invoke-virtual {v8, v13, v14}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V
:try_end_1d6
.catchall {:try_start_1cf .. :try_end_1d6} :catchall_237
.catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d6} :catch_2a7
:goto_1d6
:cond_1d6
if-eqz v8, :cond_1db
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->a()V
:cond_1db
if-eqz v6, :cond_223
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
sub-long v4, v13, v11
const-string/jumbo v13, "HttpServer"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, " ms. to serve ["
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->c:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, ":"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget v15, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->d:I
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, "] url -> "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v6}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_223
if-eqz v8, :cond_298
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->getPostCloseCallback()Ljava/lang/Runnable;
move-result-object v1
:goto_229
if-eqz v1, :cond_15
:try_start_22b
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
:try_end_22e
.catch Ljava/lang/Exception; {:try_start_22b .. :try_end_22e} :catch_130
goto/16 :goto_15
:cond_230
const/4 v1, 0x0
:goto_231
if-eqz v1, :cond_236
:try_start_233
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
:goto_236
:cond_236
:try_end_236
.catch Ljava/lang/Exception; {:try_start_233 .. :try_end_236} :catch_290
throw v13
:catchall_237
move-exception v13
:goto_238
if-eqz v8, :cond_23d
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->a()V
:cond_23d
if-eqz v6, :cond_289
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
sub-long v4, v14, v11
const-string/jumbo v14, "HttpServer"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v15
const-string/jumbo v16, " ms. to serve ["
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->c:Ljava/lang/String;
move-object/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string/jumbo v16, ":"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->d:I
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string/jumbo v16, "] url -> "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v6}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_289
if-eqz v8, :cond_230
invoke-virtual {v8}, Lcom/lenovo/httpserver/HttpResponse;->getPostCloseCallback()Ljava/lang/Runnable;
move-result-object v1
goto :goto_231
:catch_290
move-exception v14
goto :goto_236
:cond_292
const/4 v1, 0x0
goto/16 :goto_129
:cond_295
const/4 v1, 0x0
goto/16 :goto_1a5
:cond_298
const/4 v1, 0x0
goto :goto_229
:cond_29a
const/4 v1, 0x0
goto/16 :goto_af
:catch_29d
move-exception v13
goto/16 :goto_b4
:catchall_2a0
move-exception v13
move-object v6, v7
goto :goto_238
:catchall_2a3
move-exception v13
move-object v8, v9
move-object v6, v7
goto :goto_238
:catch_2a7
move-exception v13
goto/16 :goto_1d6
:catch_2aa
move-exception v3
move-object v6, v7
goto/16 :goto_1ad
:catch_2ae
move-exception v3
move-object v8, v9
move-object v6, v7
goto/16 :goto_1ad
:catch_2b3
move-exception v3
move-object v6, v7
goto/16 :goto_134
:catch_2b7
move-exception v3
move-object v8, v9
move-object v6, v7
goto/16 :goto_134
:catch_2bc
move-exception v3
move-object v6, v7
goto/16 :goto_b8
:catch_2c0
move-exception v3
move-object v8, v9
move-object v6, v7
goto/16 :goto_b8
.end method
.method private b()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:cond_11
:try_start_11
:try_end_11
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_2c
:goto_11
iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:goto_22
:cond_22
:try_start_22
:try_end_22
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_2a
iget-object v0, p0, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:goto_27
:try_end_27
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_28
return-void
:catch_28
move-exception v0
goto :goto_27
:catch_2a
move-exception v0
goto :goto_22
:catch_2c
move-exception v0
goto :goto_11
.end method
.method public run()V
.registers 2
:cond_0
invoke-direct {p0}, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->a()Z
move-result v0
if-eqz v0, :cond_0
invoke-direct {p0}, Lcom/lenovo/httpserver/HttpServer$SocketHandler;->b()V
return-void
.end method