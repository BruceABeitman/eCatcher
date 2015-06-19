.class public Ltwitter4j/VineTwitter4j;
.super Ltwitter4j/TwitterImpl;
.source "VineTwitter4j.java"


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    return-void
.end method

.method private getOAuth()Ltwitter4j/auth/OAuthSupport;
    .registers 3

    iget-object v0, p0, Ltwitter4j/VineTwitter4j;->auth:Ltwitter4j/auth/Authorization;

    instance-of v0, v0, Ltwitter4j/auth/OAuthSupport;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth consumer key/secret combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Ltwitter4j/VineTwitter4j;->auth:Ltwitter4j/auth/Authorization;

    check-cast v0, Ltwitter4j/auth/OAuthSupport;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ltwitter4j/TwitterImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getConfiguration()Ltwitter4j/conf/Configuration;
    .registers 2

    invoke-super {p0}, Ltwitter4j/TwitterImpl;->getConfiguration()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ltwitter4j/VineTwitter4j;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v1

    instance-of v6, v1, Ltwitter4j/auth/BasicAuthorization;

    if-eqz v6, :cond_42

    move-object v0, v1

    check-cast v0, Ltwitter4j/auth/BasicAuthorization;

    move-object v2, v0

    iget-object v6, p0, Ltwitter4j/VineTwitter4j;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v6}, Ltwitter4j/auth/VineAuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v1

    instance-of v6, v1, Ltwitter4j/auth/VineOauthAuthorization;

    if-eqz v6, :cond_37

    iput-object v1, p0, Ltwitter4j/VineTwitter4j;->auth:Ltwitter4j/auth/Authorization;

    move-object v0, v1

    check-cast v0, Ltwitter4j/auth/VineOauthAuthorization;

    move-object v4, v0

    invoke-virtual {v2}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ltwitter4j/auth/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ltwitter4j/auth/VineOauthAuthorization;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    :goto_29
    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/VineTwitter4j;->screenName:Ljava/lang/String;

    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getUserId()J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/VineTwitter4j;->id:J
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

    iput-object v5, p0, Ltwitter4j/VineTwitter4j;->auth:Ltwitter4j/auth/Authorization;

    new-instance v4, Ltwitter4j/auth/OAuthAuthorization;

    iget-object v6, p0, Ltwitter4j/VineTwitter4j;->conf:Ltwitter4j/conf/Configuration;

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
    invoke-direct {p0}, Ltwitter4j/VineTwitter4j;->getOAuth()Ltwitter4j/auth/OAuthSupport;

    move-result-object v6

    invoke-interface {v6}, Ltwitter4j/auth/OAuthSupport;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    :try_end_72
    .catchall {:try_start_42 .. :try_end_72} :catchall_3f

    move-result-object v3

    goto :goto_29
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ltwitter4j/TwitterImpl;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterImpl;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ltwitter4j/TwitterImpl;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterImpl;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    invoke-super {p0}, Ltwitter4j/TwitterImpl;->getOAuthRequestToken()Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    invoke-super {p0, p1}, Ltwitter4j/TwitterImpl;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterImpl;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Ltwitter4j/TwitterImpl;->hashCode()I

    move-result v0

    return v0
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    .registers 2

    invoke-super {p0, p1}, Ltwitter4j/TwitterImpl;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    return-void
.end method

.method public bridge synthetic setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterImpl;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic shutdown()V
    .registers 1

    invoke-super {p0}, Ltwitter4j/TwitterImpl;->shutdown()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/TwitterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
