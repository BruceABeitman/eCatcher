.class public Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieSpec;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

.field private final oneHeader:Z

.field private strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->oneHeader:Z

    return-void

    :cond_b
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_6
.end method

.method private getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    if-nez v0, :cond_d

    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    :cond_d
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->compat:Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    return-object v0
.end method

.method private getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    if-nez v0, :cond_f

    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    :cond_f
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->obsoleteStrict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    return-object v0
.end method

.method private getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    if-nez v0, :cond_f

    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    :cond_f
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->strict:Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const v1, 0x7fffffff

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    instance-of v4, v0, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-nez v4, :cond_25

    const/4 v1, 0x0

    :cond_25
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v2, :cond_50

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    :goto_2f
    move v2, v0

    goto :goto_14

    :cond_31
    if-lez v2, :cond_47

    if-eqz v1, :cond_3e

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_3d
    return-object v0

    :cond_3e
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_3d

    :cond_47
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_3d

    :cond_50
    move v0, v2

    goto :goto_2f
.end method

.method public getVersion()I
    .registers 2

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lch/boye/httpclientandroidlib/Header;
    .registers 2

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->getVersionHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

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
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_30

    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result v0

    :goto_26
    return v0

    :cond_27
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_26

    :cond_30
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_26
.end method

.method public parse(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/Header;",
            "Lch/boye/httpclientandroidlib/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/cookie/Cookie;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    move v2, v4

    move v0, v4

    :goto_1e
    if-ge v3, v6, :cond_37

    aget-object v7, v5, v3

    const-string v8, "version"

    invoke-interface {v7, v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_2b

    move v0, v1

    :cond_2b
    const-string v8, "expires"

    invoke-interface {v7, v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_34

    move v2, v1

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_37
    if-nez v2, :cond_3b

    if-nez v0, :cond_8c

    :cond_3b
    sget-object v3, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;

    instance-of v0, p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    if-eqz v0, :cond_68

    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v2

    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    check-cast p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I

    move-result v5

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    :goto_57
    new-array v1, v1, [Lch/boye/httpclientandroidlib/HeaderElement;

    invoke-virtual {v3, v2, v0}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    :goto_67
    return-object v0

    :cond_68
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_76

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    new-instance v2, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    goto :goto_57

    :cond_8c
    const-string v0, "Set-Cookie2"

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_67

    :cond_a1
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_67
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "best-match"

    return-object v0
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
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_2e

    instance-of v0, p1, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965Spec;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    :goto_25
    return-void

    :cond_26
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    goto :goto_25

    :cond_2e
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpec;->getCompat()Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    goto :goto_25
.end method
