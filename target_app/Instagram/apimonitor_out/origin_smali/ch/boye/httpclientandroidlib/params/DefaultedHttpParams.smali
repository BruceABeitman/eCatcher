.class public final Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
.super Lch/boye/httpclientandroidlib/params/AbstractHttpParams;
.source "DefaultedHttpParams.java"


# instance fields
.field private final defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

.field private final local:Lch/boye/httpclientandroidlib/params/HttpParams;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 5

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method


# virtual methods
.method public final copy()Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->copy()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    new-instance v1, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v1
.end method

.method public final getDefaults()Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v1, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->defaults:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public final removeParameter(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;->local:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
