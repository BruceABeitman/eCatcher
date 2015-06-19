.class public final Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocketFactory()Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;
    .registers 1

    sget-object v0, Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .registers 12

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p6, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :cond_1a
    if-nez p4, :cond_1e

    if-lez p5, :cond_29

    :cond_1e
    if-gez p5, :cond_21

    const/4 p5, 0x0

    :cond_21
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_29
    invoke-static {p6}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v2

    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    :try_start_53
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v4, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_5b
    .catch Ljava/net/SocketTimeoutException; {:try_start_53 .. :try_end_5b} :catch_5e
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5b} :catch_7a

    :cond_5b
    if-eqz v1, :cond_82

    throw v1

    :catch_5e
    move-exception v1

    new-instance v1, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " timed out"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7a
    move-exception v0

    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    move-object v1, v0

    goto :goto_47

    :cond_82
    return-object p1
.end method

.method public final createSocket()Ljava/net/Socket;
    .registers 2

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method
