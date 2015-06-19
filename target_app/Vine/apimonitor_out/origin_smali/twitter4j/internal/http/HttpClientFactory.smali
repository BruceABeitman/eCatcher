.class public final Ltwitter4j/internal/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor; = null

.field private static final HTTP_CLIENT_IMPLEMENTATION:Ljava/lang/String; = "twitter4j.http.httpClient"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    const-string v4, "twitter4j.http.httpClient"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    :try_start_9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_c} :catch_3a

    move-result-object v0

    :cond_d
    :goto_d
    if-nez v0, :cond_15

    :try_start_f
    const-string v4, "twitter4j.internal.http.alternative.HttpClientImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_14} :catch_3c

    move-result-object v0

    :cond_15
    :goto_15
    if-nez v0, :cond_1d

    :try_start_17
    const-string v4, "twitter4j.internal.http.HttpClientImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1c} :catch_2c

    move-result-object v0

    :cond_1d
    const/4 v4, 0x1

    :try_start_1e
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ltwitter4j/internal/http/HttpClientConfiguration;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Ltwitter4j/internal/http/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_2b} :catch_33

    return-void

    :catch_2c
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_33
    move-exception v3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_3a
    move-exception v4

    goto :goto_d

    :catch_3c
    move-exception v4

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
    .registers 5

    :try_start_0
    sget-object v1, Ltwitter4j/internal/http/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/internal/http/HttpClient;
    :try_end_e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_1d

    return-object v1

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
