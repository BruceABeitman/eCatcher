.class public Lorg/scribe/builder/api/TumblrApi;
.super Lorg/scribe/builder/api/DefaultApi10a;
.source "TumblrApi.java"
.field private static final ACCESS_TOKEN_RESOURCE:Ljava/lang/String; = "http://www.tumblr.com/oauth/access_token"
.field private static final AUTHORIZE_URL:Ljava/lang/String; = "https://www.tumblr.com/oauth/authorize?oauth_token=%s"
.field private static final REQUEST_TOKEN_RESOURCE:Ljava/lang/String; = "http://www.tumblr.com/oauth/request_token"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V
return-void
.end method
.method public getAccessTokenEndpoint()Ljava/lang/String;
.registers 2
const-string v0, "http://www.tumblr.com/oauth/access_token"
return-object v0
.end method
.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
.registers 6
const-string v0, "https://www.tumblr.com/oauth/authorize?oauth_token=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getRequestTokenEndpoint()Ljava/lang/String;
.registers 2
const-string v0, "http://www.tumblr.com/oauth/request_token"
return-object v0
.end method