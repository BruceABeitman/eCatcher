.class final Lcom/mapquest/android/maps/t;
.super Ljava/lang/Object;
.source "HttpConnectionPool.java"
.field  a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.field  b:Lorg/apache/http/impl/client/DefaultHttpClient;
.field  c:Lcom/mapquest/android/maps/v;
.method public constructor <init>(II)V
.registers 9
const/4 v2, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/t;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
iput-object v0, p0, Lcom/mapquest/android/maps/t;->b:Lorg/apache/http/impl/client/DefaultHttpClient;
iput-object v0, p0, Lcom/mapquest/android/maps/t;->c:Lcom/mapquest/android/maps/v;
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const/16 v1, 0xbb8
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
const/16 v1, 0x1388
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
const/16 v1, 0x2000
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V
sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
const-string v1, "utf-8"
invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v4
const/16 v5, 0x50
invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v2
sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v3, Lorg/apache/http/conn/scheme/Scheme;
const-string v4, "https"
const/16 v5, 0x1bb
invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;
invoke-direct {v2, p2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V
invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
invoke-static {v0, p1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
const-wide/16 v2, 0xbb8
invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V
new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
iput-object v2, p0, Lcom/mapquest/android/maps/t;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v2, p0, Lcom/mapquest/android/maps/t;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
iput-object v1, p0, Lcom/mapquest/android/maps/t;->b:Lorg/apache/http/impl/client/DefaultHttpClient;
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
new-instance v1, Lcom/mapquest/android/maps/v;
iget-object v2, p0, Lcom/mapquest/android/maps/t;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v1, v2}, Lcom/mapquest/android/maps/v;-><init>(Lorg/apache/http/conn/ClientConnectionManager;)V
iput-object v1, p0, Lcom/mapquest/android/maps/t;->c:Lcom/mapquest/android/maps/v;
iget-object v1, p0, Lcom/mapquest/android/maps/t;->c:Lcom/mapquest/android/maps/v;
invoke-virtual {v1}, Lcom/mapquest/android/maps/v;->start()V
new-instance v1, Lcom/mapquest/android/maps/u;
invoke-direct {v1, p0}, Lcom/mapquest/android/maps/u;-><init>(Lcom/mapquest/android/maps/t;)V
invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
return-void
.end method
.method public final a(Ljava/lang/String;)[B
.registers 8
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
const-string v1, "Connection"
const-string v2, "keep-alive"
invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_start_c
iget-object v1, p0, Lcom/mapquest/android/maps/t;->b:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v1
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v3, Ljava/io/BufferedInputStream;
invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v1
const/16 v4, 0x2000
invoke-direct {v3, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
const/16 v1, 0x2000
new-array v1, v1, [B
:goto_2a
invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_3c
const/4 v5, 0x0
invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_35
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_35} :catch_36
.catch Ljava/io/IOException; {:try_start_c .. :try_end_35} :catch_4a
goto :goto_2a
:catch_36
move-exception v1
invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:goto_3a
const/4 v0, 0x0
:goto_3b
return-object v0
:try_start_3c
:cond_3c
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_48
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3c .. :try_end_48} :catch_36
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_4a
move-result-object v0
goto :goto_3b
:catch_4a
move-exception v1
invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
goto :goto_3a
.end method