.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2965CommentUrlAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965CommentUrlAttributeHandler.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;


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
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4

    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz v0, :cond_9

    check-cast p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/cookie/SetCookie2;->setCommentURL(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .registers 3

    return-void
.end method
