.class public final Ltwitter4j/conf/PropertyConfiguration;
.super Ltwitter4j/conf/ConfigurationBase;
.source "PropertyConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final APPLICATION_ONLY_AUTH_ENABLED:Ljava/lang/String; = "enableApplicationOnlyAuth"

.field public static final ASYNC_DISPATCHER_IMPL:Ljava/lang/String; = "async.dispatcherImpl"

.field public static final ASYNC_NUM_THREADS:Ljava/lang/String; = "async.numThreads"

.field public static final CLIENT_URL:Ljava/lang/String; = "clientURL"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "clientVersion"

.field public static final CONTRIBUTING_TO:Ljava/lang/String; = "contributingTo"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final HTTP_CONNECTION_TIMEOUT:Ljava/lang/String; = "http.connectionTimeout"

.field public static final HTTP_DEFAULT_MAX_PER_ROUTE:Ljava/lang/String; = "http.defaultMaxPerRoute"

.field public static final HTTP_GZIP:Ljava/lang/String; = "http.gzip"

.field public static final HTTP_MAX_TOTAL_CONNECTIONS:Ljava/lang/String; = "http.maxTotalConnections"

.field public static final HTTP_PRETTY_DEBUG:Ljava/lang/String; = "http.prettyDebug"

.field public static final HTTP_PROXY_HOST:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_HOST_FALLBACK:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_PASSWORD:Ljava/lang/String; = "http.proxyPassword"

.field public static final HTTP_PROXY_PORT:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_PORT_FALLBACK:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_USER:Ljava/lang/String; = "http.proxyUser"

.field public static final HTTP_READ_TIMEOUT:Ljava/lang/String; = "http.readTimeout"

.field public static final HTTP_RETRY_COUNT:Ljava/lang/String; = "http.retryCount"

.field public static final HTTP_RETRY_INTERVAL_SECS:Ljava/lang/String; = "http.retryIntervalSecs"

.field public static final HTTP_STREAMING_READ_TIMEOUT:Ljava/lang/String; = "http.streamingReadTimeout"

.field public static final HTTP_USER_AGENT:Ljava/lang/String; = "http.userAgent"

.field public static final HTTP_USE_SSL:Ljava/lang/String; = "http.useSSL"

.field public static final INCLUDE_ENTITIES:Ljava/lang/String; = "includeEntities"

.field public static final INCLUDE_MY_RETWEET:Ljava/lang/String; = "includeMyRetweet"

.field public static final INCLUDE_RTS:Ljava/lang/String; = "includeRTs"

.field public static final JSON_STORE_ENABLED:Ljava/lang/String; = "jsonStoreEnabled"

.field public static final LOGGER_FACTORY:Ljava/lang/String; = "loggerFactory"

.field public static final MBEAN_ENABLED:Ljava/lang/String; = "mbeanEnabled"

.field public static final MEDIA_PROVIDER:Ljava/lang/String; = "media.provider"

.field public static final MEDIA_PROVIDER_API_KEY:Ljava/lang/String; = "media.providerAPIKey"

.field public static final MEDIA_PROVIDER_PARAMETERS:Ljava/lang/String; = "media.providerParameters"

.field public static final OAUTH2_ACCESS_TOKEN:Ljava/lang/String; = "oauth2.accessToken"

.field public static final OAUTH2_INVALIDATE_TOKEN_URL:Ljava/lang/String; = "oauth2.invalidateTokenURL"

.field public static final OAUTH2_TOKEN_TYPE:Ljava/lang/String; = "oauth2.tokenType"

.field public static final OAUTH2_TOKEN_URL:Ljava/lang/String; = "oauth2.tokenURL"

.field public static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "oauth.accessToken"

.field public static final OAUTH_ACCESS_TOKEN_SECRET:Ljava/lang/String; = "oauth.accessTokenSecret"

.field public static final OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "oauth.accessTokenURL"

.field public static final OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "oauth.authenticationURL"

.field public static final OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "oauth.authorizationURL"

.field public static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth.consumerKey"

.field public static final OAUTH_CONSUMER_SECRET:Ljava/lang/String; = "oauth.consumerSecret"

.field public static final OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "oauth.requestTokenURL"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final REST_BASE_URL:Ljava/lang/String; = "restBaseURL"

.field public static final SITE_STREAM_BASE_URL:Ljava/lang/String; = "siteStreamBaseURL"

.field public static final STREAM_BASE_URL:Ljava/lang/String; = "streamBaseURL"

