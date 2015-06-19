.class public Lcom/pinguo/camera360/cloud/struct/NetConnection;
.super Ljava/lang/Object;
.source "NetConnection.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v0, p0, p1, p2, v1}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->sendForGet(Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;IILorg/apache/http/client/HttpClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getByteArray(Ljava/io/InputStream;)[B
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_5
    new-array v3, v6, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_5b
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_c} :catch_82
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_42

    :goto_c
    :try_start_c
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_23

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_7c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_16} :catch_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_7f

    move-result-object v0

    if-eqz p0, :cond_1c

    :try_start_19
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_71

    :cond_1c
    :goto_1c
    if-eqz v2, :cond_7a

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_76

    move-object v1, v2

    :cond_22
    :goto_22
    return-object v0

    :cond_23
    const/4 v6, 0x0

    :try_start_24
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_7c
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_7f

    goto :goto_c

    :catch_28
    move-exception v5

    move-object v1, v2

    :goto_2a
    :try_start_2a
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_5b

    if-eqz p0, :cond_32

    :try_start_2f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3d

    :cond_32
    :goto_32
    if-eqz v1, :cond_22

    :try_start_34
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_22

    :catch_38
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :catch_3d
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    :catch_42
    move-exception v5

    :goto_43
    :try_start_43
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_5b

    if-eqz p0, :cond_4b

    :try_start_48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_56

    :cond_4b
    :goto_4b
    if-eqz v1, :cond_22

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_22

    :catch_51
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :catch_56
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    :catchall_5b
    move-exception v6

    :goto_5c
    if-eqz p0, :cond_61

    :try_start_5e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_67

    :cond_61
    :goto_61
    if-eqz v1, :cond_66

    :try_start_63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6c

    :cond_66
    :goto_66
    throw v6

    :catch_67
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    :catch_6c
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    :catch_71
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    :catch_76
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_7a
    move-object v1, v2

    goto :goto_22

    :catchall_7c
    move-exception v6

    move-object v1, v2

    goto :goto_5c

    :catch_7f
    move-exception v5

    move-object v1, v2

    goto :goto_43

    :catch_82
    move-exception v5

    goto :goto_2a
.end method

.method public static getByteArray(Ljava/lang/String;)[B
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->getByteArray(Ljava/io/InputStream;)[B
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_19

    move-result-object v4

    :goto_12
    return-object v4

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_17
    const/4 v4, 0x0

    goto :goto_12

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method

.method public static getForHeader(Lorg/apache/http/client/methods/HttpGet;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {p0, v0, p1, p2, v1}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->sendForGet(Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;IILorg/apache/http/client/HttpClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForNormal(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x9c40

    invoke-static {p0, v0, v0}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->get(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForSSL(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->sendForGet(Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;IILorg/apache/http/client/HttpClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static postForHeader(Lorg/apache/http/client/methods/HttpPost;IILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static postForHeaderandSSL(Lorg/apache/http/client/methods/HttpPost;IILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static postForSSL(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sendForGet(Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;IILorg/apache/http/client/HttpClient;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_7

    new-instance p0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    invoke-interface {p4, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/net/SocketTimeoutException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_7

    new-instance p0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p4, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
