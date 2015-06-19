.class public Lch/boye/httpclientandroidlib/client/params/ClientParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ClientParamBean.java"
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 2
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public setAllowCircularRedirects(Z)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.allow-circular-redirects"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setConnectionManagerFactory(Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.connection-manager.factory-object"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setConnectionManagerFactoryClassName(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.connection-manager.factory-class-name"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setCookiePolicy(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.cookie-policy"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setDefaultHeaders(Ljava/util/Collection;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.default-headers"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setDefaultHost(Lch/boye/httpclientandroidlib/HttpHost;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.default-host"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setHandleAuthentication(Z)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.handle-authentication"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setHandleRedirects(Z)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.handle-redirects"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setMaxRedirects(I)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.max-redirects"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setRejectRelativeRedirect(Z)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.reject-relative-redirect"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setVirtualHost(Lch/boye/httpclientandroidlib/HttpHost;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/params/ClientParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.virtual-host"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method