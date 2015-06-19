.class abstract Ltwitter4j/TwitterBaseImpl;
.super Ljava/lang/Object;
.source "TwitterBaseImpl.java"
.implements Ltwitter4j/TwitterBase;
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/OAuthSupport;
.implements Ltwitter4j/internal/http/HttpResponseListener;
.field private static final serialVersionUID:J = -0x34e79201c9363e6cL
.field protected auth:Ltwitter4j/auth/Authorization;
.field protected conf:Ltwitter4j/conf/Configuration;
.field protected factory:Ltwitter4j/internal/json/z_T4JInternalFactory;
.field protected transient http:Ltwitter4j/internal/http/HttpClientWrapper;
.field protected transient id:J
.field protected transient screenName:Ljava/lang/String;
.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Ltwitter4j/TwitterBaseImpl;->id:J
iput-object p1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
iput-object p2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->init()V
return-void
.end method
.method private getOAuth()Ltwitter4j/auth/OAuthSupport;
.registers 3
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
instance-of v0, v0, Ltwitter4j/auth/OAuthSupport;
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "OAuth consumer key/secret combination not supplied"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
check-cast v0, Ltwitter4j/auth/OAuthSupport;
return-object v0
.end method
.method private init()V
.registers 8
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
if-nez v5, :cond_1c
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;
move-result-object v2
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;
move-result-object v3
if-eqz v2, :cond_1c
if-eqz v3, :cond_1c
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v5}, Ltwitter4j/conf/Configuration;->isApplicationOnlyAuthEnabled()Z
move-result v5
if-eqz v5, :cond_2e
:cond_1c
:goto_1c
new-instance v5, Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v6, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-direct {v5, v6}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V
iput-object v5, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
invoke-virtual {v5, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V
invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->setFactory()V
return-void
:cond_2e
new-instance v4, Ltwitter4j/auth/OAuthAuthorization;
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-direct {v4, v5}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;
move-result-object v0
iget-object v5, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_4d
if-eqz v1, :cond_4d
new-instance v5, Ltwitter4j/auth/AccessToken;
invoke-direct {v5, v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4, v5}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
:cond_4d
iput-object v4, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
goto :goto_1c
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 4
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ltwitter4j/conf/Configuration;
iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ltwitter4j/auth/Authorization;
iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V
iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
invoke-virtual {v0, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V
invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->setFactory()V
return-void
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 3
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method protected final ensureAuthorizationEnabled()V
.registers 3
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Authentication credentials are missing. See http://twitter4j.org/en/configuration.html for the detail."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method protected final ensureOAuthEnabled()V
.registers 3
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
instance-of v0, v0, Ltwitter4j/auth/OAuthAuthorization;
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "OAuth required. Authentication credentials are missing. See http://twitter4j.org/en/configuration.html for the detail."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
instance-of v3, p1, Ltwitter4j/TwitterBaseImpl;
if-nez v3, :cond_b
move v1, v2
goto :goto_4
:cond_b
move-object v0, p1
check-cast v0, Ltwitter4j/TwitterBaseImpl;
iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
if-eqz v3, :cond_1e
iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_22
:cond_1c
move v1, v2
goto :goto_4
:cond_1e
iget-object v3, v0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
if-nez v3, :cond_1c
:cond_22
iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2e
move v1, v2
goto :goto_4
:cond_2e
iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
if-eqz v3, :cond_3e
iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v4, v0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpClientWrapper;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_3c
move v1, v2
goto :goto_4
:cond_3e
iget-object v3, v0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
if-eqz v3, :cond_4
goto :goto_3c
.end method
.method public final getAuthorization()Ltwitter4j/auth/Authorization;
.registers 2
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
return-object v0
.end method
.method public getConfiguration()Ltwitter4j/conf/Configuration;
.registers 2
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
return-object v0
.end method
.method public declared-synchronized getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
.registers 9
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Ltwitter4j/TwitterBaseImpl;->getAuthorization()Ltwitter4j/auth/Authorization;
move-result-object v1
instance-of v6, v1, Ltwitter4j/auth/BasicAuthorization;
if-eqz v6, :cond_42
move-object v0, v1
check-cast v0, Ltwitter4j/auth/BasicAuthorization;
move-object v2, v0
iget-object v6, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-static {v6}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;
move-result-object v1
instance-of v6, v1, Ltwitter4j/auth/OAuthAuthorization;
if-eqz v6, :cond_37
iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
move-object v0, v1
check-cast v0, Ltwitter4j/auth/OAuthAuthorization;
move-object v4, v0
invoke-virtual {v2}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2}, Ltwitter4j/auth/BasicAuthorization;->getPassword()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
move-result-object v3
:goto_29
invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getUserId()J
move-result-wide v6
iput-wide v6, p0, Ltwitter4j/TwitterBaseImpl;->id:J
:try_end_35
.catchall {:try_start_1 .. :try_end_35} :catchall_3f
monitor-exit p0
return-object v3
:cond_37
:try_start_37
new-instance v6, Ljava/lang/IllegalStateException;
const-string v7, "consumer key / secret combination not supplied."
invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v6
:try_end_3f
.catchall {:try_start_37 .. :try_end_3f} :catchall_3f
:catchall_3f
move-exception v6
monitor-exit p0
throw v6
:cond_42
:try_start_42
instance-of v6, v1, Ltwitter4j/internal/http/XAuthAuthorization;
if-eqz v6, :cond_6b
move-object v0, v1
check-cast v0, Ltwitter4j/internal/http/XAuthAuthorization;
move-object v5, v0
iput-object v5, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
new-instance v4, Ltwitter4j/auth/OAuthAuthorization;
iget-object v6, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-direct {v4, v6}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V
invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerKey()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getConsumerSecret()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getUserId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5}, Ltwitter4j/internal/http/XAuthAuthorization;->getPassword()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v6, v7}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
move-result-object v3
goto :goto_29
:cond_6b
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v6
invoke-interface {v6}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
:try_end_72
.catchall {:try_start_42 .. :try_end_72} :catchall_3f
move-result-object v3
goto :goto_29
.end method
.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v1
invoke-interface {v1, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
move-result-object v0
invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_11
monitor-exit p0
return-object v0
:catchall_11
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v0
invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_b
move-result-object v0
monitor-exit p0
return-object v0
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
.registers 5
monitor-enter p0
:try_start_1
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v0
invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
move-result-object v1
invoke-virtual {v1}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Ltwitter4j/TwitterBaseImpl;->screenName:Ljava/lang/String;
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_11
monitor-exit p0
return-object v1
:catchall_11
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v0
invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_b
move-result-object v0
monitor-exit p0
return-object v0
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Ltwitter4j/TwitterBaseImpl;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
move-result-object v0
return-object v0
.end method
.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
.registers 3
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v0
invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
move-result-object v0
return-object v0
.end method
.method public getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
.registers 4
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v0
invoke-interface {v0, p1, p2}, Ltwitter4j/auth/OAuthSupport;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v0
mul-int/lit8 v3, v0, 0x1f
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
if-eqz v1, :cond_24
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
invoke-virtual {v1}, Ltwitter4j/internal/http/HttpClientWrapper;->hashCode()I
move-result v1
:goto_13
add-int v0, v3, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v3, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
if-eqz v3, :cond_21
iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
:cond_21
add-int v0, v1, v2
return v0
:cond_24
move v1, v2
goto :goto_13
.end method
.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
.registers 2
return-void
.end method
.method protected setFactory()V
.registers 3
new-instance v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-direct {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;-><init>(Ltwitter4j/conf/Configuration;)V
iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;
return-void
.end method
.method public declared-synchronized setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-direct {p0}, Ltwitter4j/TwitterBaseImpl;->getOAuth()Ltwitter4j/auth/OAuthSupport;
move-result-object v0
invoke-interface {v0, p1}, Ltwitter4j/auth/OAuthSupport;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_a
monitor-exit p0
return-void
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
monitor-enter p0
if-nez p1, :cond_e
:try_start_3
new-instance v2, Ljava/lang/NullPointerException;
const-string v3, "consumer key is null"
invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v2
:catchall_b
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_b
move-exception v2
monitor-exit p0
throw v2
:cond_e
if-nez p2, :cond_18
:try_start_10
new-instance v2, Ljava/lang/NullPointerException;
const-string v3, "consumer secret is null"
invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v2
:cond_18
iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
if-nez v2, :cond_33
iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isApplicationOnlyAuthEnabled()Z
:try_end_21
.catchall {:try_start_10 .. :try_end_21} :catchall_b
move-result v2
if-eqz v2, :cond_26
:goto_24
:cond_24
monitor-exit p0
return-void
:cond_26
:try_start_26
new-instance v0, Ltwitter4j/auth/OAuthAuthorization;
iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-direct {v0, v2}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V
invoke-virtual {v0, p1, p2}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
goto :goto_24
:cond_33
iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
instance-of v2, v2, Ltwitter4j/auth/BasicAuthorization;
if-eqz v2, :cond_48
new-instance v1, Ltwitter4j/internal/http/XAuthAuthorization;
iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
check-cast v2, Ltwitter4j/auth/BasicAuthorization;
invoke-direct {v1, v2}, Ltwitter4j/internal/http/XAuthAuthorization;-><init>(Ltwitter4j/auth/BasicAuthorization;)V
invoke-virtual {v1, p1, p2}, Ltwitter4j/internal/http/XAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
goto :goto_24
:cond_48
iget-object v2, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
instance-of v2, v2, Ltwitter4j/auth/OAuthAuthorization;
if-eqz v2, :cond_24
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "consumer key/secret pair already set."
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:try_end_56
.catchall {:try_start_26 .. :try_end_56} :catchall_b
.end method
.method public shutdown()V
.registers 2
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
if-eqz v0, :cond_9
iget-object v0, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
invoke-virtual {v0}, Ltwitter4j/internal/http/HttpClientWrapper;->shutdown()V
:cond_9
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "TwitterBase{conf="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->conf:Ltwitter4j/conf/Configuration;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", http="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", auth="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/TwitterBaseImpl;->auth:Ltwitter4j/auth/Authorization;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method