.class public Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;
.implements Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    return-void
.end method

.method public static getSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;
    .registers 1

    new-instance v0, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_5

    if-lez p5, :cond_d

    :cond_5
    if-gez p5, :cond_8

    const/4 p5, 0x0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_d
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    invoke-interface {v1, p2}, Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    :goto_17
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, p1, v2, v0, p6}, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_17
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .registers 8

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote address may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p4, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :cond_1a
    if-eqz p3, :cond_26

    invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoReuseaddr(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    invoke-virtual {p1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_26
    invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v0

    invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v1

    :try_start_2e
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p1, p2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_34
    .catch Ljava/net/SocketTimeoutException; {:try_start_2e .. :try_end_34} :catch_35

    return-object p1

    :catch_35
    move-exception v0

    new-instance v0, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .registers 3

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method
