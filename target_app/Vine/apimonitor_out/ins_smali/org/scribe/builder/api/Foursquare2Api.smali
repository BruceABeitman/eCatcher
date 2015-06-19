.class public Lorg/scribe/builder/api/Foursquare2Api;
.super Lorg/scribe/builder/api/DefaultApi20;
.source "Foursquare2Api.java"
.field private static final AUTHORIZATION_URL:Ljava/lang/String; = "https://foursquare.com/oauth2/authenticate?client_id=%s&response_type=code&redirect_uri=%s"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi20;-><init>()V
return-void
.end method
.method public getAccessTokenEndpoint()Ljava/lang/String;
.registers 2
const-string v0, "https://foursquare.com/oauth2/access_token?grant_type=authorization_code"
return-object v0
.end method
.method public getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;
.registers 2
new-instance v0, Lorg/scribe/extractors/JsonTokenExtractor;
invoke-direct {v0}, Lorg/scribe/extractors/JsonTokenExtractor;-><init>()V
return-object v0
.end method
.method public getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;
move-result-object v0
const-string v1, "Must provide a valid url as callback. Foursquare2 does not support OOB"
invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "https://foursquare.com/oauth2/authenticate?client_id=%s&response_type=code&redirect_uri=%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p1}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method