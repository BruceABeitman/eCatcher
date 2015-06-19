.class Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactoryAdaptor;
.super Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;
.source "LayeredSocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    return-void
.end method


# virtual methods
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
