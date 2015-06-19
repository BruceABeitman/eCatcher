.class public abstract Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.super Ljava/lang/Object;
.source "HttpAbstractParamBean.java"


# instance fields
.field protected final params:Lch/boye/httpclientandroidlib/params/HttpParams;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method
