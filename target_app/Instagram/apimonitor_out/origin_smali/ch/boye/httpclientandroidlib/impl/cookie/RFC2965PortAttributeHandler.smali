.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2965PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandler.java"

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

.method private static parsePortAttribute(Ljava/lang/String;)[I
    .registers 5

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    aget v3, v2, v0

    if-gez v3, :cond_48

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    const-string v1, "Invalid Port attribute."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Port attribute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_4b
    return-object v2
.end method

.method private static portMatch(I[I)Z
    .registers 6

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget v3, p1, v1

    if-ne p0, v3, :cond_b

    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-nez p2, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPort()I

    move-result v2

    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    const-string v3, "port"

    invoke-interface {v0, v3}, Lch/boye/httpclientandroidlib/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPorts()[I

    move-result-object v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_2f
    return v0

    :cond_30
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPorts()[I

    move-result-object v0

    invoke-static {v2, v0}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    goto :goto_2f

    :cond_3c
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz v0, :cond_23

    check-cast p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965PortAttributeHandler;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object v0

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/cookie/SetCookie2;->setPorts([I)V

    :cond_23
    return-void
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPort()I

    move-result v1

    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    if-eqz v0, :cond_39

    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    const-string v2, "port"

    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPorts()[I

    move-result-object v0

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;

    const-string v1, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    return-void
.end method
