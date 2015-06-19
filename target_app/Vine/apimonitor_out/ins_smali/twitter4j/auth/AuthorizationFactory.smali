.class public final Ltwitter4j/auth/AuthorizationFactory;
.super Ljava/lang/Object;
.source "AuthorizationFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;
.registers 10
const/4 v2, 0x0
invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;
move-result-object v3
invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;
move-result-object v4
if-eqz v3, :cond_2f
if-eqz v4, :cond_2f
invoke-interface {p0}, Ltwitter4j/conf/Configuration;->isApplicationOnlyAuthEnabled()Z
move-result v8
if-eqz v8, :cond_14
:cond_13
:goto_13
return-object v2
:cond_14
new-instance v5, Ltwitter4j/auth/OAuthAuthorization;
invoke-direct {v5, p0}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V
invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;
move-result-object v0
invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_2d
if-eqz v1, :cond_2d
new-instance v8, Ltwitter4j/auth/AccessToken;
invoke-direct {v8, v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5, v8}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
:cond_2d
move-object v2, v5
goto :goto_13
:cond_2f
invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getUser()Ljava/lang/String;
move-result-object v7
invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getPassword()Ljava/lang/String;
move-result-object v6
if-eqz v7, :cond_13
if-eqz v6, :cond_13
new-instance v2, Ltwitter4j/auth/BasicAuthorization;
invoke-direct {v2, v7, v6}, Ltwitter4j/auth/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13
.end method