.class Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactoryAdaptor;
.super Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;
.source "LayeredSchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    return-void
.end method


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
