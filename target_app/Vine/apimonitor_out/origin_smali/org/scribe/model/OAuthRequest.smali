.class public Lorg/scribe/model/OAuthRequest;
.super Lorg/scribe/model/Request;
.source "OAuthRequest.java"


# static fields
.field private static final OAUTH_PREFIX:Ljava/lang/String; = "oauth_"


# instance fields
.field private oauthParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/scribe/model/Request;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/OAuthRequest;->oauthParameters:Ljava/util/Map;

    return-void
.end method

.method private checkKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "oauth_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    return-object p1

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OAuth parameters must either be \'%s\' or start with \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "scope"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "oauth_"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/scribe/model/OAuthRequest;->oauthParameters:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/scribe/model/OAuthRequest;->checkKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getOauthParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/scribe/model/OAuthRequest;->oauthParameters:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "@OAuthRequest(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/scribe/model/OAuthRequest;->getVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/scribe/model/OAuthRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
