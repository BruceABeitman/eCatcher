.class public Lch/boye/httpclientandroidlib/conn/params/ConnConnectionParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ConnConnectionParamBean.java"
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 2
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public setMaxStatusLineGarbage(I)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "http.connection.max-status-line-garbage"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method