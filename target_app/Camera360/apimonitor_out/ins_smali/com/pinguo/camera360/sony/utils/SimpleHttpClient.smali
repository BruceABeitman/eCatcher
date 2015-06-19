.class public Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;
.super Ljava/lang/Object;
.source "SimpleHttpClient.java"
.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x2710
.field private static final DEFAULT_READ_TIMEOUT:I = 0x2710
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getUrlContentToByte(Ljava/lang/String;)[B
.registers 15
const/4 v11, 0x0
const/4 v9, 0x0
const/4 v6, 0x0
:try_start_3
new-instance v1, Ljava/net/URL;
invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v10
move-object v0, v10
check-cast v0, Ljava/net/HttpURLConnection;
move-object v9, v0
const/16 v10, 0x2710
invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
invoke-static {v9}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v8
const/16 v10, 0xc8
if-eq v8, v10, :cond_4d
new-instance v10, Ljava/io/IOException;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "the http response code:"
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, " is not 200"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v10, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v10
:try_end_3d
.catchall {:try_start_3 .. :try_end_3d} :catchall_98
.catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3d} :catch_3d
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_3d} :catch_88
:catch_3d
move-exception v5
:try_start_3e
invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_98
if-eqz v6, :cond_46
:try_start_43
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
:try_end_46
.catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_a8
:goto_46
:cond_46
if-eqz v9, :cond_4b
invoke-static {v9}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_4b
move-object v10, v11
:goto_4c
:cond_4c
return-object v10
:cond_4d
:try_start_4d
invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I
:try_end_50
.catchall {:try_start_4d .. :try_end_50} :catchall_98
.catch Ljava/net/MalformedURLException; {:try_start_4d .. :try_end_50} :catch_3d
.catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_88
move-result v4
if-nez v4, :cond_5f
if-eqz v6, :cond_58
:try_start_55
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
:cond_58
:goto_58
:try_end_58
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_a4
if-eqz v9, :cond_5d
invoke-static {v9}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_5d
move-object v10, v11
goto :goto_4c
:cond_5f
:try_start_5f
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/16 v10, 0x1000
new-array v3, v10, [B
const/4 v7, 0x0
invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v6
:goto_6d
invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I
move-result v7
const/4 v10, -0x1
if-ne v7, v10, :cond_83
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_77
.catchall {:try_start_5f .. :try_end_77} :catchall_98
.catch Ljava/net/MalformedURLException; {:try_start_5f .. :try_end_77} :catch_3d
.catch Ljava/io/IOException; {:try_start_5f .. :try_end_77} :catch_88
move-result-object v10
if-eqz v6, :cond_7d
:try_start_7a
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
:try_end_7d
.catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_a6
:goto_7d
:cond_7d
if-eqz v9, :cond_4c
invoke-static {v9}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
goto :goto_4c
:cond_83
const/4 v10, 0x0
:try_start_84
invoke-virtual {v2, v3, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_87
.catchall {:try_start_84 .. :try_end_87} :catchall_98
.catch Ljava/net/MalformedURLException; {:try_start_84 .. :try_end_87} :catch_3d
.catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88
goto :goto_6d
:catch_88
move-exception v5
:try_start_89
invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
:try_end_8c
.catchall {:try_start_89 .. :try_end_8c} :catchall_98
if-eqz v6, :cond_91
:try_start_8e
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
:cond_91
:try_end_91
.catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_aa
:goto_91
if-eqz v9, :cond_96
invoke-static {v9}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_96
move-object v10, v11
goto :goto_4c
:catchall_98
move-exception v10
if-eqz v6, :cond_9e
:try_start_9b
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
:try_end_9e
.catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_ac
:goto_9e
:cond_9e
if-eqz v9, :cond_a3
invoke-static {v9}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_a3
throw v10
:catch_a4
move-exception v10
goto :goto_58
:catch_a6
move-exception v11
goto :goto_7d
:catch_a8
move-exception v10
goto :goto_46
:catch_aa
move-exception v10
goto :goto_91
:catch_ac
move-exception v11
goto :goto_9e
.end method
.method public static httpGet(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/16 v0, 0x2710
invoke-static {p0, v0}, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->httpGet(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static httpGet(Ljava/lang/String;I)Ljava/lang/String;
.registers 15
const/4 v4, 0x0
const/4 v5, 0x0
:try_start_2
new-instance v1, Ljava/net/URL;
invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v10
move-object v0, v10
check-cast v0, Ljava/net/HttpURLConnection;
move-object v4, v0
const-string/jumbo v10, "GET"
invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const-string/jumbo v10, "connection"
const-string/jumbo v11, "close"
invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/16 v10, 0x2710
invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v9
const/16 v10, 0xc8
if-ne v9, v10, :cond_35
invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v5
:cond_35
if-nez v5, :cond_c5
sget-object v10, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "httpGet: Response Code Error: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, ": "
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v10, Ljava/io/IOException;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Response Error:"
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v10
:catch_6d
:try_end_6d
.catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_6d} :catch_6d
.catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_6d} :catch_89
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_6d} :catch_a5
move-exception v3
sget-object v10, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "httpGet: Timeout: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v10, Ljava/io/IOException;
invoke-direct {v10}, Ljava/io/IOException;-><init>()V
throw v10
:catch_89
move-exception v3
sget-object v10, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "httpGet: MalformedUrlException: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v10, Ljava/io/IOException;
invoke-direct {v10}, Ljava/io/IOException;-><init>()V
throw v10
:catch_a5
move-exception v3
sget-object v10, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "httpGet: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v4, :cond_c4
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_c4
throw v3
:cond_c5
const/4 v6, 0x0
:try_start_c6
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
new-instance v7, Ljava/io/BufferedReader;
new-instance v10, Ljava/io/InputStreamReader;
invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_d5
.catchall {:try_start_c6 .. :try_end_d5} :catchall_111
.catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d5} :catch_14d
:goto_d5
:try_start_d5
invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I
move-result v2
const/4 v10, -0x1
if-ne v2, v10, :cond_f0
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_df
.catchall {:try_start_d5 .. :try_end_df} :catchall_14a
.catch Ljava/io/IOException; {:try_start_d5 .. :try_end_df} :catch_f5
move-result-object v10
if-eqz v7, :cond_e5
:try_start_e2
invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
:try_end_e5
.catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_122
:cond_e5
:goto_e5
if-eqz v5, :cond_ea
:try_start_e7
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:cond_ea
:goto_ea
:try_end_ea
.catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_12c
if-eqz v4, :cond_ef
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_ef
return-object v10
:cond_f0
int-to-char v10, v2
:try_start_f1
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_f4
.catchall {:try_start_f1 .. :try_end_f4} :catchall_14a
.catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5
goto :goto_d5
:catch_f5
move-exception v3
move-object v6, v7
:try_start_f7
:goto_f7
sget-object v10, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "httpGet: read error: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
throw v3
:catchall_111
:try_end_111
.catchall {:try_start_f7 .. :try_end_111} :catchall_111
move-exception v10
:goto_112
if-eqz v6, :cond_117
:try_start_114
invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
:goto_117
:try_end_117
.catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_136
:cond_117
if-eqz v5, :cond_11c
:try_start_119
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:goto_11c
:try_end_11c
.catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_140
:cond_11c
if-eqz v4, :cond_121
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_121
throw v10
:catch_122
move-exception v3
sget-object v11, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v12, "IOException while closing BufferedReader"
invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_e5
:catch_12c
move-exception v3
sget-object v11, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v12, "IOException while closing InputStream"
invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_ea
:catch_136
move-exception v3
sget-object v11, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v12, "IOException while closing BufferedReader"
invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_117
:catch_140
move-exception v3
sget-object v11, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v12, "IOException while closing InputStream"
invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_11c
:catchall_14a
move-exception v10
move-object v6, v7
goto :goto_112
:catch_14d
move-exception v3
goto :goto_f7
.end method
.method public static httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/16 v0, 0x2710
invoke-static {p0, p1, v0}, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->httpPost(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static httpPost(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.registers 19
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v11, 0x0
const/4 v5, 0x0
:try_start_4
new-instance v1, Ljava/net/URL;
move-object/from16 v0, p0
invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v13
move-object v0, v13
check-cast v0, Ljava/net/HttpURLConnection;
move-object v4, v0
const-string/jumbo v13, "POST"
invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const-string/jumbo v13, "connection"
const-string/jumbo v14, "close"
invoke-virtual {v4, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v13, "content-type"
const-string/jumbo v14, "application/json"
invoke-virtual {v4, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/16 v13, 0x2710
invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
move/from16 v0, p2
invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
const/4 v13, 0x1
invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const/4 v13, 0x1
invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
const/4 v13, 0x0
invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v6
new-instance v12, Ljava/io/OutputStreamWriter;
const-string/jumbo v13, "UTF-8"
invoke-direct {v12, v6, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
:try_end_4d
.catchall {:try_start_4 .. :try_end_4d} :catchall_c1
.catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4d} :catch_a3
.catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4d} :catch_cd
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_4d} :catch_eb
:try_start_4d
move-object/from16 v0, p1
invoke-virtual {v12, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->flush()V
invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V
:try_end_58
.catchall {:try_start_4d .. :try_end_58} :catchall_1a9
.catch Ljava/net/SocketTimeoutException; {:try_start_4d .. :try_end_58} :catch_1b5
.catch Ljava/net/MalformedURLException; {:try_start_4d .. :try_end_58} :catch_1b1
.catch Ljava/io/IOException; {:try_start_4d .. :try_end_58} :catch_1ad
const/4 v11, 0x0
:try_start_59
invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
const/4 v6, 0x0
invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v10
const/16 v13, 0xc8
if-ne v10, v13, :cond_69
invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v5
:cond_69
if-nez v5, :cond_11f
sget-object v13, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "httpPost: Response Code Error: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
const-string/jumbo v15, ": "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v13, Ljava/io/IOException;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "Response Error:"
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v13
:try_end_a3
.catchall {:try_start_59 .. :try_end_a3} :catchall_c1
.catch Ljava/net/SocketTimeoutException; {:try_start_59 .. :try_end_a3} :catch_a3
.catch Ljava/net/MalformedURLException; {:try_start_59 .. :try_end_a3} :catch_cd
.catch Ljava/io/IOException; {:try_start_59 .. :try_end_a3} :catch_eb
:catch_a3
move-exception v3
:try_start_a4
:goto_a4
sget-object v13, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "httpPost: Timeout: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v13, Ljava/io/IOException;
invoke-direct {v13}, Ljava/io/IOException;-><init>()V
throw v13
:try_end_c1
.catchall {:try_start_a4 .. :try_end_c1} :catchall_c1
:catchall_c1
move-exception v13
:goto_c2
if-eqz v11, :cond_c7
:try_start_c4
invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V
:try_end_c7
.catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_10b
:goto_c7
:cond_c7
if-eqz v6, :cond_cc
:try_start_c9
invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
:cond_cc
:goto_cc
:try_end_cc
.catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_115
throw v13
:catch_cd
move-exception v3
:goto_ce
:try_start_ce
sget-object v13, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "httpPost: MalformedUrlException: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v13, Ljava/io/IOException;
invoke-direct {v13}, Ljava/io/IOException;-><init>()V
throw v13
:catch_eb
move-exception v3
:goto_ec
sget-object v13, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "httpPost: IOException: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v4, :cond_10a
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_10a
throw v3
:catch_10b
:try_end_10b
.catchall {:try_start_ce .. :try_end_10b} :catchall_c1
move-exception v3
sget-object v14, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v15, "IOException while closing OutputStreamWriter"
invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_c7
:catch_115
move-exception v3
sget-object v14, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v15, "IOException while closing OutputStream"
invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_cc
:cond_11f
if-eqz v11, :cond_124
:try_start_121
invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V
:goto_124
:cond_124
:try_end_124
.catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_14f
if-eqz v6, :cond_129
:try_start_126
invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
:cond_129
:goto_129
:try_end_129
.catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_159
const/4 v7, 0x0
:try_start_12a
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
new-instance v8, Ljava/io/BufferedReader;
new-instance v13, Ljava/io/InputStreamReader;
invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v8, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_139
:try_end_139
.catchall {:try_start_12a .. :try_end_139} :catchall_184
.catch Ljava/io/IOException; {:try_start_12a .. :try_end_139} :catch_1a7
:goto_139
invoke-virtual {v8}, Ljava/io/BufferedReader;->read()I
move-result v2
const/4 v13, -0x1
if-ne v2, v13, :cond_163
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_143
.catchall {:try_start_139 .. :try_end_143} :catchall_1a4
.catch Ljava/io/IOException; {:try_start_139 .. :try_end_143} :catch_168
move-result-object v13
if-eqz v8, :cond_149
:try_start_146
invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
:try_end_149
.catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_190
:goto_149
:cond_149
if-eqz v4, :cond_14e
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_14e
return-object v13
:catch_14f
move-exception v3
sget-object v13, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v14, "IOException while closing OutputStreamWriter"
invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_124
:catch_159
move-exception v3
sget-object v13, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v14, "IOException while closing OutputStream"
invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_129
:cond_163
int-to-char v13, v2
:try_start_164
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_167
.catchall {:try_start_164 .. :try_end_167} :catchall_1a4
.catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_168
goto :goto_139
:catch_168
move-exception v3
move-object v7, v8
:try_start_16a
:goto_16a
sget-object v13, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "httpPost: read error: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
throw v3
:try_end_184
.catchall {:try_start_16a .. :try_end_184} :catchall_184
:catchall_184
move-exception v13
:goto_185
if-eqz v7, :cond_18a
:try_start_187
invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
:try_end_18a
.catch Ljava/io/IOException; {:try_start_187 .. :try_end_18a} :catch_19a
:goto_18a
:cond_18a
if-eqz v4, :cond_18f
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_18f
throw v13
:catch_190
move-exception v3
sget-object v14, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v15, "IOException while closing BufferedReader"
invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_149
:catch_19a
move-exception v3
sget-object v14, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->TAG:Ljava/lang/String;
const-string/jumbo v15, "IOException while closing BufferedReader"
invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_18a
:catchall_1a4
move-exception v13
move-object v7, v8
goto :goto_185
:catch_1a7
move-exception v3
goto :goto_16a
:catchall_1a9
move-exception v13
move-object v11, v12
goto/16 :goto_c2
:catch_1ad
move-exception v3
move-object v11, v12
goto/16 :goto_ec
:catch_1b1
move-exception v3
move-object v11, v12
goto/16 :goto_ce
:catch_1b5
move-exception v3
move-object v11, v12
goto/16 :goto_a4
.end method