.class public Lorg/scribe/oauth/OAuth20ServiceImpl;
.super Ljava/lang/Object;
.source "OAuth20ServiceImpl.java"
.implements Lorg/scribe/oauth/OAuthService;
.field private static final VERSION:Ljava/lang/String; = "2.0"
.field private final api:Lorg/scribe/builder/api/DefaultApi20;
.field private final config:Lorg/scribe/model/OAuthConfig;
.method public constructor <init>(Lorg/scribe/builder/api/DefaultApi20;Lorg/scribe/model/OAuthConfig;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi20;
iput-object p2, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;
return-void
.end method
.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;
.registers 7
new-instance v0, Lorg/scribe/model/OAuthRequest;
iget-object v2, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi20;
invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi20;->getAccessTokenVerb()Lorg/scribe/model/Verb;
move-result-object v2
iget-object v3, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi20;
invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi20;->getAccessTokenEndpoint()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V
const-string v2, "client_id"
iget-object v3, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;
invoke-virtual {v3}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "client_secret"
iget-object v3, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;
invoke-virtual {v3}, Lorg/scribe/model/OAuthConfig;->getApiSecret()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "code"
invoke-virtual {p2}, Lorg/scribe/model/Verifier;->getValue()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "redirect_uri"
iget-object v3, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;
invoke-virtual {v3}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;
invoke-virtual {v2}, Lorg/scribe/model/OAuthConfig;->hasScope()Z
move-result v2
if-eqz v2, :cond_4e
const-string v2, "scope"
iget-object v3, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;
invoke-virtual {v3}, Lorg/scribe/model/OAuthConfig;->getScope()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
:cond_4e
invoke-virtual {v0}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;
move-result-object v1
iget-object v2, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi20;
invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi20;->getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;
move-result-object v2
invoke-virtual {v1}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lorg/scribe/extractors/AccessTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;
move-result-object v2
return-object v2
.end method
.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi20;
iget-object v1, p0, Lorg/scribe/oauth/OAuth20ServiceImpl;->config:Lorg/scribe/model/OAuthConfig;
invoke-virtual {v0, v1}, Lorg/scribe/builder/api/DefaultApi20;->getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getRequestToken()Lorg/scribe/model/Token;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Unsupported operation, please use \'getAuthorizationUrl\' and redirect your users there"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getVersion()Ljava/lang/String;
.registers 2
const-string v0, "2.0"
return-object v0
.end method
.method public signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
.registers 5
const-string v0, "access_token"
invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v0, v1}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method