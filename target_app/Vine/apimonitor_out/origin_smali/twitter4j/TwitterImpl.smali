.class Ltwitter4j/TwitterImpl;
.super Ltwitter4j/TwitterBaseImpl;
.source "TwitterImpl.java"

# interfaces
.implements Ltwitter4j/Twitter;


# static fields
.field private static final implicitParamsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/conf/Configuration;",
            "[",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final implicitParamsStrMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/conf/Configuration;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x14a09c9e28673704L


# instance fields
.field private final IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

.field private final IMPLICIT_PARAMS_STR:Ljava/lang/String;

.field private final INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/TwitterImpl;->implicitParamsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/TwitterImpl;->implicitParamsStrMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .registers 13

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "include_my_retweet"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeMyRetweetEnabled()Z

    move-result v8

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsStrMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_c9

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v6

    if-eqz v6, :cond_ce

    const-string v3, "1"

    :goto_2a
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v6

    if-eqz v6, :cond_d2

    const-string v4, "1"

    :goto_32
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getContributingTo()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d6

    const/4 v0, 0x1

    :goto_3d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "include_entities="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&include_rts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_d9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&contributingto="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getContributingTo()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsStrMap:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "include_entities"

    invoke-direct {v6, v7, v3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "include_rts"

    invoke-direct {v6, v7, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_a6

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "contributingto"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getContributingTo()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a6
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isTrimUserEnabled()Z

    move-result v6

    if-eqz v6, :cond_b8

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "trim_user"

    const-string v8, "1"

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsMap:Ljava/util/Map;

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c9
    iput-object v1, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    iput-object v2, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS_STR:Ljava/lang/String;

    return-void

    :cond_ce
    const-string v3, "0"

    goto/16 :goto_2a

    :cond_d2
    const-string v4, "0"

    goto/16 :goto_32

    :cond_d6
    const/4 v0, 0x0

    goto/16 :goto_3d

    :cond_d9
    const-string v6, ""

    goto :goto_6f
.end method

.method private get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS_STR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_24
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS_STR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_4f
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_54
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_62

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_34

    :catchall_62
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    throw v3
.end method

.method private get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_1d
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2f

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_17

    :catchall_2f
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    throw v3
.end method

.method private isOk(Ltwitter4j/internal/http/HttpResponse;)Z
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .registers 3

    iget-object v0, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p2, v0, v1

    :goto_13
    return-object v0

    :cond_14
    if-nez p1, :cond_1b

    if-nez p2, :cond_1b

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_13

    :cond_1b
    if-eqz p1, :cond_1f

    move-object v0, p1

    goto :goto_13

    :cond_1f
    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    aput-object p2, v0, v2

    goto :goto_13
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .registers 7

    const/4 v3, 0x0

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_13
    return-object v0

    :cond_14
    if-nez p1, :cond_1b

    if-nez p2, :cond_1b

    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_13

    :cond_1b
    if-eqz p1, :cond_1f

    move-object v0, p1

    goto :goto_13

    :cond_1f
    move-object v0, p2

    goto :goto_13
.end method

.method private post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    iget-object v5, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_1b
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    iget-object v5, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_2b

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_15

    :catchall_2b
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    throw v3
.end method

.method private post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_1d
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2f

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_17

    :catchall_2f
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    throw v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterImpl{INCLUDE_MY_RETWEET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
