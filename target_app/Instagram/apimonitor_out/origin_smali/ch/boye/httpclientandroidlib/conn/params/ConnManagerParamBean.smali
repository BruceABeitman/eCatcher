.class public Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ConnManagerParamBean.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setConnectionsPerRoute(Lch/boye/httpclientandroidlib/conn/params/ConnPerRouteBean;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.conn-manager.max-per-route"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setMaxTotalConnections(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.conn-manager.max-total"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setTimeout(J)V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.conn-manager.timeout"

    invoke-interface {v0, v1, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method
