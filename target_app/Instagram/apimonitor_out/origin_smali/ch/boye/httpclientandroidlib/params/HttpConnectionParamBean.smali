.class public Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "HttpConnectionParamBean.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setConnectionTimeout(I)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    return-void
.end method

.method public setLinger(I)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setLinger(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    return-void
.end method

.method public setSoTimeout(I)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    return-void
.end method

.method public setSocketBufferSize(I)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setStaleCheckingEnabled(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpConnectionParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    return-void
.end method
