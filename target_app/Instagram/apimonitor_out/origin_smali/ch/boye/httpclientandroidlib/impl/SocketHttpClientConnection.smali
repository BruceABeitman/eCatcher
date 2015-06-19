.class public Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;
.super Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;
.source "SocketHttpClientConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpInetConnection;


# instance fields
.field private volatile open:Z

.field private volatile socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method protected assertNotOpen()V
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->open:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method protected assertOpen()V
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->open:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method protected bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-static {p2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->init(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->open:Z

    return-void
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->open:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->open:Z

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    :try_start_a
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->doFlush()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    :try_start_d
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_10} :catch_20

    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_13} :catch_20

    :goto_13
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_4

    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    throw v0

    :catch_1c
    move-exception v0

    goto :goto_10

    :catch_1e
    move-exception v0

    goto :goto_13

    :catch_20
    move-exception v0

    goto :goto_13
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
    .registers 5

    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
    .registers 5

    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLocalPort()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRemotePort()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 3

    const/4 v0, -0x1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_b

    :try_start_5
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v0

    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public isOpen()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->open:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->assertOpen()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    :try_start_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public shutdown()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->open:Z

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_a
    return-void
.end method
