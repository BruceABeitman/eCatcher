.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
.super Ljava/lang/Object;
.source "CacheValidityPolicy.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final MAX_AGE:J = 0x80000000L


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mayReturnStaleIfError([Lch/boye/httpclientandroidlib/Header;J)Z
    .registers 14

    const/4 v2, 0x0

    array-length v4, p1

    move v3, v2

    move v0, v2

    :goto_4
    if-ge v3, v4, :cond_34

    aget-object v1, p1, v3

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_e
    if-ge v1, v6, :cond_2c

    aget-object v7, v5, v1

    const-string v8, "stale-if-error"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    :try_start_1e
    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_25} :catch_30

    move-result v7

    int-to-long v7, v7

    cmp-long v7, p2, v7

    if-gtz v7, :cond_31

    const/4 v0, 0x1

    :cond_2c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :catch_30
    move-exception v7

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_34
    return v0
.end method


# virtual methods
.method protected contentLengthHeaderMatchesActualLength(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .registers 6

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasContentLengthHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getContentLengthValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected getAgeValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 14

    const-wide v2, 0x80000000L

    const-wide/16 v7, 0x0

    const-string v0, "Age"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v6, v0

    move-wide v4, v7

    :goto_11
    if-ge v6, v10, :cond_30

    aget-object v0, v9, v6

    :try_start_15
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1c} :catch_2b

    move-result-wide v0

    cmp-long v11, v0, v7

    if-gez v11, :cond_22

    move-wide v0, v2

    :cond_22
    :goto_22
    cmp-long v11, v0, v4

    if-lez v11, :cond_2e

    :goto_26
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v0

    goto :goto_11

    :catch_2b
    move-exception v0

    move-wide v0, v2

    goto :goto_22

    :cond_2e
    move-wide v0, v4

    goto :goto_26

    :cond_30
    return-wide v4
.end method

.method protected getApparentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 9

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_e

    const-wide v0, 0x80000000L

    :cond_d
    :goto_d
    return-wide v0

    :cond_e
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v2, v3, v5

    cmp-long v4, v2, v0

    if-ltz v4, :cond_d

    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    goto :goto_d
.end method

.method protected getContentLengthValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 5

    const-wide/16 v0, -0x1

    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_a
    return-wide v0

    :cond_b
    :try_start_b
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_12} :catch_14

    move-result-wide v0

    goto :goto_a

    :catch_14
    move-exception v2

    goto :goto_a
.end method

.method protected getCorrectedInitialAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 6

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCorrectedReceivedAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getResponseDelaySecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCorrectedReceivedAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 7

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getApparentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getAgeValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v2

    goto :goto_c
.end method

.method public getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 7

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCorrectedInitialAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getResidentTimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCurrentDate()Ljava/util/Date;
    .registers 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method protected getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "Date"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_11
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_9

    :catch_13
    move-exception v1

    goto :goto_9
.end method

.method protected getExpirationDate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "Expires"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_11
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_9

    :catch_13
    move-exception v1

    goto :goto_9
.end method

.method public getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 8

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getMaxAge(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-lez v4, :cond_d

    :goto_c
    return-wide v0

    :cond_d
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_15

    move-wide v0, v2

    goto :goto_c

    :cond_15
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getExpirationDate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1d

    move-wide v0, v2

    goto :goto_c

    :cond_1d
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_c
.end method

.method public getHeuristicFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;FJ)J
    .registers 11

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getDateValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getLastModifiedValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v3

    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1e

    move-wide p3, v0

    :cond_1d
    :goto_1d
    return-wide p3

    :cond_1e
    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    long-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-long p3, v0

    goto :goto_1d
.end method

.method protected getLastModifiedValue(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "Last-Modified"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_11
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_9

    :catch_13
    move-exception v1

    goto :goto_9
.end method

.method protected getMaxAge(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 16

    const-wide/16 v7, -0x1

    const/4 v5, 0x0

    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v9

    array-length v10, v9

    move v6, v5

    move-wide v0, v7

    :goto_c
    if-ge v6, v10, :cond_4f

    aget-object v2, v9, v6

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v11

    array-length v12, v11

    move v4, v5

    :goto_16
    if-ge v4, v12, :cond_4b

    aget-object v2, v11, v4

    const-string v3, "max-age"

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "s-maxage"

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_32
    :try_start_32
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_39} :catch_47

    move-result-wide v2

    cmp-long v13, v0, v7

    if-eqz v13, :cond_42

    cmp-long v13, v2, v0

    if-gez v13, :cond_43

    :cond_42
    move-wide v0, v2

    :cond_43
    :goto_43
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_16

    :catch_47
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_43

    :cond_4b
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_c

    :cond_4f
    return-wide v0
.end method

.method protected getResidentTimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 7

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getResponseDelaySecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
    .registers 6

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 8

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    const-wide/16 v0, 0x0

    :goto_e
    return-wide v0

    :cond_f
    sub-long/2addr v0, v2

    goto :goto_e
.end method

.method public hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const-string v1, "Cache-Control"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_22

    aget-object v1, v3, v2

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_13
    if-ge v1, v6, :cond_26

    aget-object v7, v5, v1

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/4 v0, 0x1

    :cond_22
    return v0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_26
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9
.end method

.method protected hasContentLengthHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .registers 3

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isResponseFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 7

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isResponseHeuristicallyFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z
    .registers 10

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getHeuristicFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;FJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRevalidatable(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .registers 3

    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "Last-Modified"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public mayReturnStaleIfError(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 7

    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    const-string v2, "Cache-Control"

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lch/boye/httpclientandroidlib/Header;J)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "Cache-Control"

    invoke-virtual {p2, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lch/boye/httpclientandroidlib/Header;J)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public mayReturnStaleWhileRevalidating(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 15

    const/4 v0, 0x0

    const-string v1, "Cache-Control"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_35

    aget-object v1, v3, v2

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_13
    if-ge v1, v6, :cond_3a

    aget-object v7, v5, v1

    const-string v8, "stale-while-revalidate"

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    :try_start_23
    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2e} :catch_36

    move-result-wide v8

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gtz v7, :cond_37

    const/4 v0, 0x1

    :cond_35
    return v0

    :catch_36
    move-exception v7

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_3a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9
.end method

.method public mustRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .registers 3

    const-string v0, "must-revalidate"

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public proxyRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
    .registers 3

    const-string v0, "proxy-revalidate"

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
