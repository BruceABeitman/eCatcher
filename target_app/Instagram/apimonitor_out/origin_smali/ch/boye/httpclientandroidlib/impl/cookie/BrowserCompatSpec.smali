.class public Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;
.super Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field protected static final DATE_PATTERNS:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v1, v0, v6

    const-string v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v1, v0, v6

    const-string v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;-><init>()V

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    :goto_d
    const-string v0, "path"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "domain"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicDomainHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicDomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "max-age"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "secure"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "comment"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "expires"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    return-void

    :cond_4c
    sget-object v0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_d
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 6
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
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v2, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    const-string v0, "Cookie"

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    if-lez v1, :cond_42

    const-string v3, "; "

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_42
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lch/boye/httpclientandroidlib/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
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

    const/4 v5, 0x0

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
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized cookie header \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v3

    array-length v6, v3

    move v4, v5

    move v2, v5

    move v0, v5

    :goto_49
    if-ge v4, v6, :cond_62

    aget-object v7, v3, v4

    const-string v8, "version"

    invoke-interface {v7, v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_56

    move v0, v1

    :cond_56
    const-string v8, "expires"

    invoke-interface {v7, v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_5f

    move v2, v1

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_62
    if-nez v2, :cond_66

    if-nez v0, :cond_b4

    :cond_66
    sget-object v3, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;

    instance-of v0, p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    if-eqz v0, :cond_90

    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v2

    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    check-cast p1, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I

    move-result v4

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v0, v4, v6}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    :goto_82
    new-array v1, v1, [Lch/boye/httpclientandroidlib/HeaderElement;

    invoke-virtual {v3, v2, v0}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    :goto_8b
    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_90
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9e

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    new-instance v2, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v5, v4}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    goto :goto_82

    :cond_b4
    move-object v0, v3

    goto :goto_8b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "compatibility"

    return-object v0
.end method
