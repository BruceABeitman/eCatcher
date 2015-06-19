.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected final schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    if-nez p1, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry amy not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    return-void
.end method


# virtual methods
.method public createConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 19

    if-nez p1, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    if-nez p2, :cond_14

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Target host may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    if-nez p5, :cond_1e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameters may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Connection must not be open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    move-result-object v6

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->resolvePort(I)I

    move-result v8

    const/4 v2, 0x0

    :goto_4b
    array-length v3, v7

    if-ge v2, v3, :cond_a6

    aget-object v4, v7, v2

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_a7

    const/4 v3, 0x1

    :goto_56
    move-object/from16 v0, p5

    invoke-interface {v6, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v5

    invoke-interface {p1, v5, p2}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;)V

    new-instance v9, Lch/boye/httpclientandroidlib/impl/conn/HttpInetSocketAddress;

    invoke-direct {v9, p2, v4, v8}, Lch/boye/httpclientandroidlib/impl/conn/HttpInetSocketAddress;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;I)V

    const/4 v4, 0x0

    if-eqz p3, :cond_6f

    new-instance v4, Ljava/net/InetSocketAddress;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_6f
    iget-object v10, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v10}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_8b

    iget-object v10, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Connecting to "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_8b
    :try_start_8b
    move-object/from16 v0, p5

    invoke-interface {v6, v5, v9, v4, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v4

    if-eq v5, v4, :cond_dc

    invoke-interface {p1, v4, p2}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;)V

    :goto_96
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v4, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v6, v4}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    move-object/from16 v0, p5

    invoke-interface {p1, v4, v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->openCompleted(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    :try_end_a6
    .catch Ljava/net/ConnectException; {:try_start_8b .. :try_end_a6} :catch_a9
    .catch Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException; {:try_start_8b .. :try_end_a6} :catch_b2

    :cond_a6
    return-void

    :cond_a7
    const/4 v3, 0x0

    goto :goto_56

    :catch_a9
    move-exception v4

    if-eqz v3, :cond_b6

    new-instance v2, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;

    invoke-direct {v2, p2, v4}, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/ConnectException;)V

    throw v2

    :catch_b2
    move-exception v4

    if-eqz v3, :cond_b6

    throw v4

    :cond_b6
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_d8

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connect to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timed out. Connection will be retried using another IP address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_d8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4b

    :cond_dc
    move-object v4, v5

    goto :goto_96
.end method

.method protected prepareSocket(Ljava/net/Socket;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getLinger(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v1

    if-ltz v1, :cond_1a

    if-lez v1, :cond_1b

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public updateSecureConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p4, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection must be open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    instance-of v0, v0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    if-nez v0, :cond_5d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Target scheme ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must have layered socket factory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    :try_start_63
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v1, v4}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->resolvePort(I)I

    move-result v1

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v1, v4}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_77
    .catch Ljava/net/ConnectException; {:try_start_63 .. :try_end_77} :catch_83

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {p1, v1, p2, v0, p4}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void

    :catch_83
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;

    invoke-direct {v1, p2, v0}, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/ConnectException;)V

    throw v1
.end method
