.class public Lch/boye/httpclientandroidlib/client/utils/URIUtils;
.super Ljava/lang/Object;
.source "URIUtils.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1e

    if-eqz p0, :cond_11

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_1e

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1e
    if-eqz p3, :cond_28

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_28
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    if-eqz p3, :cond_32

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    if-eqz p4, :cond_3c

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    if-eqz p5, :cond_46

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static extractHost(Ljava/net/URI;)Lch/boye/httpclientandroidlib/HttpHost;
    .registers 8

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v2

    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_66

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-le v4, v5, :cond_62

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_30
    :goto_30
    if-eqz v1, :cond_66

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_66

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4c

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_4c
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    :goto_54
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_64

    new-instance v2, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-direct {v2, v0, v1, v3}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    :goto_60
    move-object v2, v0

    goto :goto_3

    :cond_62
    move-object v1, v2

    goto :goto_30

    :cond_64
    move-object v0, v2

    goto :goto_60

    :cond_66
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_54
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static removeDotSegments(Ljava/net/URI;)Ljava/net/URI;
    .registers 7

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "/."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0

    :cond_11
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    const/4 v0, 0x0

    :goto_1d
    array-length v3, v1

    if-ge v0, v3, :cond_4e

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "."

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, ".."

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_48
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :cond_6d
    :try_start_6d
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/net/URISyntaxException; {:try_start_6d .. :try_end_86} :catch_87

    goto :goto_10

    :catch_87
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .registers 3

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base URI may nor be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reference URI may nor be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->resolveReferenceStartingWithQueryString(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_53

    const/4 v0, 0x1

    move v1, v0

    :goto_2e
    if-eqz v1, :cond_36

    const-string v0, "#"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    :cond_36
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :cond_4e
    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->removeDotSegments(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_25

    :cond_53
    move v1, v2

    goto :goto_2e
.end method

.method private static resolveReferenceStartingWithQueryString(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 5

    const/16 v2, 0x3f

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;)Ljava/net/URI;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;Z)Ljava/net/URI;
    .registers 10

    const/4 v6, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI may nor be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_2d

    move-object v5, v6

    :goto_28
    invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v5

    goto :goto_28

    :cond_32
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_49

    move-object v5, v6

    :goto_42
    move-object v0, v6

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_2c

    :cond_49
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v5

    goto :goto_42
.end method
