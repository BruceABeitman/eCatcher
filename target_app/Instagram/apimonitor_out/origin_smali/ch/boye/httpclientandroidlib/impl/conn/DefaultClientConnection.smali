.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;
.super Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connSecure:Z

.field public headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lch/boye/httpclientandroidlib/HttpHost;

.field public wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "ch.boye.httpclientandroidlib.headers"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "ch.boye.httpclientandroidlib.wire"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    :try_start_0
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->close()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection closed"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method protected createResponseParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;
    .registers 6

    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/DefaultResponseParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
    .registers 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/16 p2, 0x2000

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    move-result-object v1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;

    new-instance v2, Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/Wire;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
    .registers 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/16 p2, 0x2000

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    move-result-object v1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;

    new-instance v2, Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/Wire;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    return-object v0
.end method

.method public final isSecure()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    return v0
.end method

.method public openCompleted(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 5

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->assertNotOpen()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public opening(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;)V
    .registers 5

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->assertNotOpen()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->shutdown:Z

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection already shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 9

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receiving response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_24
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<< "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_4e
    if-ge v0, v3, :cond_6d

    aget-object v4, v2, v0

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<< "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_6d
    return-object v1
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .registers 9

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_20
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v2, :cond_6c

    aget-object v3, v1, v0

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_6c
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shutdown()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->shutdown:Z

    :try_start_3
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->shutdown()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection shut down"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error shutting down connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 7

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->assertOpen()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p4, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-eqz p1, :cond_1e

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p4}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    :cond_1e
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    iput-boolean p3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    return-void
.end method
