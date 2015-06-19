.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicCommentHandler;
.super Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicCommentHandler.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setComment(Ljava/lang/String;)V

    return-void
.end method
