.class public Lcom/android/volley/toolbox/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    iput-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :goto_23
    return-void

    :cond_24
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->getBody(Ljava/io/OutputStream;)V

    goto :goto_23
.end method

.method private static entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .registers 6

    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_23

    move-result-object v1

    :goto_9
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    return-object v0

    :catch_23
    move-exception v2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_9
.end method

.method private openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string/jumbo v2, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_2f

    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2f
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v2

    packed-switch v2, :pswitch_data_7c

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unknown method type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_10
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v1

    if-eqz v1, :cond_39

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_39
    :goto_39
    return-void

    :pswitch_3a
    const-string/jumbo v2, "GET"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_39

    :pswitch_41
    const-string/jumbo v2, "DELETE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_39

    :pswitch_48
    const-string/jumbo v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_39

    :pswitch_52
    const-string/jumbo v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_39

    :pswitch_5c
    const-string/jumbo v2, "HEAD"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_39

    :pswitch_63
    const-string/jumbo v2, "OPTIONS"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_39

    :pswitch_6a
    const-string/jumbo v2, "TRACE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_39

    :pswitch_71
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    const-string/jumbo v2, "PATCH"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_39

    nop

    :pswitch_data_7c
    .packed-switch -0x1
        :pswitch_10
        :pswitch_3a
        :pswitch_48
        :pswitch_52
        :pswitch_41
        :pswitch_5c
        :pswitch_63
        :pswitch_6a
        :pswitch_71
    .end packed-switch
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz v14, :cond_3c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    invoke-interface {v14, v13}, Lcom/android/volley/toolbox/HurlStack$UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3b

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "URL blocked by rewriter: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3b
    move-object v13, v12

    :cond_3c
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/android/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_51
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_79

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/volley/toolbox/HurlStack;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    new-instance v8, Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v14, "HTTP"

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v8, v14, v15, v0}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/4 v14, -0x1

    if-ne v10, v14, :cond_89

    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_79
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v5, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_89
    new-instance v11, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v8, v14, v15}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    new-instance v9, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v9, v11}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    invoke-static {v2}, Lcom/android/volley/toolbox/HurlStack;->entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_ae
    :goto_ae
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b5

    return-object v9

    :cond_b5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_ae

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v3, v14, v15}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_ae
.end method
