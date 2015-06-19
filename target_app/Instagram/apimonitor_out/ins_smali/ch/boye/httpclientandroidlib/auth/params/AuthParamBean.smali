.class public Lch/boye/httpclientandroidlib/auth/params/AuthParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "AuthParamBean.java"
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 2
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public setCredentialCharset(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/params/AuthParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/auth/params/AuthParams;->setCredentialCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V
return-void
.end method