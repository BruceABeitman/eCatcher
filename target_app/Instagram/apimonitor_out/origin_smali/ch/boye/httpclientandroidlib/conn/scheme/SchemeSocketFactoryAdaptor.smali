.class Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .registers 12

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    :cond_14
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    instance-of v0, p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    check-cast p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    iget-object v1, p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_17
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getFactory()Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
