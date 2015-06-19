.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.source "SingleClientConnManager.java"
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
.registers 4
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->markReusable()V
iput-object p3, p2, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
return-void
.end method