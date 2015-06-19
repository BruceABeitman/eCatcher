.class public Lcom/umeng/common/net/r;
.super Ljava/lang/Object;
.source "UClient.java"
.field private static final a:Ljava/lang/String;
.field private b:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/common/net/r;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
new-instance v1, Ljava/io/BufferedReader;
new-instance v2, Ljava/io/InputStreamReader;
invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
const/16 v3, 0x2000
invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
:try_start_12
:goto_12
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_4f
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_38
move-result-object v3
if-nez v3, :cond_20
:try_start_18
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_1b
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_5e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1f
return-object v0
:try_start_20
:cond_20
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "\n"
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_37
.catchall {:try_start_20 .. :try_end_37} :catchall_4f
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_37} :catch_38
goto :goto_12
:catch_38
move-exception v1
:try_start_39
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "Caught IOException in convertStreamToString()"
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
:try_end_41
.catchall {:try_start_39 .. :try_end_41} :catchall_4f
:try_start_41
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_44
.catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
goto :goto_1f
:catch_45
move-exception v1
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "Caught IOException in convertStreamToString()"
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_1f
:catchall_4f
move-exception v1
:try_start_50
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_53
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54
throw v1
:catch_54
move-exception v1
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "Caught IOException in convertStreamToString()"
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_1f
:catch_5e
move-exception v1
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "Caught IOException in convertStreamToString()"
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_1f
.end method
.method private a()Lorg/apache/http/params/HttpParams;
.registers 3
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const/16 v1, 0x2710
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
const/16 v1, 0x4e20
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
const-string/jumbo v1, "http.agent"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
return-object v0
.end method
.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
.registers 9
const/4 v2, 0x0
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
const/16 v1, 0x3e8
invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I
move-result v3
:try_start_c
const-string/jumbo v0, "line.separator"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x1
if-gt v0, v1, :cond_35
sget-object v0, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, ":\tInvalid baseUrl."
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
:goto_34
return-object v0
:cond_35
sget-object v0, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, ":\tget: "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/common/net/r;->b:Ljava/util/Map;
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/umeng/common/net/r;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_73
iget-object v0, p0, Lcom/umeng/common/net/r;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_6d
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_f4
:cond_73
invoke-direct {p0}, Lcom/umeng/common/net/r;->a()Lorg/apache/http/params/HttpParams;
move-result-object v0
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
const/16 v5, 0xc8
if-ne v1, v5, :cond_17f
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
if-eqz v1, :cond_1ae
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v1
const-string/jumbo v5, "Content-Encoding"
invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v0
if-eqz v0, :cond_128
invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "gzip"
invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_128
sget-object v0, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "  Use GZIPInputStream get data...."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/zip/GZIPInputStream;
invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
:goto_ca
invoke-static {v0}, Lcom/umeng/common/net/r;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v1
sget-object v0, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, ":\tresponse: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
if-nez v1, :cond_178
move-object v0, v2
goto/16 :goto_34
:cond_f4
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/umeng/common/net/r;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_end_105
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_105} :catch_107
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_105} :catch_157
goto/16 :goto_6d
:catch_107
move-exception v0
sget-object v1, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tClientProtocolException,Failed to send message."
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
move-object v0, v2
goto/16 :goto_34
:cond_128
if-eqz v0, :cond_1b1
:try_start_12a
invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
const-string/jumbo v5, "deflate"
invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b1
sget-object v0, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "  Use InflaterInputStream get data...."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/zip/InflaterInputStream;
invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_155
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_12a .. :try_end_155} :catch_107
.catch Ljava/lang/Exception; {:try_start_12a .. :try_end_155} :catch_157
goto/16 :goto_ca
:catch_157
move-exception v0
sget-object v1, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tIOException,Failed to send message."
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
move-object v0, v2
goto/16 :goto_34
:try_start_178
:cond_178
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
goto/16 :goto_34
:cond_17f
sget-object v1, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, ":\tFailed to send message. StatusCode = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v4, Lcom/umeng/common/util/g;->a:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1ae
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_178 .. :try_end_1ae} :catch_107
.catch Ljava/lang/Exception; {:try_start_178 .. :try_end_1ae} :catch_157
:cond_1ae
move-object v0, v2
goto/16 :goto_34
:cond_1b1
move-object v0, v1
goto/16 :goto_ca
.end method
.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
.registers 12
const/4 v0, 0x0
invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/Random;
invoke-direct {v2}, Ljava/util/Random;-><init>()V
const/16 v3, 0x3e8
invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I
move-result v3
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, ":\trequest: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Lcom/umeng/common/util/g;->a:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/umeng/common/net/r;->a()Lorg/apache/http/params/HttpParams;
move-result-object v4
new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v5, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
:try_start_45
invoke-virtual {p0}, Lcom/umeng/common/net/r;->shouldCompressData()Z
move-result v4
if-eqz v4, :cond_de
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v6, "content="
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v4
invoke-virtual {v4}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/umeng/common/util/f;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v1
const-string/jumbo v4, "Content-Encoding"
const-string/jumbo v6, "deflate"
invoke-virtual {v2, v4, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Lorg/apache/http/entity/InputStreamEntity;
new-instance v6, Ljava/io/ByteArrayInputStream;
invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
array-length v1, v1
int-to-long v7, v1
invoke-direct {v4, v6, v7, v8}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V
invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:goto_7f
invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v4, 0xc8
if-ne v2, v4, :cond_121
invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v2
if-eqz v2, :cond_dd
invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v2
const-string/jumbo v4, "Content-Encoding"
invoke-interface {v1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v1
if-eqz v1, :cond_191
invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v1
const-string/jumbo v4, "deflate"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_191
new-instance v1, Ljava/util/zip/InflaterInputStream;
invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
:goto_b4
invoke-static {v1}, Lcom/umeng/common/net/r;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v2
sget-object v1, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, ":\tresponse: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Lcom/umeng/common/util/g;->a:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
if-nez v2, :cond_11a
:goto_dd
:cond_dd
return-object v0
:cond_de
new-instance v4, Ljava/util/ArrayList;
const/4 v6, 0x1
invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v7, "content"
invoke-direct {v6, v7, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v6, "UTF-8"
invoke-direct {v1, v4, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:try_end_fa
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_45 .. :try_end_fa} :catch_fb
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_fa} :catch_151
.catch Lorg/json/JSONException; {:try_start_45 .. :try_end_fa} :catch_171
goto :goto_7f
:catch_fb
move-exception v1
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tClientProtocolException,Failed to send message."
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_dd
:cond_11a
:try_start_11a
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
move-object v0, v1
goto :goto_dd
:cond_121
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, ":\tFailed to send message. StatusCode = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v4, Lcom/umeng/common/util/g;->a:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_150
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_11a .. :try_end_150} :catch_fb
.catch Ljava/io/IOException; {:try_start_11a .. :try_end_150} :catch_151
.catch Lorg/json/JSONException; {:try_start_11a .. :try_end_150} :catch_171
goto :goto_dd
:catch_151
move-exception v1
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tIOException,Failed to send message."
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto/16 :goto_dd
:catch_171
move-exception v1
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tIOException,Failed to send message."
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto/16 :goto_dd
:cond_191
move-object v1, v2
goto/16 :goto_b4
.end method
.method private b(Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1d
sget-object v0, Lcom/umeng/common/net/s;->c:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
sget-object v1, Lcom/umeng/common/net/s;->b:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
xor-int/2addr v0, v1
if-nez v0, :cond_3a
:cond_1d
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\u9a8c\u8bc1\u8bf7\u6c42\u65b9\u5f0f\u5931\u8d25["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3a
return-void
.end method
.method public execute(Lcom/umeng/common/net/s;Ljava/lang/Class;)Lcom/umeng/common/net/t;
.registers 8
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/umeng/common/net/s;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/umeng/common/net/r;->b(Ljava/lang/String;)V
sget-object v2, Lcom/umeng/common/net/s;->c:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_20
invoke-virtual {p1}, Lcom/umeng/common/net/s;->b()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/umeng/common/net/r;->a(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
:goto_1c
if-nez v0, :cond_33
move-object v0, v1
:goto_1f
return-object v0
:cond_20
sget-object v2, Lcom/umeng/common/net/s;->b:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_89
iget-object v0, p1, Lcom/umeng/common/net/s;->d:Ljava/lang/String;
invoke-virtual {p1}, Lcom/umeng/common/net/s;->a()Lorg/json/JSONObject;
move-result-object v2
invoke-direct {p0, v0, v2}, Lcom/umeng/common/net/r;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
goto :goto_1c
:cond_33
const/4 v2, 0x1
:try_start_34
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Lorg/json/JSONObject;
aput-object v4, v2, v3
invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v0, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/t;
:try_end_4b
.catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_4b} :catch_4c
.catch Ljava/lang/NoSuchMethodException; {:try_start_34 .. :try_end_4b} :catch_57
.catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_4b} :catch_61
.catch Ljava/lang/InstantiationException; {:try_start_34 .. :try_end_4b} :catch_6b
.catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_4b} :catch_75
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_4b} :catch_7f
goto :goto_1f
:catch_4c
move-exception v0
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "SecurityException"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
:goto_55
move-object v0, v1
goto :goto_1f
:catch_57
move-exception v0
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "NoSuchMethodException"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_55
:catch_61
move-exception v0
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "IllegalArgumentException"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_55
:catch_6b
move-exception v0
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "InstantiationException"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_55
:catch_75
move-exception v0
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "IllegalAccessException"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_55
:catch_7f
move-exception v0
sget-object v2, Lcom/umeng/common/net/r;->a:Ljava/lang/String;
const-string/jumbo v3, "InvocationTargetException"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_55
:cond_89
move-object v0, v1
goto :goto_1c
.end method
.method public setHeader(Ljava/util/Map;)Lcom/umeng/common/net/r;
.registers 2
iput-object p1, p0, Lcom/umeng/common/net/r;->b:Ljava/util/Map;
return-object p0
.end method
.method public shouldCompressData()Z
.registers 2
const/4 v0, 0x0
return v0
.end method