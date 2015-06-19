.class public final Ltwitter4j/conf/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"
.field private configurationBean:Ltwitter4j/conf/ConfigurationBase;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ltwitter4j/conf/PropertyConfiguration;
invoke-direct {v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>()V
iput-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
return-void
.end method
.method private checkNotBuilt()V
.registers 3
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot use this builder any longer, build() has already been called"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method public build()Ltwitter4j/conf/Configuration;
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0}, Ltwitter4j/conf/ConfigurationBase;->cacheInstance()V
:try_start_9
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
:try_end_b
.catchall {:try_start_9 .. :try_end_b} :catchall_e
iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
return-object v0
:catchall_e
move-exception v0
iput-object v1, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
throw v0
.end method
.method public setApplicationOnlyAuthEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setApplicationOnlyAuthEnabled(Z)V
return-object p0
.end method
.method public setAsyncNumThreads(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V
return-object p0
.end method
.method public setClientURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setClientVersion(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V
return-object p0
.end method
.method public setContributingTo(J)Ltwitter4j/conf/ConfigurationBuilder;
.registers 4
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1, p2}, Ltwitter4j/conf/ConfigurationBase;->setContributingTo(J)V
return-object p0
.end method
.method public setDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V
return-object p0
.end method
.method public setDispatcherImpl(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V
return-object p0
.end method
.method public setGZIPEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setGZIPEnabled(Z)V
return-object p0
.end method
.method public setHttpConnectionTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V
return-object p0
.end method
.method public setHttpDefaultMaxPerRoute(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpDefaultMaxPerRoute(I)V
return-object p0
.end method
.method public setHttpMaxTotalConnections(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpMaxTotalConnections(I)V
return-object p0
.end method
.method public setHttpProxyHost(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V
return-object p0
.end method
.method public setHttpProxyPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V
return-object p0
.end method
.method public setHttpProxyPort(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V
return-object p0
.end method
.method public setHttpProxyUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V
return-object p0
.end method
.method public setHttpReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V
return-object p0
.end method
.method public setHttpRetryCount(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V
return-object p0
.end method
.method public setHttpRetryIntervalSeconds(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V
return-object p0
.end method
.method public setHttpStreamingReadTimeout(I)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V
return-object p0
.end method
.method public setIncludeEntitiesEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeEntitiesEnbled(Z)V
return-object p0
.end method
.method public setIncludeMyRetweetEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeMyRetweetEnabled(Z)V
return-object p0
.end method
.method public setIncludeRTsEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeRTsEnbled(Z)V
return-object p0
.end method
.method public setJSONStoreEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setJSONStoreEnabled(Z)V
return-object p0
.end method
.method public setMBeanEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMBeanEnabled(Z)V
return-object p0
.end method
.method public setMediaProvider(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProvider(Ljava/lang/String;)V
return-object p0
.end method
.method public setMediaProviderAPIKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderAPIKey(Ljava/lang/String;)V
return-object p0
.end method
.method public setMediaProviderParameters(Ljava/util/Properties;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderParameters(Ljava/util/Properties;)V
return-object p0
.end method
.method public setOAuth2AccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2AccessToken(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuth2InvalidateTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2InvalidateTokenURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuth2TokenType(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2TokenType(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuth2TokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2TokenURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthAccessTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthAuthenticationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthAuthorizationURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V
return-object p0
.end method
.method public setOAuthRequestTokenURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setPassword(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V
return-object p0
.end method
.method public setPrettyDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setPrettyDebugEnabled(Z)V
return-object p0
.end method
.method public setRestBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setSiteStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setSiteStreamBaseURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setTrimUserEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setTrimUserEnabled(Z)V
return-object p0
.end method
.method public setUseSSL(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V
return-object p0
.end method
.method public setUser(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V
return-object p0
.end method
.method public setUserStreamBaseURL(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamBaseURL(Ljava/lang/String;)V
return-object p0
.end method
.method public setUserStreamRepliesAllEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;
.registers 3
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBuilder;->checkNotBuilt()V
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBuilder;->configurationBean:Ltwitter4j/conf/ConfigurationBase;
invoke-virtual {v0, p1}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamRepliesAllEnabled(Z)V
return-object p0
.end method