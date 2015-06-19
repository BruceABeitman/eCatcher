.class public abstract Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;
.super Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/AbstractCookieSpec;-><init>()V

    return-void
.end method

.method protected static getDefaultDomain(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultPath(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_15

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    move-object v0, v1

    goto :goto_14
.end method


# virtual methods
.method public match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z
    .registers 5

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
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method protected parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lch/boye/httpclientandroidlib/HeaderElement;",
            "Lch/boye/httpclientandroidlib/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/cookie/Cookie;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_6b

    aget-object v0, p1, v1

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_25

    :cond_1d
    new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v6, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-direct {v6, v4, v5}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->getDefaultPath(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-static {p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->getDefaultDomain(Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameters()[Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v4

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_3f
    if-ltz v0, :cond_64

    aget-object v5, v4, v0

    invoke-interface {v5}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->findAttribHandler(Ljava/lang/String;)Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    move-result-object v7

    if-eqz v7, :cond_61

    invoke-interface {v5}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->parse(Lch/boye/httpclientandroidlib/cookie/SetCookie;Ljava/lang/String;)V

    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    :cond_64
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_6b
    return-object v2
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .registers 5

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
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    goto :goto_1c

    :cond_2c
    return-void
.end method
