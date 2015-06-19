.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2965VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965VersionAttributeHandler.java"

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
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    const-string v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :try_start_14
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_22

    move-result v0

    :goto_18
    if-gez v0, :cond_25

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    const-string v1, "Invalid cookie version."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_22
    move-exception v0

    const/4 v0, -0x1

    goto :goto_18

    :cond_25
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/SetCookie;->setVersion(I)V

    return-void
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz v0, :cond_24

    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    if-eqz v0, :cond_24

    check-cast p1, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    const-string v0, "version"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;

    const-string v1, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return-void
.end method
