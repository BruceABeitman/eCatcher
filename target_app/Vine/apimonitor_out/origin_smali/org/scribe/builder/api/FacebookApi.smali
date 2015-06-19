.class public Lorg/scribe/builder/api/FacebookApi;
.super Lorg/scribe/builder/api/DefaultApi20;
.source "FacebookApi.java"


# static fields
.field private static final AUTHORIZE_URL:Ljava/lang/String; = "https://www.facebook.com/dialog/oauth?client_id=%s&redirect_uri=%s"

.field private static final SCOPED_AUTHORIZE_URL:Ljava/lang/String; = "https://www.facebook.com/dialog/oauth?client_id=%s&redirect_uri=%s&scope=%s"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi20;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .registers 2

    const-string v0, "https://graph.facebook.com/oauth/access_token"

    return-object v0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Must provide a valid url as callback. Facebook does not support OOB"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->hasScope()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "https://www.facebook.com/dialog/oauth?client_id=%s&redirect_uri=%s&scope=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    const-string v0, "https://www.facebook.com/dialog/oauth?client_id=%s&redirect_uri=%s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method