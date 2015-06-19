.class public Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;
.super Ljava/lang/Object;
.source "RoutedRequest.java"
.field protected final request:Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
.field protected final route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->request:Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
return-void
.end method
.method public final getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->request:Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
return-object v0
.end method
.method public final getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
return-object v0
.end method