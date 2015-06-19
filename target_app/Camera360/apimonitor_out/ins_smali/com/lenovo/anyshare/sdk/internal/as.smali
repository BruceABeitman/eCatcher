.class public final Lcom/lenovo/anyshare/sdk/internal/as;
.super Ljava/lang/Object;
.source "HttpUtils.java"
.field private static a:Ljavax/net/ssl/X509TrustManager;
.field private static b:Ljavax/net/ssl/HostnameVerifier;
.method static constructor <clinit>()V
.registers 5
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/as$1;
invoke-direct {v3}, Lcom/lenovo/anyshare/sdk/internal/as$1;-><init>()V
sput-object v3, Lcom/lenovo/anyshare/sdk/internal/as;->a:Ljavax/net/ssl/X509TrustManager;
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/as$2;
invoke-direct {v3}, Lcom/lenovo/anyshare/sdk/internal/as$2;-><init>()V
sput-object v3, Lcom/lenovo/anyshare/sdk/internal/as;->b:Ljavax/net/ssl/HostnameVerifier;
const/4 v1, 0x0
:try_start_f
const-string/jumbo v3, "TLS"
invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v1
const/4 v3, 0x1
new-array v2, v3, [Ljavax/net/ssl/X509TrustManager;
const/4 v3, 0x0
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/as;->a:Ljavax/net/ssl/X509TrustManager;
aput-object v4, v2, v3
const/4 v3, 0x0
new-instance v4, Ljava/security/SecureRandom;
invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V
invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
:try_end_27
.catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_27} :catch_36
:goto_27
if-eqz v1, :cond_30
invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v3
invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
:cond_30
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/as;->b:Ljavax/net/ssl/HostnameVerifier;
invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
return-void
:catch_36
move-exception v0
const-string/jumbo v3, "HttpUtils"
invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_27
.end method
.method public static a(Ljava/lang/String;)Ljava/util/Map;
.registers 13
const/4 v11, 0x0
const/4 v4, 0x0
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V
const/16 v9, 0x3f
invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I
move-result v1
const/4 v5, 0x0
if-ltz v1, :cond_1a
add-int/lit8 v9, v1, 0x1
invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-eqz v9, :cond_1b
:cond_1a
return-object v4
:cond_1b
const-string/jumbo v9, "&"
invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v9, v3
if-eqz v9, :cond_1a
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
const/4 v6, 0x0
const/4 v0, 0x0
:goto_2c
array-length v9, v3
if-ge v0, v9, :cond_1a
aget-object v2, v3, v0
const-string/jumbo v9, "="
invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v8
array-length v9, v8
const/4 v10, 0x2
if-eq v9, v10, :cond_62
if-eqz v6, :cond_5f
invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "&"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_5f
:cond_5f
add-int/lit8 v0, v0, 0x1
goto :goto_2c
:cond_62
aget-object v9, v8, v11
const/4 v10, 0x1
aget-object v10, v8, v10
invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
aget-object v6, v8, v11
goto :goto_5f
.end method
.method public static a(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
.registers 9
invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;
move-result-object v2
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_c
if-ge v3, v4, :cond_1e
aget-object v1, v0, v3
invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v6
invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v7
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v3, v3, 0x1
goto :goto_c
:cond_1e
return-object v5
.end method
.method public static a(II)Lorg/apache/http/client/HttpClient;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/as;->a(IIZ)Lorg/apache/http/client/HttpClient;
move-result-object v0
return-object v0
.end method
.method public static a(IIZ)Lorg/apache/http/client/HttpClient;
.registers 11
new-instance v1, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const-string/jumbo v4, "; charset="
const-string/jumbo v5, "UTF-8"
invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-static {v1, p0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
const/4 v4, 0x1
invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v4, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v5, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v6
const/16 v7, 0x50
invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v3
sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v4, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v5, "https"
const/16 v6, 0x1bb
invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
if-eqz p2, :cond_51
new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;
invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
:goto_4b
new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
return-object v4
:cond_51
new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
goto :goto_4b
.end method