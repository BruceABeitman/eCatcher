.class public Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ConnRouteParamBean.java"
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 2
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public setDefaultProxy(Lch/boye/httpclientandroidlib/HttpHost;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.route.default-proxy"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setForcedRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.route.forced-route"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setLocalAddress(Ljava/net/InetAddress;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.route.local-address"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method