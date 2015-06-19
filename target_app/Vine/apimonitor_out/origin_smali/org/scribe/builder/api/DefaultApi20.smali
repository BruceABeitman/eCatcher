.class public abstract Lorg/scribe/builder/api/DefaultApi20;
.super Ljava/lang/Object;
.source "DefaultApi20.java"

# interfaces
.implements Lorg/scribe/builder/api/Api;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Lorg/scribe/model/OAuthConfig;)Lorg/scribe/oauth/OAuthService;
    .registers 3

    new-instance v0, Lorg/scribe/oauth/OAuth20ServiceImpl;

    invoke-direct {v0, p0, p1}, Lorg/scribe/oauth/OAuth20ServiceImpl;-><init>(Lorg/scribe/builder/api/DefaultApi20;Lorg/scribe/model/OAuthConfig;)V

    return-object v0
.end method

.method public abstract getAccessTokenEndpoint()Ljava/lang/String;
.end method

.method public getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;
    .registers 2

    new-instance v0, Lorg/scribe/extractors/TokenExtractor20Impl;

    invoke-direct {v0}, Lorg/scribe/extractors/TokenExtractor20Impl;-><init>()V

    return-object v0
.end method

.method public getAccessTokenVerb()Lorg/scribe/model/Verb;
    .registers 2

    sget-object v0, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    return-object v0
.end method

.method public abstract getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
.end method
