.class public Lch/boye/httpclientandroidlib/cookie/params/CookieSpecParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "CookieSpecParamBean.java"
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 2
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public setDatePatterns(Ljava/util/Collection;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/cookie/params/CookieSpecParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.cookie-datepatterns"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setSingleHeader(Z)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/cookie/params/CookieSpecParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.protocol.single-cookie-header"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method