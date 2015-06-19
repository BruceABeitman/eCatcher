.class public Lorg/scribe/oauth/OAuth10aServiceImpl;
.super Ljava/lang/Object;
.source "OAuth10aServiceImpl.java"

# interfaces
.implements Lorg/scribe/oauth/OAuthService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/scribe/oauth/OAuth10aServiceImpl$1;,
        Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;
    }
.end annotation


# static fields
.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private api:Lorg/scribe/builder/api/DefaultApi10a;

.field private config:Lorg/scribe/model/OAuthConfig;


# direct methods
.method public constructor <init>(Lorg/scribe/builder/api/DefaultApi10a;Lorg/scribe/model/OAuthConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    iput-object p2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    return-void
.end method

.method private addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V
    .registers 6

    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/TimestampService;->getTimestampInSeconds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/TimestampService;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/SignatureService;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_version"

    invoke-virtual {p0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v0}, Lorg/scribe/model/OAuthConfig;->hasScope()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "scope"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    const-string v0, "oauth_signature"

    invoke-direct {p0, p1, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getSignature(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appended additional OAuth parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lorg/scribe/utils/MapUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    return-void
.end method

.method private appendSignature(Lorg/scribe/model/OAuthRequest;)V
    .registers 7

    sget-object v3, Lorg/scribe/oauth/OAuth10aServiceImpl$1;->$SwitchMap$org$scribe$model$SignatureType:[I

    iget-object v4, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v4}, Lorg/scribe/model/OAuthConfig;->getSignatureType()Lorg/scribe/model/SignatureType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/scribe/model/SignatureType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_58

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    const-string v4, "using Http Header signature"

    invoke-virtual {v3, v4}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getHeaderExtractor()Lorg/scribe/extractors/HeaderExtractor;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/scribe/extractors/HeaderExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {p1, v3, v2}, Lorg/scribe/model/OAuthRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :pswitch_29
    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    const-string v4, "using Querystring signature"

    invoke-virtual {v3, v4}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_12
        :pswitch_29
    .end packed-switch
.end method

.method private getSignature(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;
    .registers 8

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    const-string v3, "generating signature..."

    invoke-virtual {v2, v3}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "using base64 encoder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/scribe/services/Base64Encoder;->type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getBaseStringExtractor()Lorg/scribe/extractors/BaseStringExtractor;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/scribe/extractors/BaseStringExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v2

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v3}, Lorg/scribe/model/OAuthConfig;->getApiSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/scribe/services/SignatureService;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base string is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signature is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;
    .registers 5

    const/4 v0, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;
    .registers 6

    new-instance v0, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;

    invoke-direct {v0, p3, p4}, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;-><init>(ILjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;
    .registers 9

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obtaining access token from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v4}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/scribe/model/OAuthRequest;

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v2

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    const-string v2, "oauth_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "oauth_verifier"

    invoke-virtual {p2}, Lorg/scribe/model/Verifier;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting token to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and verifier to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    invoke-direct {p0, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->appendSignature(Lorg/scribe/model/OAuthRequest;)V

    invoke-virtual {v0, p3}, Lorg/scribe/model/OAuthRequest;->send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;

    move-result-object v1

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;

    move-result-object v2

    invoke-virtual {v1}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/scribe/extractors/AccessTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object v2

    return-object v2
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0, p1}, Lorg/scribe/builder/api/DefaultApi10a;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestToken()Lorg/scribe/model/Token;
    .registers 3

    const/4 v0, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getRequestToken(ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public getRequestToken(ILjava/util/concurrent/TimeUnit;)Lorg/scribe/model/Token;
    .registers 4

    new-instance v0, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;

    invoke-direct {v0, p1, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;-><init>(ILjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getRequestToken(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public getRequestToken(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Token;
    .registers 8

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "obtaining request token from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v5}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenEndpoint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    new-instance v1, Lorg/scribe/model/OAuthRequest;

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    iget-object v4, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v4}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting oauth_callback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v5}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    const-string v3, "oauth_callback"

    iget-object v4, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v4}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/scribe/model/OAuthConstants;->EMPTY_TOKEN:Lorg/scribe/model/Token;

    invoke-direct {p0, v1, v3}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    invoke-direct {p0, v1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->appendSignature(Lorg/scribe/model/OAuthRequest;)V

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    const-string v4, "sending request..."

    invoke-virtual {v3, v4}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/scribe/model/OAuthRequest;->send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/scribe/model/Response;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenExtractor()Lorg/scribe/extractors/RequestTokenExtractor;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/scribe/extractors/RequestTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object v3

    return-object v3
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0"

    return-object v0
.end method

.method public signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
    .registers 6

    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signing request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/scribe/model/OAuthRequest;->getCompleteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/scribe/model/Token;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "oauth_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting token to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/OAuthConfig;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    invoke-direct {p0, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->appendSignature(Lorg/scribe/model/OAuthRequest;)V

    return-void
.end method