.field public static final STREAM_STALL_WARNINGS_ENABLED:Ljava/lang/String; = "stream.enableStallWarnings"

.field public static final STREAM_USER_REPLIES_ALL:Ljava/lang/String; = "stream.user.repliesAll"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USER_STREAM_BASE_URL:Ljava/lang/String; = "userStreamBaseURL"

.field private static final serialVersionUID:J = 0x59a2240419f3c755L


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "/"

    invoke-direct {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    const-string v1, "/"

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Properties;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_d} :catch_77

    :try_start_d
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2e} :catch_2f

    goto :goto_19

    :catch_2f
    move-exception v6

    :cond_30
    :try_start_30
    invoke-direct {p0, v5}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_33} :catch_77

    :goto_33
    const-string v0, "twitter4j.properties"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "twitter4j.properties"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    const-class v6, Ltwitter4j/conf/Configuration;

    const-string v7, "/twitter4j.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    const-class v6, Ltwitter4j/conf/Configuration;

    const-string v7, "/WEB-INF/twitter4j.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    :try_start_69
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "WEB-INF/twitter4j.properties"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v6}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_73} :catch_80
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_73} :catch_7e

    :goto_73
    invoke-direct {p0, v5, p1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    return-void

    :catch_77
    move-exception v3

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    goto :goto_33

    :catch_7e
    move-exception v6

    goto :goto_73

    :catch_80
    move-exception v6

    goto :goto_73
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3

    const-string v0, "/"

    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    invoke-direct {p0, p1, p2}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    return-void
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :catch_8
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_25

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_2c

    :try_start_17
    invoke-virtual {p1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_45

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_3c

    :cond_23
    :goto_23
    move-object v1, v2

    :goto_24
    return v3

    :cond_25
    if-eqz v1, :cond_2a

    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3e

    :cond_2a
    :goto_2a
    const/4 v3, 0x0

    goto :goto_24

    :catch_2c
    move-exception v3

    :goto_2d
    if-eqz v1, :cond_2a

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_2a

    :catch_33
    move-exception v3

    goto :goto_2a

    :catchall_35
    move-exception v3

    :goto_36
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_40

    :cond_3b
    :goto_3b
    throw v3

    :catch_3c
    move-exception v4

    goto :goto_23

    :catch_3e
    move-exception v3

    goto :goto_2a

    :catch_40
    move-exception v4

    goto :goto_3b

    :catchall_42
    move-exception v3

    move-object v1, v2

    goto :goto_36

    :catch_45
    move-exception v3

    move-object v1, v2

    goto :goto_2d
.end method

.method private normalize(Ljava/util/Properties;)V
    .registers 12

    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v8, -0x1

    const-string v9, "twitter4j."

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_f

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_29
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "twitter4j."

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0xa

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    :cond_63
    return-void
.end method

.method private notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 12

    const-string v7, "debug"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "debug"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setDebug(Z)V

    :cond_11
    const-string v7, "user"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, "user"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUser(Ljava/lang/String;)V

    :cond_22
    const-string v7, "password"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    const-string v7, "password"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setPassword(Ljava/lang/String;)V

    :cond_33
    const-string v7, "http.useSSL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    const-string v7, "http.useSSL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUseSSL(Z)V

    :cond_44
    const-string v7, "http.prettyDebug"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    const-string v7, "http.prettyDebug"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setPrettyDebugEnabled(Z)V

    :cond_55
    const-string v7, "http.gzip"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    const-string v7, "http.gzip"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setGZIPEnabled(Z)V

    :cond_66
    const-string v7, "http.proxyHost"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_384

    const-string v7, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    :cond_77
    :goto_77
    const-string v7, "http.proxyUser"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_88

    const-string v7, "http.proxyUser"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyUser(Ljava/lang/String;)V

    :cond_88
    const-string v7, "http.proxyPassword"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_99

    const-string v7, "http.proxyPassword"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPassword(Ljava/lang/String;)V

    :cond_99
    const-string v7, "http.proxyPort"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_397

    const-string v7, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    :cond_aa
    :goto_aa
    const-string v7, "http.connectionTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bb

    const-string v7, "http.connectionTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpConnectionTimeout(I)V

    :cond_bb
    const-string v7, "http.readTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const-string v7, "http.readTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpReadTimeout(I)V

    :cond_cc
    const-string v7, "http.streamingReadTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_dd

    const-string v7, "http.streamingReadTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpStreamingReadTimeout(I)V

    :cond_dd
    const-string v7, "http.retryCount"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ee

    const-string v7, "http.retryCount"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryCount(I)V

    :cond_ee
    const-string v7, "http.retryIntervalSecs"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ff

    const-string v7, "http.retryIntervalSecs"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryIntervalSeconds(I)V

    :cond_ff
    const-string v7, "http.maxTotalConnections"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_110

    const-string v7, "http.maxTotalConnections"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpMaxTotalConnections(I)V

    :cond_110
    const-string v7, "http.defaultMaxPerRoute"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_121

    const-string v7, "http.defaultMaxPerRoute"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpDefaultMaxPerRoute(I)V

    :cond_121
    const-string v7, "oauth.consumerKey"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_132

    const-string v7, "oauth.consumerKey"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerKey(Ljava/lang/String;)V

    :cond_132
    const-string v7, "oauth.consumerSecret"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_143

    const-string v7, "oauth.consumerSecret"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerSecret(Ljava/lang/String;)V

    :cond_143
    const-string v7, "oauth.accessToken"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_154

    const-string v7, "oauth.accessToken"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessToken(Ljava/lang/String;)V

    :cond_154
    const-string v7, "oauth.accessTokenSecret"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_165

    const-string v7, "oauth.accessTokenSecret"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    :cond_165
    const-string v7, "oauth2.tokenType"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_176

    const-string v7, "oauth2.tokenType"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2TokenType(Ljava/lang/String;)V

    :cond_176
    const-string v7, "oauth2.accessToken"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_187

    const-string v7, "oauth2.accessToken"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2AccessToken(Ljava/lang/String;)V

    :cond_187
    const-string v7, "async.numThreads"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_198

    const-string v7, "async.numThreads"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setAsyncNumThreads(I)V

    :cond_198
    const-string v7, "contributingTo"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a9

    const-string v7, "contributingTo"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getLongProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Ltwitter4j/conf/PropertyConfiguration;->setContributingTo(J)V

    :cond_1a9
    const-string v7, "async.dispatcherImpl"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ba

    const-string v7, "async.dispatcherImpl"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setDispatcherImpl(Ljava/lang/String;)V

    :cond_1ba
    const-string v7, "clientVersion"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1cb

    const-string v7, "clientVersion"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setClientVersion(Ljava/lang/String;)V

    :cond_1cb
    const-string v7, "clientURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1dc

    const-string v7, "clientURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setClientURL(Ljava/lang/String;)V

    :cond_1dc
    const-string v7, "http.userAgent"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ed

    const-string v7, "http.userAgent"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserAgent(Ljava/lang/String;)V

    :cond_1ed
    const-string v7, "oauth.requestTokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1fe

    const-string v7, "oauth.requestTokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    :cond_1fe
    const-string v7, "oauth.authorizationURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20f

    const-string v7, "oauth.authorizationURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    :cond_20f
    const-string v7, "oauth.accessTokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_220

    const-string v7, "oauth.accessTokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    :cond_220
    const-string v7, "oauth.authenticationURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_231

    const-string v7, "oauth.authenticationURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    :cond_231
    const-string v7, "oauth2.tokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_242

    const-string v7, "oauth2.tokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2TokenURL(Ljava/lang/String;)V

    :cond_242
    const-string v7, "oauth2.invalidateTokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_253

    const-string v7, "oauth2.invalidateTokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2InvalidateTokenURL(Ljava/lang/String;)V

    :cond_253
    const-string v7, "restBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_264

    const-string v7, "restBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setRestBaseURL(Ljava/lang/String;)V

    :cond_264
    const-string v7, "streamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_275

    const-string v7, "streamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setStreamBaseURL(Ljava/lang/String;)V

    :cond_275
    const-string v7, "userStreamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_286

    const-string v7, "userStreamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamBaseURL(Ljava/lang/String;)V

    :cond_286
    const-string v7, "siteStreamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_297

    const-string v7, "siteStreamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setSiteStreamBaseURL(Ljava/lang/String;)V

    :cond_297
    const-string v7, "includeRTs"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a8

    const-string v7, "includeRTs"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeRTsEnbled(Z)V

    :cond_2a8
    const-string v7, "includeEntities"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b9

    const-string v7, "includeEntities"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeEntitiesEnbled(Z)V

    :cond_2b9
    const-string v7, "includeMyRetweet"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2ca

    const-string v7, "includeMyRetweet"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeMyRetweetEnabled(Z)V

    :cond_2ca
    const-string v7, "loggerFactory"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2db

    const-string v7, "loggerFactory"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setLoggerFactory(Ljava/lang/String;)V

    :cond_2db
    const-string v7, "jsonStoreEnabled"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2ec

    const-string v7, "jsonStoreEnabled"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setJSONStoreEnabled(Z)V

    :cond_2ec
    const-string v7, "mbeanEnabled"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2fd

    const-string v7, "mbeanEnabled"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMBeanEnabled(Z)V

    :cond_2fd
    const-string v7, "stream.user.repliesAll"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30e

    const-string v7, "stream.user.repliesAll"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamRepliesAllEnabled(Z)V

    :cond_30e
    const-string v7, "stream.enableStallWarnings"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31f

    const-string v7, "stream.enableStallWarnings"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setStallWarningsEnabled(Z)V

    :cond_31f
    const-string v7, "enableApplicationOnlyAuth"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_330

    const-string v7, "enableApplicationOnlyAuth"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setApplicationOnlyAuthEnabled(Z)V

    :cond_330
    const-string v7, "media.provider"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_341

    const-string v7, "media.provider"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProvider(Ljava/lang/String;)V

    :cond_341
    const-string v7, "media.providerAPIKey"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_352

    const-string v7, "media.providerAPIKey"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderAPIKey(Ljava/lang/String;)V

    :cond_352
    const-string v7, "media.providerParameters"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3ad

    const-string v7, "media.providerParameters"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-static {v7, v8}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_36e
    if-ge v1, v2, :cond_3aa

    aget-object v6, v0, v1

    const-string v7, "="

    invoke-static {v6, v7}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_36e

    :cond_384
    const-string v7, "http.proxyHost"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    const-string v7, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    goto/16 :goto_77

    :cond_397
    const-string v7, "http.proxyPort"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aa

    const-string v7, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    goto/16 :goto_aa

    :cond_3aa
    invoke-virtual {p0, v3}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderParameters(Ljava/util/Properties;)V

    :cond_3ad
    invoke-virtual {p0}, Ltwitter4j/conf/PropertyConfiguration;->cacheInstance()V

    return-void
.end method

.method private setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 11

    const-string v6, ""

    invoke-direct {p0, p1, v6}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    const-string v6, "/"

    invoke-static {p2, v6}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_4e

    aget-object v4, v0, v1

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    if-nez v3, :cond_36

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_30
    invoke-direct {p0, p1, v3}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_4e
    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public bridge synthetic getDispatcherImpl()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHttpStreamingReadTimeout()I
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpStreamingReadTimeout()I

    move-result v0

    return v0
.end method

.method protected getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result v2

    :goto_19
    return v2

    :catch_1a
    move-exception v0

    const/4 v2, -0x1

    goto :goto_19
.end method

.method public bridge synthetic getLoggerFactory()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getLoggerFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLongProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_15
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-wide v2

    :goto_19
    return-wide v2

    :catch_1a
    move-exception v0

    const-wide/16 v2, -0x1

    goto :goto_19
.end method

.method public bridge synthetic getMediaProvider()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaProviderAPIKey()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaProviderParameters()Ljava/util/Properties;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderParameters()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2AccessToken()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2InvalidateTokenURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2InvalidateTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2TokenType()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2TokenType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuth2TokenURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2TokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAccessToken()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAccessTokenSecret()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAccessTokenURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAuthenticationURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthenticationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthAuthorizationURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOAuthRequestTokenURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestHeaders()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRestBaseURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRestBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSiteStreamBaseURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSiteStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStreamBaseURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserStreamBaseURL()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isApplicationOnlyAuthEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isApplicationOnlyAuthEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isGAE()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isGAE()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isGZIPEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isGZIPEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIncludeEntitiesEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeEntitiesEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIncludeMyRetweetEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeMyRetweetEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIncludeRTsEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeRTsEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isJSONStoreEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isJSONStoreEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMBeanEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isMBeanEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPrettyDebugEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isPrettyDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStallWarningsEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isStallWarningsEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTrimUserEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isTrimUserEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUserStreamRepliesAllEnabled()Z
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isUserStreamRepliesAllEnabled()Z

    move-result v0

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->readResolve()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIncludeMyRetweetEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeMyRetweetEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setTrimUserEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setTrimUserEnabled(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
