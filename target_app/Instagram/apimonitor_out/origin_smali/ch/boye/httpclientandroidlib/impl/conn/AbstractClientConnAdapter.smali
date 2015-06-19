.class public abstract Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;
.super Ljava/lang/Object;
.source "AbstractClientConnAdapter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# instance fields
.field private volatile connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

.field private volatile duration:J

.field private volatile markedReusable:Z

.field private volatile released:Z

.field private volatile wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    return-void
.end method


# virtual methods
.method public declared-synchronized abortConnection()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1e

    :try_start_d
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->shutdown()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_21

    :goto_10
    :try_start_10
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_21
    move-exception v0

    goto :goto_10
.end method

.method protected final assertNotAborted()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connection has been shut down"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method protected final assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_e

    :cond_8
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    :cond_e
    return-void
.end method

.method protected declared-synchronized detach()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->flush()V

    return-void
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_14

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    move-result-object v0

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    :goto_e
    return-object v1

    :cond_f
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_1f

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_1d
    move-object v1, v0

    goto :goto_e

    :cond_1f
    move-object v0, v1

    goto :goto_1d
.end method

.method public getSocketTimeout()I
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method protected getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    return-object v0
.end method

.method public isMarkedReusable()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return v0
.end method

.method public isOpen()Z
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    goto :goto_7
.end method

.method protected isReleased()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    return v0
.end method

.method public isResponseAvailable(I)Z
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isStale()Z

    move-result v0

    goto :goto_7
.end method

.method public markReusable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return-void
.end method

.method public receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized releaseConnection()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_14

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    move-result-object v0

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    return-void
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_11

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    :goto_c
    return-void

    :cond_d
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    goto :goto_c
.end method

.method public setSocketTimeout(I)V
    .registers 3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public unmarkReusable()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return-void
.end method
