.class public final Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# instance fields
.field private final defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

.field private final local:Lch/boye/httpclientandroidlib/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    return-void
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final getDefaults()Lch/boye/httpclientandroidlib/protocol/HttpContext;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    return-object v0
.end method

.method public final removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
