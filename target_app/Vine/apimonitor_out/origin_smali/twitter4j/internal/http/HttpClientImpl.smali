.class public Ltwitter4j/internal/http/HttpClientImpl;
.super Ltwitter4j/internal/http/HttpClientBase;
.source "HttpClientImpl.java"

# interfaces
.implements Ltwitter4j/internal/http/HttpResponseCode;
.implements Ljava/io/Serializable;


# static fields
.field private static final instanceMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/internal/http/HttpClientConfiguration;",
            "Ltwitter4j/internal/http/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7a63fdacd4e632ffL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->isDalvik()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_11
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientBase;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Ltwitter4j/internal/http/HttpClientBase;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    return-void
.end method

.method public static getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
    .registers 3

    sget-object v1, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/internal/http/HttpClient;

    if-nez v0, :cond_14

    new-instance v0, Ltwitter4j/internal/http/HttpClientImpl;

    invoke-direct {v0, p0}, Ltwitter4j/internal/http/HttpClientImpl;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    sget-object v1, Ltwitter4j/internal/http/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private setHeaders(Ltwitter4j/internal/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .registers 7

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v3

    invoke-interface {v3, p1}, Ltwitter4j/auth/Authorization;->getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v3, "Authorization"

    invoke-virtual {p2, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_41
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpClientImpl;->isProxyConfigured()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v2, Ltwitter4j/internal/http/HttpClientImpl$1;

    invoke-direct {v2, p0}, Ltwitter4j/internal/http/HttpClientImpl$1;-><init>(Ltwitter4j/internal/http/HttpClientImpl;)V

    invoke-static {v2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    :cond_24
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v3, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v4

    invoke-static {v3, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_46
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v2

    if-lez v2, :cond_57

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_57
    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v2

    if-lez v2, :cond_68

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_68
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object v0

    :cond_6d
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_46
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ltwitter4j/internal/http/HttpRequest;

    sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/internal/http/HttpClientImpl;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v22

    add-int/lit8 v21, v22, 0x1

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v17

    :goto_12
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_301

    const/16 v19, -0x1

    const/4 v13, 0x0

    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ltwitter4j/internal/http/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Ltwitter4j/internal/http/HttpClientImpl;->setHeaders(Ltwitter4j/internal/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v22

    sget-object v23, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_230

    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ltwitter4j/internal/http/HttpParameter;->containsFile([Ltwitter4j/internal/http/HttpParameter;)Z

    move-result v22

    if-eqz v22, :cond_296

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "----Twitter4J-upload"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v22, "Content-Type"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multipart/form-data; boundary="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "--"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    array-length v11, v3

    const/4 v8, 0x0

    :goto_b8
    if-ge v8, v11, :cond_205

    aget-object v15, v3, v8

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v22

    if-eqz v22, :cond_1a3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\"; filename=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\"\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-Type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\r\n\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->hasFileBody()Z

    move-result v22

    if-eqz v22, :cond_189

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->getFileBody()Ljava/io/InputStream;

    move-result-object v22

    :goto_144
    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v5, v0, [B

    :goto_14f
    invoke-virtual {v9, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_193

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v5, v0, v12}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_160
    .catchall {:try_start_1b .. :try_end_160} :catchall_161

    goto :goto_14f

    :catchall_161
    move-exception v22

    move-object/from16 v17, v18

    :goto_164
    :try_start_164
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_2fc
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_168

    :goto_167
    :try_start_167
    throw v22
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_168} :catch_168

    :catch_168
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2da

    new-instance v22, Ltwitter4j/TwitterException;

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v22

    :cond_189
    :try_start_189
    new-instance v22, Ljava/io/FileInputStream;

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_144

    :cond_193
    const-string v22, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    :goto_19f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b8

    :cond_1a3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\"\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v22, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v15}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UTF-8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write([B)V

    const-string v22, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_19f

    :cond_205
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "--\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v22, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ltwitter4j/internal/http/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :goto_22a
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    :cond_230
    new-instance v17, Ltwitter4j/internal/http/HttpResponseImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v7, v1}, Ltwitter4j/internal/http/HttpResponseImpl;-><init>(Ljava/net/HttpURLConnection;Ltwitter4j/internal/http/HttpClientConfiguration;)V
    :try_end_23f
    .catchall {:try_start_189 .. :try_end_23f} :catchall_161

    :try_start_23f
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    const/16 v22, 0xc8

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_25b

    const/16 v22, 0x12e

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_2d3

    const/16 v22, 0x12c

    move/from16 v0, v22

    move/from16 v1, v19

    if-gt v0, v1, :cond_2d3

    :cond_25b
    const/16 v22, 0x1a4

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_283

    const/16 v22, 0x190

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_283

    const/16 v22, 0x1f4

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_283

    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2d7

    :cond_283
    new-instance v22, Ltwitter4j/TwitterException;

    invoke-virtual/range {v17 .. v17}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v22
    :try_end_293
    .catchall {:try_start_23f .. :try_end_293} :catchall_293

    :catchall_293
    move-exception v22

    goto/16 :goto_164

    :cond_296
    :try_start_296
    const-string v22, "Content-Type"

    const-string v23, "application/x-www-form-urlencoded"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ltwitter4j/internal/http/HttpParameter;->encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v16

    const-string v22, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v22, "Content-Length"

    array-length v0, v6

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_2d1
    .catchall {:try_start_296 .. :try_end_2d1} :catchall_161

    goto/16 :goto_22a

    :cond_2d3
    :try_start_2d3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_2d6} :catch_2f8
    .catch Ljava/io/IOException; {:try_start_2d3 .. :try_end_2d6} :catch_168

    :goto_2d6
    return-object v17

    :cond_2d7
    :try_start_2d7
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2da} :catch_2fa
    .catch Ljava/io/IOException; {:try_start_2d7 .. :try_end_2da} :catch_168

    :cond_2da
    :goto_2da
    :try_start_2da
    move-object/from16 v0, p0

    iget-object v0, v0, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f2
    .catch Ljava/lang/InterruptedException; {:try_start_2da .. :try_end_2f2} :catch_2ff

    :goto_2f2
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v18, v17

    goto/16 :goto_12

    :catch_2f8
    move-exception v22

    goto :goto_2d6

    :catch_2fa
    move-exception v22

    goto :goto_2da

    :catch_2fc
    move-exception v23

    goto/16 :goto_167

    :catch_2ff
    move-exception v22

    goto :goto_2f2

    :cond_301
    move-object/from16 v17, v18

    goto :goto_2d6
.end method
