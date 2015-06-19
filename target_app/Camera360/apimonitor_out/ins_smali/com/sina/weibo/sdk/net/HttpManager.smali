.class  Lcom/sina/weibo/sdk/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"
.field private static final BOUNDARY:Ljava/lang/String; = null
.field private static final BUFFER_SIZE:I = 0x2000
.field private static final CONNECTION_TIMEOUT:I = 0x1388
.field private static final END_MP_BOUNDARY:Ljava/lang/String; = null
.field private static final HTTP_METHOD_GET:Ljava/lang/String; = "GET"
.field private static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"
.field private static final MP_BOUNDARY:Ljava/lang/String; = null
.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"
.field private static final SOCKET_TIMEOUT:I = 0x4e20
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getBoundry()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "--"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "--"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "--"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/sina/weibo/sdk/net/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static buildParams(Ljava/io/OutputStream;Lcom/sina/weibo/sdk/net/WeiboParameters;)V
.registers 14
:try_start_0
invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_8
:cond_8
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_32
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_12
:goto_12
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_89
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "\r\n"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B
move-result-object v9
invoke-virtual {p0, v9}, Ljava/io/OutputStream;->write([B)V
return-void
:cond_32
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {p1, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v8
instance-of v10, v8, Ljava/lang/String;
if-eqz v10, :cond_8
new-instance v6, Ljava/lang/StringBuilder;
const/16 v10, 0x64
invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v10, 0x0
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V
sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\r\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v10, "content-disposition: form-data; name=\""
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\"\r\n\r\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p1, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v10
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\r\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B
move-result-object v10
invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
:try_end_81
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_81} :catch_82
goto :goto_8
:catch_82
move-exception v3
new-instance v9, Lcom/sina/weibo/sdk/exception/WeiboException;
invoke-direct {v9, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V
throw v9
:try_start_89
:cond_89
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {p1, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v8
instance-of v10, v8, Landroid/graphics/Bitmap;
if-eqz v10, :cond_ed
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\r\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v10, "content-disposition: form-data; name=\""
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\"; filename=\"file\"\r\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B
move-result-object v10
invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
move-object v0, v8
check-cast v0, Landroid/graphics/Bitmap;
move-object v1, v0
new-instance v7, Ljava/io/ByteArrayOutputStream;
invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v11, 0x64
invoke-virtual {v1, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
const-string/jumbo v10, "\r\n"
invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B
move-result-object v10
invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
goto/16 :goto_12
:cond_ed
instance-of v10, v8, Ljava/io/ByteArrayOutputStream;
if-eqz v10, :cond_12
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
sget-object v10, Lcom/sina/weibo/sdk/net/HttpManager;->MP_BOUNDARY:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\r\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v10, "content-disposition: form-data; name=\""
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "\"; filename=\"file\"\r\n"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v10, "Content-Type: application/octet-stream; charset=utf-8\r\n\r\n"
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B
move-result-object v10
invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
move-object v0, v8
check-cast v0, Ljava/io/ByteArrayOutputStream;
move-object v7, v0
invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v10
invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
const-string/jumbo v10, "\r\n"
invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B
move-result-object v10
invoke-virtual {p0, v10}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_13c
.catch Ljava/io/IOException; {:try_start_89 .. :try_end_13c} :catch_82
goto/16 :goto_12
.end method
.method private static getBoundry()Ljava/lang/String;
.registers 12
const-wide/16 v10, 0x1a
const-wide/16 v8, 0x3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v1, 0x1
:goto_a
const/16 v4, 0xc
if-lt v1, v4, :cond_13
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:cond_13
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
int-to-long v6, v1
add-long v2, v4, v6
rem-long v4, v2, v8
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-nez v4, :cond_2c
long-to-int v4, v2
int-to-char v4, v4
rem-int/lit8 v4, v4, 0x9
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
:goto_29
add-int/lit8 v1, v1, 0x1
goto :goto_a
:cond_2c
rem-long v4, v2, v8
const-wide/16 v6, 0x1
cmp-long v4, v4, v6
if-nez v4, :cond_3f
const-wide/16 v4, 0x41
rem-long v6, v2, v10
add-long/2addr v4, v6
long-to-int v4, v4
int-to-char v4, v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_29
:cond_3f
const-wide/16 v4, 0x61
rem-long v6, v2, v10
add-long/2addr v4, v6
long-to-int v4, v4
int-to-char v4, v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_29
.end method
.method private static getNewHttpClient()Lorg/apache/http/client/HttpClient;
.registers 11
:try_start_0
invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
move-result-object v6
const/4 v7, 0x0
const/4 v8, 0x0
invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
new-instance v5, Lcom/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory;
invoke-direct {v5, v6}, Lcom/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v3, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
const-string/jumbo v7, "UTF-8"
invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v7, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v8, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v9
const/16 v10, 0x50
invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v7, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v8, "https"
const/16 v9, 0x1bb
invoke-direct {v7, v8, v5, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
const/16 v7, 0x1388
invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
const/16 v7, 0x4e20
invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
:try_end_5e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f
:goto_5e
return-object v1
:catch_5f
move-exception v2
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
goto :goto_5e
.end method
.method public static openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;
.registers 5
invoke-static {p0, p1, p2}, Lcom/sina/weibo/sdk/net/HttpManager;->requestHttpExecute(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-static {v0}, Lcom/sina/weibo/sdk/net/HttpManager;->readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private static readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
.registers 12
const/4 v10, -0x1
if-nez p0, :cond_5
const/4 v8, 0x0
:goto_4
:cond_4
return-object v8
:cond_5
invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
const/4 v5, 0x0
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_f
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v5
const-string/jumbo v8, "Content-Encoding"
invoke-interface {p0, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v4
if-eqz v4, :cond_33
invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v8
const-string/jumbo v9, "gzip"
invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v8
if-le v8, v10, :cond_33
new-instance v6, Ljava/util/zip/GZIPInputStream;
invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
move-object v5, v6
:cond_33
const/4 v7, 0x0
const/16 v8, 0x2000
new-array v0, v8, [B
:goto_38
invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
move-result v7
if-ne v7, v10, :cond_55
new-instance v8, Ljava/lang/String;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v9
const-string/jumbo v10, "UTF-8"
invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_4a
.catchall {:try_start_f .. :try_end_4a} :catchall_61
.catch Ljava/io/IOException; {:try_start_f .. :try_end_4a} :catch_5a
if-eqz v5, :cond_4
:try_start_4c
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:try_end_4f
.catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50
goto :goto_4
:catch_50
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_4
:cond_55
const/4 v8, 0x0
:try_start_56
invoke-virtual {v1, v0, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_59
.catchall {:try_start_56 .. :try_end_59} :catchall_61
.catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
goto :goto_38
:catch_5a
move-exception v2
:try_start_5b
new-instance v8, Lcom/sina/weibo/sdk/exception/WeiboException;
invoke-direct {v8, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V
throw v8
:try_end_61
.catchall {:try_start_5b .. :try_end_61} :catchall_61
:catchall_61
move-exception v8
if-eqz v5, :cond_67
:try_start_64
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:try_end_67
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
:cond_67
:goto_67
throw v8
:catch_68
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_67
.end method
.method private static requestHttpExecute(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Lorg/apache/http/HttpResponse;
.registers 18
const/4 v7, 0x0
:try_start_1
invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v12
const-string/jumbo v13, "http.route.default-proxy"
invoke-static {}, Lcom/sina/weibo/sdk/net/NetStateManager;->getAPN()Lorg/apache/http/HttpHost;
move-result-object v14
invoke-interface {v12, v13, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
const/4 v6, 0x0
const/4 v1, 0x0
const-string/jumbo v12, "GET"
move-object/from16 v0, p1
invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_62
new-instance v12, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v13
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v13, "?"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual/range {p2 .. p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
new-instance v6, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
:goto_41
:cond_41
invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v7
invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v9
invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v10
const/16 v12, 0xc8
if-eq v10, v12, :cond_f5
invoke-static {v7}, Lcom/sina/weibo/sdk/net/HttpManager;->readRsponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
move-result-object v8
new-instance v12, Lcom/sina/weibo/sdk/exception/WeiboHttpException;
invoke-direct {v12, v8, v10}, Lcom/sina/weibo/sdk/exception/WeiboHttpException;-><init>(Ljava/lang/String;I)V
throw v12
:try_end_5b
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_5b} :catch_5b
:catch_5b
move-exception v3
new-instance v12, Lcom/sina/weibo/sdk/exception/WeiboException;
invoke-direct {v12, v3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V
throw v12
:cond_62
:try_start_62
const-string/jumbo v12, "POST"
move-object/from16 v0, p1
invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_e3
new-instance v4, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
move-object v6, v4
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-virtual/range {p2 .. p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->hasBinaryData()Z
move-result v12
if-eqz v12, :cond_ab
const-string/jumbo v12, "Content-Type"
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "multipart/form-data; boundary="
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v14, Lcom/sina/weibo/sdk/net/HttpManager;->BOUNDARY:Ljava/lang/String;
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v4, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p2
invoke-static {v1, v0}, Lcom/sina/weibo/sdk/net/HttpManager;->buildParams(Ljava/io/OutputStream;Lcom/sina/weibo/sdk/net/WeiboParameters;)V
:goto_9b
new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v13
invoke-direct {v12, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
invoke-virtual {v4, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
goto :goto_41
:cond_ab
const-string/jumbo v12, "content-type"
move-object/from16 v0, p2
invoke-virtual {v0, v12}, Lcom/sina/weibo/sdk/net/WeiboParameters;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v11
if-eqz v11, :cond_d9
instance-of v12, v11, Ljava/lang/String;
if-eqz v12, :cond_d9
const-string/jumbo v12, "content-type"
move-object/from16 v0, p2
invoke-virtual {v0, v12}, Lcom/sina/weibo/sdk/net/WeiboParameters;->remove(Ljava/lang/String;)V
const-string/jumbo v12, "Content-Type"
check-cast v11, Ljava/lang/String;
invoke-virtual {v4, v12, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:goto_ca
invoke-virtual/range {p2 .. p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;
move-result-object v5
const-string/jumbo v12, "UTF-8"
invoke-virtual {v5, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v12
invoke-virtual {v1, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V
goto :goto_9b
:cond_d9
const-string/jumbo v12, "Content-Type"
const-string/jumbo v13, "application/x-www-form-urlencoded"
invoke-virtual {v4, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_ca
:cond_e3
const-string/jumbo v12, "DELETE"
move-object/from16 v0, p1
invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_41
new-instance v6, Lorg/apache/http/client/methods/HttpDelete;
invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V
:try_end_f3
.catch Ljava/io/IOException; {:try_start_62 .. :try_end_f3} :catch_5b
goto/16 :goto_41
:cond_f5
return-object v7
.end method