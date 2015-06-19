.class final Lcom/a/a/g;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/f;


# direct methods
.method constructor <init>(Lcom/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->a(Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_9} :catch_19e
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_9} :catch_288
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_2a9

    :try_start_9
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {}, Lcom/a/a/f;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1bd

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    move v4, v0

    :goto_27
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    const-string v0, "/"

    :goto_39
    iget-object v3, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v3}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v3}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_6b
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v7, "wss"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    const-string v0, "https"

    :goto_7f
    new-instance v7, Ljava/net/URI;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "//"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v9}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v0, v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    iget-object v8, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v8}, Lcom/a/a/f;->c(Lcom/a/a/f;)Lcom/a/a/e;

    move-result-object v8

    iget-object v9, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v9}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    const-string v10, "wss"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/a/a/e;->createSocket(Z)Ljava/net/Socket;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/a/a/f;->a(Lcom/a/a/f;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->c(Lcom/a/a/f;)Lcom/a/a/e;

    move-result-object v0

    iget-object v8, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v8}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;

    move-result-object v8

    iget-object v9, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v9}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9, v4}, Lcom/a/a/e;->connectSocket(Ljava/net/Socket;Ljava/lang/String;I)V

    new-instance v4, Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "GET "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " HTTP/1.1\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Upgrade: websocket\r\n"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Connection: Upgrade\r\n"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Host: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v3}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Origin: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sec-WebSocket-Key: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Version: 13\r\n"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->e(Lcom/a/a/f;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e9

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->e(Lcom/a/a/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_174
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    const-string v7, "%s: %s\r\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_19a
    .catchall {:try_start_9 .. :try_end_19a} :catchall_19b

    goto :goto_174

    :catchall_19b
    move-exception v0

    :try_start_19c
    monitor-exit v5

    throw v0
    :try_end_19e
    .catch Ljava/io/EOFException; {:try_start_19c .. :try_end_19e} :catch_19e
    .catch Ljavax/net/ssl/SSLException; {:try_start_19c .. :try_end_19e} :catch_288
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19e} :catch_2a9

    :catch_19e
    move-exception v0

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->a(Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a6
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_298

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->f(Lcom/a/a/f;)Lcom/a/a/k;

    move-result-object v0

    const/16 v2, -0x4b0

    const-string v3, "EOF"

    invoke-virtual {v0, v2, v3}, Lcom/a/a/k;->onDisconnect(ILjava/lang/String;)V

    :goto_1bb
    monitor-exit v1
    :try_end_1bc
    .catchall {:try_start_1a6 .. :try_end_1bc} :catchall_2a6

    :goto_1bc
    return-void

    :cond_1bd
    :try_start_1bd
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "wss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    const/16 v0, 0x1bb

    move v4, v0

    goto/16 :goto_27

    :cond_1d4
    const/16 v0, 0x50

    move v4, v0

    goto/16 :goto_27

    :cond_1d9
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->b(Lcom/a/a/f;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39

    :cond_1e5
    const-string v0, "http"

    goto/16 :goto_7f

    :cond_1e9
    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    new-instance v3, Lcom/a/a/c;

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/a/a/c;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v3}, Lcom/a/a/f;->a(Lcom/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/f;->b(Ljava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v0

    if-nez v0, :cond_216

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "Received no reply from server."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_216
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v7, 0x65

    if-eq v4, v7, :cond_22c

    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_22c
    move v0, v2

    :cond_22d
    :goto_22d
    iget-object v2, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v3}, Lcom/a/a/f;->a(Lcom/a/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_269

    iget-object v4, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v2}, Lcom/a/a/f;->c(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Sec-WebSocket-Accept"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22d

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v6}, Lcom/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_267

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "Bad Sec-WebSocket-Accept header value."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_267
    move v0, v1

    goto :goto_22d

    :cond_269
    if-nez v0, :cond_273

    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "No Sec-WebSocket-Accept header."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_273
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->f(Lcom/a/a/f;)Lcom/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/k;->onConnect()V

    monitor-exit v5
    :try_end_27d
    .catchall {:try_start_1bd .. :try_end_27d} :catchall_19b

    :try_start_27d
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->g(Lcom/a/a/f;)Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/a/b;->a(Lcom/a/a/c;)V
    :try_end_286
    .catch Ljava/io/EOFException; {:try_start_27d .. :try_end_286} :catch_19e
    .catch Ljavax/net/ssl/SSLException; {:try_start_27d .. :try_end_286} :catch_288
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_286} :catch_2a9

    goto/16 :goto_1bc

    :catch_288
    move-exception v0

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->f(Lcom/a/a/f;)Lcom/a/a/k;

    move-result-object v0

    const/16 v1, -0x44c

    const-string v2, "SSL"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/k;->onDisconnect(ILjava/lang/String;)V

    goto/16 :goto_1bc

    :cond_298
    :try_start_298
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->f(Lcom/a/a/f;)Lcom/a/a/k;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "EOF"

    invoke-virtual {v0, v2, v3}, Lcom/a/a/k;->onDisconnect(ILjava/lang/String;)V
    :try_end_2a4
    .catchall {:try_start_298 .. :try_end_2a4} :catchall_2a6

    goto/16 :goto_1bb

    :catchall_2a6
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2a9
    move-exception v0

    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/f;

    invoke-static {v1}, Lcom/a/a/f;->f(Lcom/a/a/f;)Lcom/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/k;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_1bc

    :cond_2b5
    move-object v3, v0

    goto/16 :goto_6b
.end method
