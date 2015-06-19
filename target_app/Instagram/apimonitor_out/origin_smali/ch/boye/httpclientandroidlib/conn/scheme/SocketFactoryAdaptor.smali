.class Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .registers 10

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
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, p1, v2, v0, p6}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

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
    instance-of v0, p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    check-cast p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    iget-object v1, p1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_17
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
