.class public Lorg/scribe/builder/api/TwitterApi$SSL;
.super Lorg/scribe/builder/api/TwitterApi;
.source "TwitterApi.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/scribe/builder/api/TwitterApi;-><init>()V
return-void
.end method
.method public getAccessTokenEndpoint()Ljava/lang/String;
.registers 2
const-string v0, "https://api.twitter.com/oauth/access_token"
return-object v0
.end method
.method public getRequestTokenEndpoint()Ljava/lang/String;
.registers 2
const-string v0, "https://api.twitter.com/oauth/request_token"
return-object v0
.end method