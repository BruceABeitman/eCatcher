.class public Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpecFactory;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/cookie/CookieSpec;
    .registers 4

    if-eqz p1, :cond_20

    const/4 v1, 0x0

    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_19
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpec;-><init>()V

    goto :goto_1f

    :cond_26
    move-object v0, v1

    goto :goto_19
.end method
