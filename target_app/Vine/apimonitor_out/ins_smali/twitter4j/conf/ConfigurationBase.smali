.class  Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"
.implements Ltwitter4j/conf/Configuration;
.implements Ljava/io/Serializable;
.field public static final DALVIK:Ljava/lang/String; = "twitter4j.dalvik"
.field private static final DEFAULT_OAUTH2_INVALIDATE_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth2/invalidate_token"
.field private static final DEFAULT_OAUTH2_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth2/token"
.field private static final DEFAULT_OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"
.field private static final DEFAULT_OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/authenticate"
.field private static final DEFAULT_OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"
.field private static final DEFAULT_OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"
.field private static final DEFAULT_REST_BASE_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/"
.field private static final DEFAULT_SITE_STREAM_BASE_URL:Ljava/lang/String; = "https://sitestream.twitter.com/1.1/"
.field private static final DEFAULT_STREAM_BASE_URL:Ljava/lang/String; = "https://stream.twitter.com/1.1/"
.field private static final DEFAULT_USER_STREAM_BASE_URL:Ljava/lang/String; = "https://userstream.twitter.com/1.1/"
.field public static final GAE:Ljava/lang/String; = "twitter4j.gae"
.field static dalvikDetected:Ljava/lang/String; = null
.field static gaeDetected:Ljava/lang/String; = null
.field private static final instances:Ljava/util/List; = null
.field private static final serialVersionUID:J = -0x5bbd3477f3537f08L
.field private IS_DALVIK:Z
.field private IS_GAE:Z
.field private applicationOnlyAuthEnabled:Z
.field private asyncNumThreads:I
.field private clientURL:Ljava/lang/String;
.field private clientVersion:Ljava/lang/String;
.field private contributingTo:J
.field private debug:Z
.field private defaultMaxPerRoute:I
.field private dispatcherImpl:Ljava/lang/String;
.field private gzipEnabled:Z
.field private httpConnectionTimeout:I
.field private httpProxyHost:Ljava/lang/String;
.field private httpProxyPassword:Ljava/lang/String;
.field private httpProxyPort:I
.field private httpProxyUser:Ljava/lang/String;
.field private httpReadTimeout:I
.field private httpRetryCount:I
.field private httpRetryIntervalSeconds:I
.field private httpStreamingReadTimeout:I
.field private includeEntitiesEnabled:Z
.field private includeMyRetweetEnabled:Z
.field private includeRTsEnabled:Z
.field private jsonStoreEnabled:Z
.field private loggerFactory:Ljava/lang/String;
.field private maxTotalConnections:I
.field private mbeanEnabled:Z
.field private mediaProvider:Ljava/lang/String;
.field private mediaProviderAPIKey:Ljava/lang/String;
.field private mediaProviderParameters:Ljava/util/Properties;
.field private oAuth2AccessToken:Ljava/lang/String;
.field private oAuth2InvalidateTokenURL:Ljava/lang/String;
.field private oAuth2TokenType:Ljava/lang/String;
.field private oAuth2TokenURL:Ljava/lang/String;
.field private oAuthAccessToken:Ljava/lang/String;
.field private oAuthAccessTokenSecret:Ljava/lang/String;
.field private oAuthAccessTokenURL:Ljava/lang/String;
.field private oAuthAuthenticationURL:Ljava/lang/String;
.field private oAuthAuthorizationURL:Ljava/lang/String;
.field private oAuthConsumerKey:Ljava/lang/String;
.field private oAuthConsumerSecret:Ljava/lang/String;
.field private oAuthRequestTokenURL:Ljava/lang/String;
.field private password:Ljava/lang/String;
.field private prettyDebug:Z
.field  requestHeaders:Ljava/util/Map;
.field private restBaseURL:Ljava/lang/String;
.field private siteStreamBaseURL:Ljava/lang/String;
.field private stallWarningsEnabled:Z
.field private streamBaseURL:Ljava/lang/String;
.field private trimUserEnabled:Z
.field private useSSL:Z
.field private user:Ljava/lang/String;
.field private userAgent:Ljava/lang/String;
.field private userStreamBaseURL:Ljava/lang/String;
.field private userStreamRepliesAllEnabled:Z
.method static constructor <clinit>()V
.registers 2
:try_start_0
const-string v1, "dalvik.system.VMRuntime"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
const-string v1, "true"
sput-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;
:try_end_9
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_1a
:goto_9
:try_start_9
const-string v1, "com.google.appengine.api.urlfetch.URLFetchService"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
const-string v1, "true"
sput-object v1, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;
:goto_12
:try_end_12
.catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_12} :catch_20
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
sput-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;
return-void
:catch_1a
move-exception v0
const-string v1, "false"
sput-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;
goto :goto_9
:catch_20
move-exception v0
const-string v1, "false"
sput-object v1, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;
goto :goto_12
.end method
.method protected constructor <init>()V
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v5, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v7, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z
iput-boolean v7, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z
iput-boolean v7, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z
iput-boolean v6, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z
iput-boolean v6, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z
invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setDebug(Z)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setUser(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setPassword(Ljava/lang/String;)V
invoke-virtual {p0, v7}, Ltwitter4j/conf/ConfigurationBase;->setUseSSL(Z)V
invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setPrettyDebugEnabled(Z)V
invoke-virtual {p0, v7}, Ltwitter4j/conf/ConfigurationBase;->setGZIPEnabled(Z)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyHost(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyUser(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPassword(Ljava/lang/String;)V
const/4 v3, -0x1
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpProxyPort(I)V
const/16 v3, 0x4e20
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpConnectionTimeout(I)V
const v3, 0x1d4c0
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpReadTimeout(I)V
const v3, 0x9c40
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpStreamingReadTimeout(I)V
invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryCount(I)V
const/4 v3, 0x5
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpRetryIntervalSeconds(I)V
const/16 v3, 0x14
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpMaxTotalConnections(I)V
const/4 v3, 0x2
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setHttpDefaultMaxPerRoute(I)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerKey(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setOAuthConsumerSecret(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessToken(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenSecret(Ljava/lang/String;)V
invoke-virtual {p0, v7}, Ltwitter4j/conf/ConfigurationBase;->setAsyncNumThreads(I)V
const-wide/16 v3, -0x1
invoke-virtual {p0, v3, v4}, Ltwitter4j/conf/ConfigurationBase;->setContributingTo(J)V
invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setClientVersion(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "http://twitter4j.org/en/twitter4j-"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ".xml"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setClientURL(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "twitter4j http://twitter4j.org/ /"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setUserAgent(Ljava/lang/String;)V
invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setJSONStoreEnabled(Z)V
invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setMBeanEnabled(Z)V
const-string v3, "https://api.twitter.com/oauth/request_token"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthRequestTokenURL(Ljava/lang/String;)V
const-string v3, "https://api.twitter.com/oauth/authorize"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthorizationURL(Ljava/lang/String;)V
const-string v3, "https://api.twitter.com/oauth/access_token"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAccessTokenURL(Ljava/lang/String;)V
const-string v3, "https://api.twitter.com/oauth/authenticate"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuthAuthenticationURL(Ljava/lang/String;)V
const-string v3, "https://api.twitter.com/oauth2/token"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2TokenURL(Ljava/lang/String;)V
const-string v3, "https://api.twitter.com/oauth2/invalidate_token"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setOAuth2InvalidateTokenURL(Ljava/lang/String;)V
const-string v3, "https://api.twitter.com/1.1/"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setRestBaseURL(Ljava/lang/String;)V
const-string v3, "https://stream.twitter.com/1.1/"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setStreamBaseURL(Ljava/lang/String;)V
const-string v3, "https://userstream.twitter.com/1.1/"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamBaseURL(Ljava/lang/String;)V
const-string v3, "https://sitestream.twitter.com/1.1/"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setSiteStreamBaseURL(Ljava/lang/String;)V
const-string v3, "twitter4j.internal.async.DispatcherImpl"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setDispatcherImpl(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setLoggerFactory(Ljava/lang/String;)V
invoke-virtual {p0, v6}, Ltwitter4j/conf/ConfigurationBase;->setUserStreamRepliesAllEnabled(Z)V
invoke-virtual {p0, v7}, Ltwitter4j/conf/ConfigurationBase;->setStallWarningsEnabled(Z)V
:try_start_eb
const-string v3, "twitter4j.dalvik"
sget-object v4, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;
invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_f2
.catch Ljava/lang/SecurityException; {:try_start_eb .. :try_end_f2} :catch_11b
move-result-object v1
:goto_f3
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v3
iput-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z
:try_start_fd
const-string v3, "twitter4j.gae"
sget-object v4, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;
invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_104
.catch Ljava/lang/SecurityException; {:try_start_fd .. :try_end_104} :catch_11f
move-result-object v2
:goto_105
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v3
iput-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z
const-string v3, "TWITTER"
invoke-virtual {p0, v3}, Ltwitter4j/conf/ConfigurationBase;->setMediaProvider(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderAPIKey(Ljava/lang/String;)V
invoke-virtual {p0, v5}, Ltwitter4j/conf/ConfigurationBase;->setMediaProviderParameters(Ljava/util/Properties;)V
return-void
:catch_11b
move-exception v0
sget-object v1, Ltwitter4j/conf/ConfigurationBase;->dalvikDetected:Ljava/lang/String;
goto :goto_f3
:catch_11f
move-exception v0
sget-object v2, Ltwitter4j/conf/ConfigurationBase;->gaeDetected:Ljava/lang/String;
goto :goto_105
.end method
.method private static cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V
.registers 2
sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;
invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;
invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_d
return-void
.end method
.method private fixRestBaseURL()V
.registers 4
const/4 v2, 0x0
const-string v0, "https://api.twitter.com/1.1/"
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
:cond_19
const-string v0, "https://api.twitter.com/oauth/access_token"
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
:cond_31
const-string v0, "https://api.twitter.com/oauth/authenticate"
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_49
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
:cond_49
const-string v0, "https://api.twitter.com/oauth/authorize"
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_61
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
:cond_61
const-string v0, "https://api.twitter.com/oauth/request_token"
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
invoke-static {v2, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_79
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
invoke-static {v0, v1}, Ltwitter4j/conf/ConfigurationBase;->fixURL(ZLjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
:cond_79
return-void
.end method
.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
.registers 6
if-nez p1, :cond_4
const/4 v2, 0x0
:goto_3
return-object v2
:cond_4
const-string v2, "://"
invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-ne v2, v1, :cond_15
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "url should contain \'://\'"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_15
add-int/lit8 v2, v1, 0x3
invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
if-eqz p0, :cond_31
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "https://"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_3
:cond_31
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_3
.end method
.method private static getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;
.registers 3
sget-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;
invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_f
sget-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;
invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_e
return-object p0
:cond_f
sget-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ltwitter4j/conf/ConfigurationBase;
move-object p0, v1
goto :goto_e
.end method
.method private initRequestHeaders()V
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
const-string v1, "X-Twitter-Client-Version"
invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientVersion()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
const-string v1, "X-Twitter-Client-URL"
invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getClientURL()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
const-string v1, "X-Twitter-Client"
const-string v2, "Twitter4J"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
const-string v1, "User-Agent"
invoke-virtual {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserAgent()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z
if-eqz v0, :cond_3e
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
const-string v1, "Accept-Encoding"
const-string v2, "gzip"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_3e
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z
if-eqz v0, :cond_4b
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
const-string v1, "Connection"
const-string v2, "close"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4b
return-void
.end method
.method protected cacheInstance()V
.registers 1
invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Ltwitter4j/conf/ConfigurationBase;
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z
if-eq v3, v4, :cond_1e
move v1, v2
goto :goto_4
:cond_1e
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z
if-eq v3, v4, :cond_26
move v1, v2
goto :goto_4
:cond_26
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I
if-eq v3, v4, :cond_2e
move v1, v2
goto :goto_4
:cond_2e
iget-wide v3, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J
iget-wide v5, v0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J
cmp-long v3, v3, v5
if-eqz v3, :cond_38
move v1, v2
goto :goto_4
:cond_38
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->debug:Z
if-eq v3, v4, :cond_40
move v1, v2
goto :goto_4
:cond_40
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I
if-eq v3, v4, :cond_48
move v1, v2
goto :goto_4
:cond_48
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z
if-eq v3, v4, :cond_50
move v1, v2
goto :goto_4
:cond_50
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I
if-eq v3, v4, :cond_58
move v1, v2
goto :goto_4
:cond_58
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I
if-eq v3, v4, :cond_60
move v1, v2
goto :goto_4
:cond_60
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I
if-eq v3, v4, :cond_68
move v1, v2
goto :goto_4
:cond_68
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I
if-eq v3, v4, :cond_70
move v1, v2
goto :goto_4
:cond_70
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I
if-eq v3, v4, :cond_78
move v1, v2
goto :goto_4
:cond_78
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I
if-eq v3, v4, :cond_80
move v1, v2
goto :goto_4
:cond_80
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z
if-eq v3, v4, :cond_89
move v1, v2
goto/16 :goto_4
:cond_89
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z
if-eq v3, v4, :cond_92
move v1, v2
goto/16 :goto_4
:cond_92
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z
if-eq v3, v4, :cond_9b
move v1, v2
goto/16 :goto_4
:cond_9b
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z
if-eq v3, v4, :cond_a4
move v1, v2
goto/16 :goto_4
:cond_a4
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z
if-eq v3, v4, :cond_ad
move v1, v2
goto/16 :goto_4
:cond_ad
iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I
iget v4, v0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I
if-eq v3, v4, :cond_b6
move v1, v2
goto/16 :goto_4
:cond_b6
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z
if-eq v3, v4, :cond_bf
move v1, v2
goto/16 :goto_4
:cond_bf
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z
if-eq v3, v4, :cond_c8
move v1, v2
goto/16 :goto_4
:cond_c8
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z
if-eq v3, v4, :cond_d1
move v1, v2
goto/16 :goto_4
:cond_d1
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z
if-eq v3, v4, :cond_da
move v1, v2
goto/16 :goto_4
:cond_da
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
if-eq v3, v4, :cond_e3
move v1, v2
goto/16 :goto_4
:cond_e3
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z
iget-boolean v4, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z
if-eq v3, v4, :cond_ec
move v1, v2
goto/16 :goto_4
:cond_ec
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
if-eqz v3, :cond_fd
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_101
:cond_fa
move v1, v2
goto/16 :goto_4
:cond_fd
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
if-nez v3, :cond_fa
:cond_101
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
if-eqz v3, :cond_112
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_116
:cond_10f
move v1, v2
goto/16 :goto_4
:cond_112
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
if-nez v3, :cond_10f
:cond_116
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
if-eqz v3, :cond_127
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_12b
:cond_124
move v1, v2
goto/16 :goto_4
:cond_127
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
if-nez v3, :cond_124
:cond_12b
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
if-eqz v3, :cond_13c
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_140
:cond_139
move v1, v2
goto/16 :goto_4
:cond_13c
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
if-nez v3, :cond_139
:cond_140
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
if-eqz v3, :cond_151
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_155
:cond_14e
move v1, v2
goto/16 :goto_4
:cond_151
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
if-nez v3, :cond_14e
:cond_155
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
if-eqz v3, :cond_166
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_16a
:cond_163
move v1, v2
goto/16 :goto_4
:cond_166
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
if-nez v3, :cond_163
:cond_16a
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
if-eqz v3, :cond_17b
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_17f
:cond_178
move v1, v2
goto/16 :goto_4
:cond_17b
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
if-nez v3, :cond_178
:cond_17f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
if-eqz v3, :cond_190
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_194
:cond_18d
move v1, v2
goto/16 :goto_4
:cond_190
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
if-nez v3, :cond_18d
:cond_194
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
if-eqz v3, :cond_1a5
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1a9
:cond_1a2
move v1, v2
goto/16 :goto_4
:cond_1a5
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
if-nez v3, :cond_1a2
:cond_1a9
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
if-eqz v3, :cond_1ba
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
invoke-virtual {v3, v4}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1be
:cond_1b7
move v1, v2
goto/16 :goto_4
:cond_1ba
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
if-nez v3, :cond_1b7
:cond_1be
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
if-eqz v3, :cond_1cf
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1d3
:cond_1cc
move v1, v2
goto/16 :goto_4
:cond_1cf
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
if-nez v3, :cond_1cc
:cond_1d3
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
if-eqz v3, :cond_1e4
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1e8
:cond_1e1
move v1, v2
goto/16 :goto_4
:cond_1e4
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
if-nez v3, :cond_1e1
:cond_1e8
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
if-eqz v3, :cond_1f9
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1fd
:cond_1f6
move v1, v2
goto/16 :goto_4
:cond_1f9
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
if-nez v3, :cond_1f6
:cond_1fd
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
if-eqz v3, :cond_20e
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_212
:cond_20b
move v1, v2
goto/16 :goto_4
:cond_20e
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
if-nez v3, :cond_20b
:cond_212
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
if-eqz v3, :cond_223
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_227
:cond_220
move v1, v2
goto/16 :goto_4
:cond_223
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
if-nez v3, :cond_220
:cond_227
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
if-eqz v3, :cond_238
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_23c
:cond_235
move v1, v2
goto/16 :goto_4
:cond_238
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
if-nez v3, :cond_235
:cond_23c
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
if-eqz v3, :cond_24d
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_251
:cond_24a
move v1, v2
goto/16 :goto_4
:cond_24d
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
if-nez v3, :cond_24a
:cond_251
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
if-eqz v3, :cond_262
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_266
:cond_25f
move v1, v2
goto/16 :goto_4
:cond_262
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
if-nez v3, :cond_25f
:cond_266
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
if-eqz v3, :cond_277
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_27b
:cond_274
move v1, v2
goto/16 :goto_4
:cond_277
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
if-nez v3, :cond_274
:cond_27b
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
if-eqz v3, :cond_28c
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_290
:cond_289
move v1, v2
goto/16 :goto_4
:cond_28c
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
if-nez v3, :cond_289
:cond_290
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
if-eqz v3, :cond_2a1
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2a5
:cond_29e
move v1, v2
goto/16 :goto_4
:cond_2a1
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
if-nez v3, :cond_29e
:cond_2a5
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
if-eqz v3, :cond_2b6
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2ba
:cond_2b3
move v1, v2
goto/16 :goto_4
:cond_2b6
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
if-nez v3, :cond_2b3
:cond_2ba
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
if-eqz v3, :cond_2cb
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2cf
:cond_2c8
move v1, v2
goto/16 :goto_4
:cond_2cb
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
if-nez v3, :cond_2c8
:cond_2cf
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
if-eqz v3, :cond_2e0
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2e4
:cond_2dd
move v1, v2
goto/16 :goto_4
:cond_2e0
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
if-nez v3, :cond_2dd
:cond_2e4
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
if-eqz v3, :cond_2f5
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2f9
:cond_2f2
move v1, v2
goto/16 :goto_4
:cond_2f5
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
if-nez v3, :cond_2f2
:cond_2f9
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
if-eqz v3, :cond_30a
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_30e
:cond_307
move v1, v2
goto/16 :goto_4
:cond_30a
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
if-nez v3, :cond_307
:cond_30e
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
if-eqz v3, :cond_31f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_323
:cond_31c
move v1, v2
goto/16 :goto_4
:cond_31f
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
if-nez v3, :cond_31c
:cond_323
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
if-eqz v3, :cond_334
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_338
:cond_331
move v1, v2
goto/16 :goto_4
:cond_334
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
if-nez v3, :cond_331
:cond_338
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
if-eqz v3, :cond_349
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_34d
:cond_346
move v1, v2
goto/16 :goto_4
:cond_349
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
if-nez v3, :cond_346
:cond_34d
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
if-eqz v3, :cond_35e
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_35b
move v1, v2
goto/16 :goto_4
:cond_35e
iget-object v3, v0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_35b
.end method
.method public final getAsyncNumThreads()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I
return v0
.end method
.method public final getClientURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
return-object v0
.end method
.method public final getClientVersion()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
return-object v0
.end method
.method public final getContributingTo()J
.registers 3
iget-wide v0, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J
return-wide v0
.end method
.method public getDispatcherImpl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
return-object v0
.end method
.method public final getHttpConnectionTimeout()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I
return v0
.end method
.method public final getHttpDefaultMaxPerRoute()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I
return v0
.end method
.method public final getHttpMaxTotalConnections()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I
return v0
.end method
.method public final getHttpProxyHost()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
return-object v0
.end method
.method public final getHttpProxyPassword()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
return-object v0
.end method
.method public final getHttpProxyPort()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I
return v0
.end method
.method public final getHttpProxyUser()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
return-object v0
.end method
.method public final getHttpReadTimeout()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I
return v0
.end method
.method public final getHttpRetryCount()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I
return v0
.end method
.method public final getHttpRetryIntervalSeconds()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I
return v0
.end method
.method public getHttpStreamingReadTimeout()I
.registers 2
iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I
return v0
.end method
.method public getLoggerFactory()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
return-object v0
.end method
.method public getMediaProvider()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
return-object v0
.end method
.method public getMediaProviderAPIKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
return-object v0
.end method
.method public getMediaProviderParameters()Ljava/util/Properties;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
return-object v0
.end method
.method public getOAuth2AccessToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
return-object v0
.end method
.method public getOAuth2InvalidateTokenURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
return-object v0
.end method
.method public getOAuth2TokenType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
return-object v0
.end method
.method public getOAuth2TokenURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
return-object v0
.end method
.method public getOAuthAccessToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
return-object v0
.end method
.method public getOAuthAccessTokenSecret()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
return-object v0
.end method
.method public getOAuthAccessTokenURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
return-object v0
.end method
.method public getOAuthAuthenticationURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
return-object v0
.end method
.method public getOAuthAuthorizationURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
return-object v0
.end method
.method public final getOAuthConsumerKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
return-object v0
.end method
.method public final getOAuthConsumerSecret()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
return-object v0
.end method
.method public getOAuthRequestTokenURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
return-object v0
.end method
.method public final getPassword()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
return-object v0
.end method
.method public getRequestHeaders()Ljava/util/Map;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
return-object v0
.end method
.method public getRestBaseURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
return-object v0
.end method
.method public getSiteStreamBaseURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
return-object v0
.end method
.method public getStreamBaseURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
return-object v0
.end method
.method public final getUser()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
return-object v0
.end method
.method public final getUserAgent()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
return-object v0
.end method
.method public getUserStreamBaseURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z
if-eqz v3, :cond_26c
move v0, v1
:goto_7
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
if-eqz v3, :cond_26f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_13
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
if-eqz v3, :cond_272
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_21
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
if-eqz v3, :cond_275
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_2f
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
if-eqz v3, :cond_278
move v3, v1
:goto_38
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z
if-eqz v3, :cond_27b
move v3, v1
:goto_41
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z
if-eqz v3, :cond_27e
move v3, v1
:goto_4a
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
if-eqz v3, :cond_281
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_58
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
if-eqz v3, :cond_284
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_66
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
if-eqz v3, :cond_287
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_74
add-int v0, v4, v3
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I
add-int v0, v3, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
if-eqz v3, :cond_28a
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_b2
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
if-eqz v3, :cond_28d
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_c0
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
if-eqz v3, :cond_290
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_ce
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
if-eqz v3, :cond_293
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_dc
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
if-eqz v3, :cond_296
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_ea
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
if-eqz v3, :cond_299
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_f8
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
if-eqz v3, :cond_29c
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_106
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
if-eqz v3, :cond_29f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_114
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
if-eqz v3, :cond_2a2
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_122
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
if-eqz v3, :cond_2a5
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_130
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
if-eqz v3, :cond_2a8
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_13e
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
if-eqz v3, :cond_2ab
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_14c
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
if-eqz v3, :cond_2ae
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_15a
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
if-eqz v3, :cond_2b1
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_168
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
if-eqz v3, :cond_2b4
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_176
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
if-eqz v3, :cond_2b7
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_184
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
if-eqz v3, :cond_2ba
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_192
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
if-eqz v3, :cond_2bd
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_1a0
add-int v0, v4, v3
mul-int/lit8 v3, v0, 0x1f
iget v4, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I
add-int v0, v3, v4
mul-int/lit8 v3, v0, 0x1f
iget-wide v4, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J
iget-wide v6, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J
const/16 v8, 0x20
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v3, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z
if-eqz v3, :cond_2c0
move v3, v1
:goto_1bc
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z
if-eqz v3, :cond_2c3
move v3, v1
:goto_1c5
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z
if-eqz v3, :cond_2c6
move v3, v1
:goto_1ce
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z
if-eqz v3, :cond_2c9
move v3, v1
:goto_1d7
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z
if-eqz v3, :cond_2cc
move v3, v1
:goto_1e0
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z
if-eqz v3, :cond_2cf
move v3, v1
:goto_1e9
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z
if-eqz v3, :cond_2d2
move v3, v1
:goto_1f2
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z
if-eqz v3, :cond_2d5
move v3, v1
:goto_1fb
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z
if-eqz v3, :cond_2d8
move v3, v1
:goto_204
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
if-eqz v3, :cond_2db
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_212
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
if-eqz v3, :cond_2de
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_220
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
if-eqz v3, :cond_2e1
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
invoke-virtual {v3}, Ljava/util/Properties;->hashCode()I
move-result v3
:goto_22e
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
if-eqz v3, :cond_2e4
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_23c
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
if-eqz v3, :cond_2e7
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
:goto_24a
add-int v0, v4, v3
mul-int/lit8 v4, v0, 0x1f
iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z
if-eqz v3, :cond_2ea
move v3, v1
:goto_253
add-int v0, v4, v3
mul-int/lit8 v3, v0, 0x1f
iget-boolean v4, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z
if-eqz v4, :cond_2ed
:goto_25b
add-int v0, v3, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v3, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
if-eqz v3, :cond_269
iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->hashCode()I
move-result v2
:cond_269
add-int v0, v1, v2
return v0
:cond_26c
move v0, v2
goto/16 :goto_7
:cond_26f
move v3, v2
goto/16 :goto_13
:cond_272
move v3, v2
goto/16 :goto_21
:cond_275
move v3, v2
goto/16 :goto_2f
:cond_278
move v3, v2
goto/16 :goto_38
:cond_27b
move v3, v2
goto/16 :goto_41
:cond_27e
move v3, v2
goto/16 :goto_4a
:cond_281
move v3, v2
goto/16 :goto_58
:cond_284
move v3, v2
goto/16 :goto_66
:cond_287
move v3, v2
goto/16 :goto_74
:cond_28a
move v3, v2
goto/16 :goto_b2
:cond_28d
move v3, v2
goto/16 :goto_c0
:cond_290
move v3, v2
goto/16 :goto_ce
:cond_293
move v3, v2
goto/16 :goto_dc
:cond_296
move v3, v2
goto/16 :goto_ea
:cond_299
move v3, v2
goto/16 :goto_f8
:cond_29c
move v3, v2
goto/16 :goto_106
:cond_29f
move v3, v2
goto/16 :goto_114
:cond_2a2
move v3, v2
goto/16 :goto_122
:cond_2a5
move v3, v2
goto/16 :goto_130
:cond_2a8
move v3, v2
goto/16 :goto_13e
:cond_2ab
move v3, v2
goto/16 :goto_14c
:cond_2ae
move v3, v2
goto/16 :goto_15a
:cond_2b1
move v3, v2
goto/16 :goto_168
:cond_2b4
move v3, v2
goto/16 :goto_176
:cond_2b7
move v3, v2
goto/16 :goto_184
:cond_2ba
move v3, v2
goto/16 :goto_192
:cond_2bd
move v3, v2
goto/16 :goto_1a0
:cond_2c0
move v3, v2
goto/16 :goto_1bc
:cond_2c3
move v3, v2
goto/16 :goto_1c5
:cond_2c6
move v3, v2
goto/16 :goto_1ce
:cond_2c9
move v3, v2
goto/16 :goto_1d7
:cond_2cc
move v3, v2
goto/16 :goto_1e0
:cond_2cf
move v3, v2
goto/16 :goto_1e9
:cond_2d2
move v3, v2
goto/16 :goto_1f2
:cond_2d5
move v3, v2
goto/16 :goto_1fb
:cond_2d8
move v3, v2
goto/16 :goto_204
:cond_2db
move v3, v2
goto/16 :goto_212
:cond_2de
move v3, v2
goto/16 :goto_220
:cond_2e1
move v3, v2
goto/16 :goto_22e
:cond_2e4
move v3, v2
goto/16 :goto_23c
:cond_2e7
move v3, v2
goto/16 :goto_24a
:cond_2ea
move v3, v2
goto/16 :goto_253
:cond_2ed
move v1, v2
goto/16 :goto_25b
.end method
.method public isApplicationOnlyAuthEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z
return v0
.end method
.method public final isDalvik()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z
return v0
.end method
.method public final isDebugEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z
return v0
.end method
.method public isGAE()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z
return v0
.end method
.method public isGZIPEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z
return v0
.end method
.method public isIncludeEntitiesEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z
return v0
.end method
.method public isIncludeMyRetweetEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z
return v0
.end method
.method public isIncludeRTsEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z
return v0
.end method
.method public isJSONStoreEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z
return v0
.end method
.method public isMBeanEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z
return v0
.end method
.method public isPrettyDebugEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z
return v0
.end method
.method public isStallWarningsEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z
return v0
.end method
.method public isTrimUserEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z
return v0
.end method
.method public isUserStreamRepliesAllEnabled()Z
.registers 2
iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z
return v0
.end method
.method protected readResolve()Ljava/lang/Object;
.registers 2
invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;
move-result-object v0
return-object v0
.end method
.method protected final setApplicationOnlyAuthEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z
return-void
.end method
.method protected final setAsyncNumThreads(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I
return-void
.end method
.method protected final setClientURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V
return-void
.end method
.method protected final setClientVersion(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V
return-void
.end method
.method protected final setContributingTo(J)V
.registers 3
iput-wide p1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J
return-void
.end method
.method protected final setDebug(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z
return-void
.end method
.method protected final setDispatcherImpl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
return-void
.end method
.method protected final setGZIPEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V
return-void
.end method
.method protected final setHttpConnectionTimeout(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I
return-void
.end method
.method protected final setHttpDefaultMaxPerRoute(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I
return-void
.end method
.method protected final setHttpMaxTotalConnections(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I
return-void
.end method
.method protected final setHttpProxyHost(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
return-void
.end method
.method protected final setHttpProxyPassword(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
return-void
.end method
.method protected final setHttpProxyPort(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I
return-void
.end method
.method protected final setHttpProxyUser(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
return-void
.end method
.method protected final setHttpReadTimeout(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I
return-void
.end method
.method protected final setHttpRetryCount(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I
return-void
.end method
.method protected final setHttpRetryIntervalSeconds(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I
return-void
.end method
.method protected final setHttpStreamingReadTimeout(I)V
.registers 2
iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I
return-void
.end method
.method protected final setIncludeEntitiesEnbled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z
return-void
.end method
.method public setIncludeMyRetweetEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z
return-void
.end method
.method protected final setIncludeRTsEnbled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z
return-void
.end method
.method protected final setJSONStoreEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z
return-void
.end method
.method protected final setLoggerFactory(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
return-void
.end method
.method protected final setMBeanEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z
return-void
.end method
.method protected final setMediaProvider(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
return-void
.end method
.method protected final setMediaProviderAPIKey(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
return-void
.end method
.method protected final setMediaProviderParameters(Ljava/util/Properties;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
return-void
.end method
.method protected final setOAuth2AccessToken(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
return-void
.end method
.method protected final setOAuth2InvalidateTokenURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setOAuth2TokenType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
return-void
.end method
.method protected final setOAuth2TokenURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setOAuthAccessToken(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
return-void
.end method
.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
return-void
.end method
.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setPassword(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
return-void
.end method
.method protected final setPrettyDebugEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z
return-void
.end method
.method protected final setRestBaseURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setSiteStreamBaseURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
return-void
.end method
.method protected final setStallWarningsEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z
return-void
.end method
.method protected final setStreamBaseURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
return-void
.end method
.method public setTrimUserEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z
return-void
.end method
.method protected final setUseSSL(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->fixRestBaseURL()V
return-void
.end method
.method protected final setUser(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
return-void
.end method
.method protected final setUserAgent(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;->initRequestHeaders()V
return-void
.end method
.method protected final setUserStreamBaseURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
return-void
.end method
.method protected final setUserStreamRepliesAllEnabled(Z)V
.registers 2
iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
const/16 v3, 0x27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "ConfigurationBase{debug="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", userAgent=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userAgent:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", user=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", password=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", useSSL="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->useSSL:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", prettyDebug="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->prettyDebug:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", gzipEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->gzipEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpProxyHost=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyHost:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpProxyUser=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyUser:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpProxyPassword=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPassword:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpProxyPort="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpProxyPort:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpConnectionTimeout="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConnectionTimeout:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpReadTimeout="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpReadTimeout:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpStreamingReadTimeout="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpRetryCount="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpRetryIntervalSeconds="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", maxTotalConnections="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->maxTotalConnections:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", defaultMaxPerRoute="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->defaultMaxPerRoute:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthConsumerKey=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthConsumerSecret=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthAccessToken=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthAccessTokenSecret=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuth2TokenType=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuth2AccessToken=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthRequestTokenURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthAuthorizationURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthAccessTokenURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuthAuthenticationURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuth2TokenURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", oAuth2InvalidateTokenURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", restBaseURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", streamBaseURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", userStreamBaseURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", siteStreamBaseURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", dispatcherImpl=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", loggerFactory=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", asyncNumThreads="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", contributingTo="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", includeRTsEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeRTsEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", includeEntitiesEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", includeMyRetweetEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", trimUserEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", jsonStoreEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mbeanEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", userStreamRepliesAllEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", stallWarningsEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", applicationOnlyAuthEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mediaProvider=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mediaProviderAPIKey=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mediaProviderParameters="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", clientVersion=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientVersion:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", clientURL=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->clientURL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", IS_DALVIK="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->IS_DALVIK:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", IS_GAE="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->IS_GAE:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", requestHeaders="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->requestHeaders:Ljava/util/Map;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method