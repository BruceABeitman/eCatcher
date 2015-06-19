.class public Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "HttpProtocolParamBean.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setContentCharset(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setContentCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.method public setUseExpectContinue(Z)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUseExpectContinue(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Lch/boye/httpclientandroidlib/HttpVersion;)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpProtocolParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-void
.end method
