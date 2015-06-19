.class public final Lcom/pinguo/Camera360Lib/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"
.field private static final BUFFER_SIZE:I = 0x2000
.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"
.field private static final CONNECTION_TIMEOUT:I = 0x1388
.field private static final LINEND:Ljava/lang/String; = "\r\n"
.field private static final MAX_SAMPLE_LENGTH:I = 0x80000
.field private static final MULTIPART_FROM_DATA:Ljava/lang/String; = "multipart/form-data"
.field private static final PREFIX:Ljava/lang/String; = "--"
.field private static final READ_TIMEOUT:I = 0xd6d8
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/Camera360Lib/utils/HttpUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static close(Ljava/io/InputStream;)V
.registers 1
if-eqz p0, :cond_6
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
const/4 p0, 0x0
:cond_6
return-void
.end method
.method private static close(Ljava/io/OutputStream;)V
.registers 1
if-eqz p0, :cond_6
invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
const/4 p0, 0x0
:cond_6
return-void
.end method
.method public static download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
invoke-static {p1}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->checkFolder(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_23
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Create folder("
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, ") failed!"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:cond_23
sget-object v6, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Res Url:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/net/URL;
invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const/4 v6, 0x1
:try_start_44
invoke-static {v6}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v5
const/16 v6, 0xc8
if-eq v5, v6, :cond_6a
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Http connect error,status code ="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:try_end_65
.catchall {:try_start_44 .. :try_end_65} :catchall_65
:catchall_65
move-exception v6
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v6
:cond_6a
:try_start_6a
sget-object v6, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "File Url:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v6
invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "UTF-8"
invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v6, "/"
invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v6
add-int/lit8 v6, v6, 0x1
invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
new-instance v1, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
:try_end_ba
.catchall {:try_start_6a .. :try_end_ba} :catchall_65
move-result v6
if-eqz v6, :cond_c1
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:goto_c0
return-object v3
:try_start_c1
:cond_c1
invoke-static {p1, v0, v3}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
:try_end_c4
.catchall {:try_start_c1 .. :try_end_c4} :catchall_65
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
goto :goto_c0
.end method
.method private static downloadFile(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
.registers 11
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/BufferedInputStream;
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v6
invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_4b
const/4 v4, 0x0
:try_start_b
new-instance v5, Ljava/io/FileOutputStream;
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_end_27
.catchall {:try_start_b .. :try_end_27} :catchall_4d
const/16 v6, 0x2000
:try_start_29
new-array v0, v6, [B
const/4 v3, -0x1
:goto_2c
invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
:try_end_2f
.catchall {:try_start_29 .. :try_end_2f} :catchall_3f
move-result v3
const/4 v6, -0x1
if-ne v3, v6, :cond_3a
:try_start_33
invoke-static {v5}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/OutputStream;)V
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_45
invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/InputStream;)V
return-void
:cond_3a
const/4 v6, 0x0
:try_start_3b
invoke-virtual {v5, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_3f
goto :goto_2c
:catchall_3f
move-exception v6
move-object v4, v5
:goto_41
:try_start_41
invoke-static {v4}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/OutputStream;)V
throw v6
:catchall_45
:try_end_45
.catchall {:try_start_41 .. :try_end_45} :catchall_45
move-exception v6
move-object v1, v2
:goto_47
invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/InputStream;)V
throw v6
:catchall_4b
move-exception v6
goto :goto_47
:catchall_4d
move-exception v6
goto :goto_41
.end method
.method public static encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
const-string/jumbo v1, "utf-8"
invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_6
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8
move-result-object p0
:goto_7
return-object p0
:catch_8
move-exception v0
const-string/jumbo p0, ""
goto :goto_7
.end method
.method public static get(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
.registers 11
invoke-static {p0, p1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->TAG:Ljava/lang/String;
invoke-static {v5, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/net/URL;
invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v1
check-cast v1, Ljava/net/HttpURLConnection;
const/4 v5, 0x1
:try_start_15
invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
instance-of v5, v1, Ljavax/net/ssl/HttpsURLConnection;
if-eqz v5, :cond_29
if-eqz p2, :cond_29
move-object v0, v1
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
move-object v5, v0
invoke-static {}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v6
invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
:cond_29
const-string/jumbo v5, "GET"
invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const/16 v5, 0x1388
invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const-string/jumbo v5, "Connection"
const-string/jumbo v6, "keep-alive"
invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "accept-charset"
const-string/jumbo v6, "utf-8"
invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "Content-Type"
const-string/jumbo v6, "text/xml"
invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
const/16 v5, 0xc8
if-eq v3, v5, :cond_72
new-instance v5, Ljava/io/IOException;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Http connect error,status code ="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v5
:catchall_6d
:try_end_6d
.catchall {:try_start_15 .. :try_end_6d} :catchall_6d
move-exception v5
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v5
:try_start_72
:cond_72
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v5
invoke-static {v5}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getStringData(Ljava/io/InputStream;)Ljava/lang/String;
:try_end_79
.catchall {:try_start_72 .. :try_end_79} :catchall_6d
move-result-object v5
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
return-object v5
.end method
.method public static get(Ljava/lang/String;Z)Ljava/lang/String;
.registers 9
sget-object v4, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->TAG:Ljava/lang/String;
invoke-static {v4, p0}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/net/URL;
invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v1
check-cast v1, Ljava/net/HttpURLConnection;
const/4 v4, 0x1
:try_start_11
invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
instance-of v4, v1, Ljavax/net/ssl/HttpsURLConnection;
if-eqz v4, :cond_25
if-eqz p1, :cond_25
move-object v0, v1
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
move-object v4, v0
invoke-static {}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v5
invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
:cond_25
const-string/jumbo v4, "GET"
invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const/16 v4, 0x1388
invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const-string/jumbo v4, "Connection"
const-string/jumbo v5, "keep-alive"
invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "accept-charset"
const-string/jumbo v5, "utf-8"
invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "Content-Type"
const-string/jumbo v5, "text/xml"
invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
const/16 v4, 0xc8
if-eq v3, v4, :cond_6e
new-instance v4, Ljava/io/IOException;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Http connect error,status code ="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:try_end_69
.catchall {:try_start_11 .. :try_end_69} :catchall_69
:catchall_69
move-exception v4
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v4
:try_start_6e
:cond_6e
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getStringData(Ljava/io/InputStream;)Ljava/lang/String;
:try_end_75
.catchall {:try_start_6e .. :try_end_75} :catchall_69
move-result-object v4
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
return-object v4
.end method
.method private static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.registers 6
const/4 v5, 0x0
const-string/jumbo v4, "11111111111"
invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
move-result-object v2
invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v3
invoke-virtual {v3, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
const-string/jumbo v4, "TLS"
invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v1
invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v4
invoke-virtual {v1, v5, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v4
return-object v4
.end method
.method private static getStringData(Ljava/io/InputStream;)Ljava/lang/String;
.registers 10
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/BufferedInputStream;
invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_50
new-instance v4, Ljava/io/ByteArrayOutputStream;
invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/16 v6, 0x2000
new-array v0, v6, [B
const/4 v3, -0x1
:goto_10
invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
move-result v3
const/4 v6, -0x1
if-ne v3, v6, :cond_3b
invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v5
const/high16 v6, 0x8
if-le v5, v6, :cond_40
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Json Data too long, length ="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:catchall_35
:try_end_35
.catchall {:try_start_6 .. :try_end_35} :catchall_35
move-exception v6
move-object v1, v2
:goto_37
invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/InputStream;)V
throw v6
:cond_3b
const/4 v6, 0x0
:try_start_3c
invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
goto :goto_10
:cond_40
new-instance v6, Ljava/lang/String;
invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v7
const-string/jumbo v8, "UTF-8"
invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_4c
.catchall {:try_start_3c .. :try_end_4c} :catchall_35
invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/InputStream;)V
return-object v6
:catchall_50
move-exception v6
goto :goto_37
.end method
.method public static getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.registers 8
const/16 v4, 0x3f
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-eqz p1, :cond_13
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v3
if-nez v3, :cond_25
:cond_13
add-int/lit8 v3, v1, -0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_20
add-int/lit8 v3, v1, -0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
:cond_20
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:goto_24
return-object v3
:cond_25
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v3
if-eq v3, v4, :cond_34
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_34
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_3c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_50
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_24
:cond_50
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x3d
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
const-string/jumbo v5, "UTF-8"
invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x26
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_3c
.end method
.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Ljava/lang/String;
.registers 21
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v14
invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
new-instance v13, Ljava/net/URL;
move-object/from16 v0, p0
invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v3
check-cast v3, Ljava/net/HttpURLConnection;
:try_start_15
instance-of v14, v3, Ljavax/net/ssl/HttpsURLConnection;
if-eqz v14, :cond_26
if-eqz p3, :cond_26
move-object v0, v3
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
move-object v14, v0
invoke-static {}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v15
invoke-virtual {v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
:cond_26
const v14, 0xd6d8
invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
const/4 v14, 0x1
invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const/4 v14, 0x1
invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
const/4 v14, 0x0
invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
const-string/jumbo v14, "POST"
invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const-string/jumbo v14, "connection"
const-string/jumbo v15, "keep-alive"
invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v14, "Charsert"
const-string/jumbo v15, "UTF-8"
invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v14, "Content-Type"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "multipart/form-data;boundary="
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v14
invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v15
:goto_73
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-nez v14, :cond_f1
new-instance v9, Ljava/io/DataOutputStream;
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v14
invoke-direct {v9, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_82
.catchall {:try_start_15 .. :try_end_82} :catchall_ec
:try_start_82
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
const-string/jumbo v15, "UTF-8"
invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v14
invoke-virtual {v9, v14}, Ljava/io/DataOutputStream;->write([B)V
if-eqz p2, :cond_a0
invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v14
invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v15
:goto_9a
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-nez v14, :cond_158
:cond_a0
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "--"
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, "--"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, "\r\n"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
const-string/jumbo v15, "UTF-8"
invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v4
invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write([B)V
invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V
:try_end_cb
.catchall {:try_start_82 .. :try_end_cb} :catchall_1e8
:try_start_cb
invoke-static {v9}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/OutputStream;)V
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v10
const/16 v14, 0xc8
if-eq v10, v14, :cond_1f7
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "Http connect error,status code ="
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:catchall_ec
:try_end_ec
.catchall {:try_start_cb .. :try_end_ec} :catchall_ec
move-exception v14
invoke-static {v3}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v14
:cond_f1
:try_start_f1
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/util/Map$Entry;
const-string/jumbo v14, "--"
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "\r\n"
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v16, Ljava/lang/StringBuilder;
const-string/jumbo v14, "Content-Disposition: form-data; name=\""
move-object/from16 v0, v16
invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/String;
move-object/from16 v0, v16
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v16, "\""
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v16, "\r\n"
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "Content-Type: text/plain; charset=UTF-8\r\n"
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "Content-Transfer-Encoding: 8bit\r\n"
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "\r\n"
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/String;
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "\r\n"
invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_156
.catchall {:try_start_f1 .. :try_end_156} :catchall_ec
goto/16 :goto_73
:try_start_158
:cond_158
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/Map$Entry;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v14, "--"
invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "\r\n"
invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v16, Ljava/lang/StringBuilder;
const-string/jumbo v14, "Content-Disposition: form-data; name=\"file\"; filename=\""
move-object/from16 v0, v16
invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/String;
move-object/from16 v0, v16
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v16, "\""
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v16, "\r\n"
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "Content-Type: image/jpeg; charset=UTF-8\r\n"
invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v14, "\r\n"
invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
const-string/jumbo v16, "UTF-8"
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v14
invoke-virtual {v9, v14}, Ljava/io/DataOutputStream;->write([B)V
new-instance v7, Ljava/io/FileInputStream;
invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/io/File;
invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_1c8
.catchall {:try_start_158 .. :try_end_1c8} :catchall_1e8
const/16 v14, 0x2000
:try_start_1ca
new-array v2, v14, [B
const/4 v8, -0x1
:goto_1cd
invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I
:try_end_1d0
.catchall {:try_start_1ca .. :try_end_1d0} :catchall_1f2
move-result v8
const/4 v14, -0x1
if-ne v8, v14, :cond_1ed
:try_start_1d4
invoke-static {v7}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/InputStream;)V
const-string/jumbo v14, "\r\n"
const-string/jumbo v16, "UTF-8"
move-object/from16 v0, v16
invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v14
invoke-virtual {v9, v14}, Ljava/io/DataOutputStream;->write([B)V
:try_end_1e6
.catchall {:try_start_1d4 .. :try_end_1e6} :catchall_1e8
goto/16 :goto_9a
:catchall_1e8
move-exception v14
:try_start_1e9
invoke-static {v9}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/OutputStream;)V
throw v14
:try_end_1ed
.catchall {:try_start_1e9 .. :try_end_1ed} :catchall_ec
:cond_1ed
const/4 v14, 0x0
:try_start_1ee
invoke-virtual {v9, v2, v14, v8}, Ljava/io/DataOutputStream;->write([BII)V
:try_end_1f1
.catchall {:try_start_1ee .. :try_end_1f1} :catchall_1f2
goto :goto_1cd
:catchall_1f2
move-exception v14
:try_start_1f3
invoke-static {v7}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->close(Ljava/io/InputStream;)V
throw v14
:cond_1f7
:try_end_1f7
.catchall {:try_start_1f3 .. :try_end_1f7} :catchall_1e8
:try_start_1f7
invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v14
invoke-static {v14}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getStringData(Ljava/io/InputStream;)Ljava/lang/String;
:try_end_1fe
.catchall {:try_start_1f7 .. :try_end_1fe} :catchall_ec
move-result-object v14
invoke-static {v3}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
return-object v14
.end method