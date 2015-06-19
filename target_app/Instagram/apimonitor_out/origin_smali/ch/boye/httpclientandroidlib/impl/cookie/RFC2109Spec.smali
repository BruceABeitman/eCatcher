.class public Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;
.super Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final DATE_PATTERNS:[Ljava/lang/String;

.field private static final PATH_COMPARATOR:Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;-><init>()V

    if-eqz p1, :cond_58

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    :goto_d
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->oneHeader:Z

    const-string v0, "version"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109VersionHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "path"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "domain"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109DomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "max-age"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "secure"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "comment"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    const-string v0, "expires"

    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieAttributeHandler;)V

    return-void

    :cond_58
    sget-object v0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    goto :goto_d
.end method

.method private doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;
    .registers 8
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v3

    new-instance v4, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    const-string v5, "Cookie: "

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v5, "$Version="

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v5, "; "

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v0, v3}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/cookie/Cookie;I)V

    new-instance v0, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {v0, v4}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_46
    return-object v1
.end method

.method private doFormatOneHeader(Ljava/util/List;)Ljava/util/List;
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

    const v0, 0x7fffffff

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v3

    if-ge v3, v1, :cond_69

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    :goto_1e
    move v1, v0

    goto :goto_8

    :cond_20
    new-instance v2, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    const-string v0, "Cookie"

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "$Version="

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    const-string v4, "; "

    invoke-virtual {v2, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/cookie/Cookie;I)V

    goto :goto_45

    :cond_5a
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_69
    move v0, v1

    goto :goto_1e
.end method


# virtual methods
.method protected formatCookieAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/cookie/Cookie;I)V
    .registers 6

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatParamAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    instance-of v0, p2, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    if-eqz v0, :cond_2e

    move-object v0, p2

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    const-string v1, "path"

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "; "

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "$Path"

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatParamAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2e
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    instance-of v0, p2, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    if-eqz v0, :cond_51

    move-object v0, p2

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/ClientCookie;

    const-string v1, "domain"

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "; "

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "$Domain"

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->formatParamAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_51
    return-void
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List of cookies may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List of cookies may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    :cond_2a
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->oneHeader:Z

    if-eqz v1, :cond_33

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->doFormatOneHeader(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_32
    return-object v1

    :cond_33
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_32
.end method

.method protected formatParamAsVer(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/16 v1, 0x22

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz p3, :cond_17

    if-lez p4, :cond_18

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p1, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p1, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lch/boye/httpclientandroidlib/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;
    .registers 6
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

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

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

    :cond_3f
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109Spec;->parse([Lch/boye/httpclientandroidlib/HeaderElement;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "rfc2109"

    return-object v0
.end method

.method public validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;

    const-string v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;

    const-string v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/CookieSpecBase;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    return-void
.end method
