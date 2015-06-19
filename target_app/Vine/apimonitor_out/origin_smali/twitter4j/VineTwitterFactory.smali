.class public final Ltwitter4j/VineTwitterFactory;
.super Ljava/lang/Object;
.source "VineTwitterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization; = null

.field private static final SINGLETON:Ltwitter4j/Twitter; = null

.field private static final TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ltwitter4j/Twitter;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x481470a850d0e763L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v5

    sput-object v5, Ltwitter4j/VineTwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    const/4 v1, 0x0

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v5

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isGAE()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v0, "twitter4j.AppEngineTwitterImpl"

    :try_start_17
    const-string v5, "twitter4j.AppEngineTwitterImpl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "twitter4j.AppEngineTwitterImpl"
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1e} :catch_76

    :cond_1e
    :goto_1e
    if-nez v1, :cond_22

    const-string v1, "twitter4j.VineTwitter4j"

    :cond_22
    :try_start_22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ltwitter4j/conf/Configuration;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ltwitter4j/auth/Authorization;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_36} :catch_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_36} :catch_5a

    move-result-object v3

    sput-object v3, Ltwitter4j/VineTwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    :try_start_39
    sget-object v5, Ltwitter4j/VineTwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ltwitter4j/VineTwitterFactory;->DEFAULT_AUTHORIZATION:Ltwitter4j/auth/Authorization;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltwitter4j/Twitter;

    sput-object v5, Ltwitter4j/VineTwitterFactory;->SINGLETON:Ltwitter4j/Twitter;
    :try_end_52
    .catch Ljava/lang/InstantiationException; {:try_start_39 .. :try_end_52} :catch_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_52} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_52} :catch_6f

    return-void

    :catch_53
    move-exception v4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :catch_5a
    move-exception v4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :catch_61
    move-exception v4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :catch_68
    move-exception v4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :catch_6f
    move-exception v4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :catch_76
    move-exception v5

    goto :goto_1e
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/VineTwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/VineTwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Ltwitter4j/VineTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    return-void
.end method

.method public static getSingleton()Ltwitter4j/Twitter;
    .registers 1

    sget-object v0, Ltwitter4j/VineTwitterFactory;->SINGLETON:Ltwitter4j/Twitter;

    return-object v0
.end method


# virtual methods
.method public getInstance()Ltwitter4j/Twitter;
    .registers 2

    iget-object v0, p0, Ltwitter4j/VineTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/VineTwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/auth/AccessToken;)Ltwitter4j/Twitter;
    .registers 7

    iget-object v3, p0, Ltwitter4j/VineTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ltwitter4j/VineTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Consumer key and Consumer secret not supplied."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_18
    new-instance v2, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v3, p0, Ltwitter4j/VineTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v2, v3}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v2, p1}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    invoke-virtual {p0, v2}, Ltwitter4j/VineTwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v3

    return-object v3
.end method

.method public getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;
    .registers 7

    :try_start_0
    sget-object v1, Ltwitter4j/VineTwitterFactory;->TWITTER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/VineTwitterFactory;->conf:Ltwitter4j/conf/Configuration;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Twitter;
    :try_end_13
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_22

    return-object v1

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
