.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;->markReusable()V

    return-void
.end method


# virtual methods
.method protected detach()V
    .registers 1

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->detach()V

    return-void
.end method

.method protected getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .registers 2

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
    .registers 2

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    return-object v0
.end method
