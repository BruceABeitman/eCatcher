.class public Lcom/pinguo/share/net/NetConnection;
.super Ljava/lang/Object;
.source "NetConnection.java"
.field private static final lock:[B
.field public static mHttpClient:Lorg/apache/http/client/HttpClient;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
new-array v0, v0, [B
sput-object v0, Lcom/pinguo/share/net/NetConnection;->lock:[B
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0()[B
.registers 1
sget-object v0, Lcom/pinguo/share/net/NetConnection;->lock:[B
return-object v0
.end method
.method public static get(Ljava/lang/String;II)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-static {v0, p0, p1, p2, v1}, Lcom/pinguo/share/net/NetConnection;->sendForGet(Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;IILorg/apache/http/client/HttpClient;)Ljava/lang/String;
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
:goto_c
:try_start_c
:try_end_c
.catchall {:try_start_5 .. :try_end_c} :catchall_61
.catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_c} :catch_88
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_48
invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I
move-result v4
const/4 v6, -0x1
if-ne v4, v6, :cond_29
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_16
.catchall {:try_start_c .. :try_end_16} :catchall_82
.catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_16} :catch_2e
.catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_85
move-result-object v0
if-eqz p0, :cond_1c
:try_start_19
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_1c
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_77
:goto_1c
:cond_1c
if-eqz v2, :cond_80
:try_start_1e
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_21
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_7c
move-object v1, v2
:goto_22
:cond_22
if-eqz v0, :cond_28
array-length v6, v0
if-nez v6, :cond_28
const/4 v0, 0x0
:cond_28
return-object v0
:cond_29
const/4 v6, 0x0
:try_start_2a
invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_82
.catch Ljava/net/MalformedURLException; {:try_start_2a .. :try_end_2d} :catch_2e
.catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_85
goto :goto_c
:catch_2e
move-exception v5
move-object v1, v2
:goto_30
:try_start_30
invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V
:try_end_33
.catchall {:try_start_30 .. :try_end_33} :catchall_61
if-eqz p0, :cond_38
:try_start_35
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:cond_38
:goto_38
:try_end_38
.catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_43
if-eqz v1, :cond_22
:try_start_3a
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_3d
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e
goto :goto_22
:catch_3e
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
goto :goto_22
:catch_43
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
goto :goto_38
:catch_48
move-exception v5
:try_start_49
:goto_49
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
:try_end_4c
.catchall {:try_start_49 .. :try_end_4c} :catchall_61
if-eqz p0, :cond_51
:try_start_4e
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:cond_51
:try_end_51
.catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5c
:goto_51
if-eqz v1, :cond_22
:try_start_53
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_56
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
goto :goto_22
:catch_57
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
goto :goto_22
:catch_5c
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
goto :goto_51
:catchall_61
move-exception v6
:goto_62
if-eqz p0, :cond_67
:try_start_64
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_67
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6d
:cond_67
:goto_67
if-eqz v1, :cond_6c
:try_start_69
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:goto_6c
:cond_6c
:try_end_6c
.catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_72
throw v6
:catch_6d
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
goto :goto_67
:catch_72
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
goto :goto_6c
:catch_77
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1c
:catch_7c
move-exception v5
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
:cond_80
move-object v1, v2
goto :goto_22
:catchall_82
move-exception v6
move-object v1, v2
goto :goto_62
:catch_85
move-exception v5
move-object v1, v2
goto :goto_49
:catch_88
move-exception v5
goto :goto_30
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
invoke-static {v1}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/io/InputStream;)[B
:try_end_11
.catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_11} :catch_13
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_19
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_1e
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
:catch_1e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_17
.end method
.method public static getForNormal(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const v0, 0x9c40
invoke-static {p0, v0, v0}, Lcom/pinguo/share/net/NetConnection;->get(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static post(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v0, 0x0
new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
move-object v1, p0
move v2, p1
move v3, p2
move-object v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/share/net/NetConnection;->sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static post(Ljava/lang/String;IILjava/util/List;)Ljava/lang/String;
.registers 10
const/4 v0, 0x0
new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
move-object v1, p0
move v2, p1
move v3, p2
move-object v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/share/net/NetConnection;->sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/util/List;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static quitFile()V
.registers 2
sget-object v1, Lcom/pinguo/share/net/NetConnection;->mHttpClient:Lorg/apache/http/client/HttpClient;
if-eqz v1, :cond_c
new-instance v0, Lcom/pinguo/share/net/NetConnection$1;
invoke-direct {v0}, Lcom/pinguo/share/net/NetConnection$1;-><init>()V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:cond_c
return-void
.end method
.method private static sendForGet(Lorg/apache/http/client/methods/HttpGet;Ljava/lang/String;IILorg/apache/http/client/HttpClient;)Ljava/lang/String;
.registers 8
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
.method private static sendForPost(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;IILorg/apache/http/client/HttpClient;Ljava/util/List;)Ljava/lang/String;
.registers 13
if-nez p0, :cond_7
new-instance p0, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
:cond_7
new-instance v2, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v2, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V
if-eqz p5, :cond_2c
new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v4, "UTF-8"
invoke-direct {v3, p5, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {p0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_26
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_39
:cond_2c
invoke-interface {p4, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v3
return-object v3
:cond_39
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lorg/apache/http/NameValuePair;
const-string/jumbo v4, "share"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Post value:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
.end method
.method public static uploadFile(Ljava/lang/String;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;
.registers 16
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
new-instance v7, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v7, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
new-instance v2, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const v11, 0x9c40
invoke-static {v2, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
const v11, 0x3a980
invoke-static {v2, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-virtual {v7, v2}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V
invoke-virtual {v7, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v8
invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v11
invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v11
const/16 v12, 0xc8
if-eq v11, v12, :cond_4a
sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "HttpPost Method failed: "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_4a
invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v11
invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v3
const/4 v5, 0x0
const/4 v9, 0x0
:try_start_54
new-instance v6, Ljava/io/ByteArrayOutputStream;
invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_end_59
.catchall {:try_start_54 .. :try_end_59} :catchall_ae
const/16 v11, 0x1000
:try_start_5b
new-array v0, v11, [B
const/4 v4, -0x1
:goto_5e
invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
move-result v4
const/4 v11, -0x1
if-ne v4, v11, :cond_9c
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V
new-instance v10, Ljava/lang/String;
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v11
const-string/jumbo v12, "UTF-8"
invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_start_74
:try_end_74
.catchall {:try_start_5b .. :try_end_74} :catchall_a1
const-string/jumbo v11, "Test"
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "Byte length:"
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_8a
.catchall {:try_start_74 .. :try_end_8a} :catchall_b0
if-eqz v6, :cond_8f
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
:cond_8f
if-eqz v3, :cond_94
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:cond_94
invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v11
invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
return-object v10
:cond_9c
const/4 v11, 0x0
:try_start_9d
invoke-virtual {v6, v0, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_a0
.catchall {:try_start_9d .. :try_end_a0} :catchall_a1
goto :goto_5e
:catchall_a1
move-exception v11
move-object v5, v6
:goto_a3
if-eqz v5, :cond_a8
invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
:cond_a8
if-eqz v3, :cond_ad
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:cond_ad
throw v11
:catchall_ae
move-exception v11
goto :goto_a3
:catchall_b0
move-exception v11
move-object v9, v10
move-object v5, v6
goto :goto_a3
.end method