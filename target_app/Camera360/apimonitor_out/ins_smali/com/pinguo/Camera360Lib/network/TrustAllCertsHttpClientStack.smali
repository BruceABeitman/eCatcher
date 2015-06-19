.class public Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack;
.super Lcom/android/volley/toolbox/HttpClientStack;
.source "TrustAllCertsHttpClientStack.java"
.method public constructor <init>()V
.registers 2
invoke-static {}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack;->getNewHttpClient()Lorg/apache/http/client/HttpClient;
move-result-object v0
invoke-direct {p0, v0}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V
return-void
.end method
.method private static getNewHttpClient()Lorg/apache/http/client/HttpClient;
.registers 10
:try_start_0
invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
move-result-object v5
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
new-instance v4, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;
invoke-direct {v4, v5}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V
sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v2, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
const-string/jumbo v6, "UTF-8"
invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v6, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v7, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v8
const/16 v9, 0x50
invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v6, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v7, "https"
const/16 v8, 0x1bb
invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
:goto_54
:try_end_54
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55
return-object v6
:catch_55
move-exception v1
new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
goto :goto_54
.end method