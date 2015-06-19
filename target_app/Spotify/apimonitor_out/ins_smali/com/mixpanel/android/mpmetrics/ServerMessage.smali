.class final Lcom/mixpanel/android/mpmetrics/ServerMessage;
.super Ljava/lang/Object;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/util/List;)Lcom/mixpanel/android/mpmetrics/s;
.registers 15
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v6, 0x0
sget-object v11, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->c:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
move v3, v2
move-object v8, v6
:goto_7
const/4 v0, 0x3
if-ge v3, v0, :cond_d5
if-nez v2, :cond_d5
:try_start_c
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
:try_end_17
.catchall {:try_start_c .. :try_end_17} :catchall_ff
.catch Ljava/io/EOFException; {:try_start_c .. :try_end_17} :catch_13c
if-eqz p1, :cond_43
const/4 v4, 0x1
:try_start_1a
invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string v4, "UTF-8"
invoke-direct {v7, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
const-string v4, "POST"
invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
invoke-virtual {v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J
move-result-wide v4
long-to-int v4, v4
invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
:try_end_34
.catchall {:try_start_1a .. :try_end_34} :catchall_105
.catch Ljava/io/EOFException; {:try_start_1a .. :try_end_34} :catch_145
move-result-object v5
:try_start_35
new-instance v4, Ljava/io/BufferedOutputStream;
invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_3a
:try_end_3a
.catchall {:try_start_35 .. :try_end_3a} :catchall_10f
.catch Ljava/io/EOFException; {:try_start_35 .. :try_end_3a} :catch_14e
invoke-virtual {v7, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V
invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
:try_start_40
:try_end_40
.catchall {:try_start_3a .. :try_end_40} :catchall_118
.catch Ljava/io/EOFException; {:try_start_3a .. :try_end_40} :catch_157
invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
:try_start_43
:cond_43
:try_end_43
.catchall {:try_start_40 .. :try_end_43} :catchall_10f
.catch Ljava/io/EOFException; {:try_start_40 .. :try_end_43} :catch_14e
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_46
.catchall {:try_start_43 .. :try_end_46} :catchall_105
.catch Ljava/io/EOFException; {:try_start_43 .. :try_end_46} :catch_145
move-result-object v7
:try_start_47
new-instance v5, Ljava/io/BufferedInputStream;
invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_4c
:try_end_4c
.catchall {:try_start_47 .. :try_end_4c} :catchall_120
.catch Ljava/io/EOFException; {:try_start_47 .. :try_end_4c} :catch_160
invoke-static {v7}, Lcom/mixpanel/android/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;
:try_end_4f
.catchall {:try_start_4c .. :try_end_4f} :catchall_129
.catch Ljava/io/EOFException; {:try_start_4c .. :try_end_4f} :catch_169
move-result-object v4
:try_start_50
invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
:try_start_53
:try_end_53
.catchall {:try_start_50 .. :try_end_53} :catchall_132
.catch Ljava/io/EOFException; {:try_start_50 .. :try_end_53} :catch_172
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
:try_end_56
.catchall {:try_start_53 .. :try_end_56} :catchall_82
.catch Ljava/io/EOFException; {:try_start_53 .. :try_end_56} :catch_5e
if-eqz v0, :cond_17a
:try_start_58
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:try_end_5b
.catch Ljava/net/MalformedURLException; {:try_start_58 .. :try_end_5b} :catch_fd
.catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_d8
.catch Ljava/lang/OutOfMemoryError; {:try_start_58 .. :try_end_5b} :catch_dc
move v2, v1
move-object v8, v4
goto :goto_7
:catch_5e
move-exception v5
move-object v5, v0
move-object v8, v6
move-object v9, v6
move-object v10, v7
move-object v7, v6
:goto_64
add-int/lit8 v0, v3, 0x1
if-eqz v7, :cond_6b
:try_start_68
invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
:try_end_6b
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_e7
.catch Ljava/net/MalformedURLException; {:try_start_68 .. :try_end_6b} :catch_fd
.catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_6b} :catch_dc
:cond_6b
:goto_6b
if-eqz v8, :cond_70
:try_start_6d
invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
:try_end_70
.catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_e9
.catch Ljava/net/MalformedURLException; {:try_start_6d .. :try_end_70} :catch_fd
.catch Ljava/lang/OutOfMemoryError; {:try_start_6d .. :try_end_70} :catch_dc
:cond_70
:goto_70
if-eqz v9, :cond_75
:try_start_72
invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
:try_end_75
.catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_eb
.catch Ljava/net/MalformedURLException; {:try_start_72 .. :try_end_75} :catch_fd
.catch Ljava/lang/OutOfMemoryError; {:try_start_72 .. :try_end_75} :catch_dc
:cond_75
:goto_75
if-eqz v10, :cond_7a
:try_start_77
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_7a
.catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_ed
.catch Ljava/net/MalformedURLException; {:try_start_77 .. :try_end_7a} :catch_fd
.catch Ljava/lang/OutOfMemoryError; {:try_start_77 .. :try_end_7a} :catch_dc
:cond_7a
:goto_7a
if-eqz v5, :cond_cc
:try_start_7c
invoke-static {v5}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:try_end_7f
.catch Ljava/net/MalformedURLException; {:try_start_7c .. :try_end_7f} :catch_fd
.catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_d8
.catch Ljava/lang/OutOfMemoryError; {:try_start_7c .. :try_end_7f} :catch_dc
move v3, v0
move-object v8, v4
goto :goto_7
:catchall_82
move-exception v1
move-object v5, v6
move-object v8, v4
move-object v4, v6
move-object v12, v1
move-object v1, v6
move-object v6, v0
move-object v0, v12
:goto_8a
if-eqz v4, :cond_8f
:try_start_8c
invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
:goto_8f
:try_end_8f
.catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_ef
.catch Ljava/net/MalformedURLException; {:try_start_8c .. :try_end_8f} :catch_a4
.catch Ljava/lang/OutOfMemoryError; {:try_start_8c .. :try_end_8f} :catch_f7
:cond_8f
if-eqz v5, :cond_94
:try_start_91
invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
:goto_94
:try_end_94
.catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_f1
.catch Ljava/net/MalformedURLException; {:try_start_91 .. :try_end_94} :catch_a4
.catch Ljava/lang/OutOfMemoryError; {:try_start_91 .. :try_end_94} :catch_f7
:cond_94
if-eqz v1, :cond_99
:try_start_96
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
:goto_99
:try_end_99
.catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_f3
.catch Ljava/net/MalformedURLException; {:try_start_96 .. :try_end_99} :catch_a4
.catch Ljava/lang/OutOfMemoryError; {:try_start_96 .. :try_end_99} :catch_f7
:cond_99
if-eqz v7, :cond_9e
:try_start_9b
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
:goto_9e
:try_end_9e
.catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_f5
.catch Ljava/net/MalformedURLException; {:try_start_9b .. :try_end_9e} :catch_a4
.catch Ljava/lang/OutOfMemoryError; {:try_start_9b .. :try_end_9e} :catch_f7
:cond_9e
if-eqz v6, :cond_a3
:try_start_a0
invoke-static {v6}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_a3
throw v0
:catch_a4
:try_end_a4
.catch Ljava/net/MalformedURLException; {:try_start_a0 .. :try_end_a4} :catch_a4
.catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a4} :catch_fa
.catch Ljava/lang/OutOfMemoryError; {:try_start_a0 .. :try_end_a4} :catch_f7
move-exception v0
move-object v4, v8
:goto_a6
const-string v1, "MixpanelAPI"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Cannot iterpret "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " as a URL"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->c:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
:goto_c2
if-eqz v4, :cond_c6
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
:cond_c6
new-instance v1, Lcom/mixpanel/android/mpmetrics/s;
invoke-direct {v1, v0, v4}, Lcom/mixpanel/android/mpmetrics/s;-><init>(Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;Ljava/lang/String;)V
return-object v1
:cond_cc
move-object v3, v4
move v12, v0
move v0, v2
move v2, v12
:goto_d0
move-object v8, v3
move v3, v2
move v2, v0
goto/16 :goto_7
:cond_d5
move-object v4, v8
move-object v0, v11
goto :goto_c2
:catch_d8
move-exception v0
:goto_d9
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
goto :goto_c2
:catch_dc
move-exception v0
:goto_dd
const-string v1, "MixpanelAPI"
const-string v2, "Cannot post message to Mixpanel Servers, will not retry."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->c:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
goto :goto_c2
:catch_e7
move-exception v3
goto :goto_6b
:catch_e9
move-exception v3
goto :goto_70
:catch_eb
move-exception v3
goto :goto_75
:catch_ed
move-exception v3
goto :goto_7a
:catch_ef
move-exception v2
goto :goto_8f
:catch_f1
move-exception v2
goto :goto_94
:catch_f3
move-exception v1
goto :goto_99
:catch_f5
move-exception v1
goto :goto_9e
:catch_f7
move-exception v0
move-object v4, v8
goto :goto_dd
:catch_fa
move-exception v0
move-object v4, v8
goto :goto_d9
:catch_fd
move-exception v0
goto :goto_a6
:catchall_ff
move-exception v0
move-object v4, v6
move-object v5, v6
move-object v1, v6
move-object v7, v6
goto :goto_8a
:catchall_105
move-exception v1
move-object v4, v6
move-object v5, v6
move-object v7, v6
move-object v12, v0
move-object v0, v1
move-object v1, v6
move-object v6, v12
goto/16 :goto_8a
:catchall_10f
move-exception v1
move-object v4, v6
move-object v7, v6
move-object v12, v1
move-object v1, v6
move-object v6, v0
move-object v0, v12
goto/16 :goto_8a
:catchall_118
move-exception v1
move-object v7, v6
move-object v12, v0
move-object v0, v1
move-object v1, v6
move-object v6, v12
goto/16 :goto_8a
:catchall_120
move-exception v1
move-object v4, v6
move-object v5, v6
move-object v12, v1
move-object v1, v6
move-object v6, v0
move-object v0, v12
goto/16 :goto_8a
:catchall_129
move-exception v1
move-object v4, v6
move-object v12, v0
move-object v0, v1
move-object v1, v5
move-object v5, v6
move-object v6, v12
goto/16 :goto_8a
:catchall_132
move-exception v1
move-object v8, v4
move-object v4, v6
move-object v12, v0
move-object v0, v1
move-object v1, v5
move-object v5, v6
move-object v6, v12
goto/16 :goto_8a
:catch_13c
move-exception v0
move-object v5, v6
move-object v7, v6
move-object v9, v6
move-object v10, v6
move-object v4, v8
move-object v8, v6
goto/16 :goto_64
:catch_145
move-exception v4
move-object v5, v0
move-object v7, v6
move-object v9, v6
move-object v10, v6
move-object v4, v8
move-object v8, v6
goto/16 :goto_64
:catch_14e
move-exception v4
move-object v7, v6
move-object v9, v6
move-object v10, v6
move-object v4, v8
move-object v8, v5
move-object v5, v0
goto/16 :goto_64
:catch_157
move-exception v7
move-object v7, v4
move-object v9, v6
move-object v10, v6
move-object v4, v8
move-object v8, v5
move-object v5, v0
goto/16 :goto_64
:catch_160
move-exception v4
move-object v5, v0
move-object v9, v6
move-object v10, v7
move-object v4, v8
move-object v8, v6
move-object v7, v6
goto/16 :goto_64
:catch_169
move-exception v4
move-object v9, v5
move-object v10, v7
move-object v4, v8
move-object v5, v0
move-object v7, v6
move-object v8, v6
goto/16 :goto_64
:catch_172
move-exception v8
move-object v8, v6
move-object v9, v5
move-object v10, v7
move-object v7, v6
move-object v5, v0
goto/16 :goto_64
:cond_17a
move v0, v1
move v2, v3
move-object v3, v4
goto/16 :goto_d0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/s;
.registers 7
const/4 v3, 0x0
invoke-static {p1, v3}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mixpanel/android/mpmetrics/s;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/s;->a()Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
move-result-object v1
sget-object v2, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
if-ne v1, v2, :cond_13
if-eqz p2, :cond_13
invoke-virtual {p0, p2, v3}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/s;
move-result-object v0
:cond_13
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/s;
.registers 10
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->c:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
invoke-static {p1}, Lcom/mixpanel/android/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
const/4 v3, 0x1
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
new-instance v3, Lorg/apache/http/message/BasicNameValuePair;
const-string v4, "data"
invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {p2, v2}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mixpanel/android/mpmetrics/s;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/s;->a()Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
move-result-object v2
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/s;->b()Ljava/lang/String;
move-result-object v1
sget-object v3, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
if-ne v2, v3, :cond_30
const-string v3, "1\n"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_30
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
:cond_30
sget-object v3, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
if-ne v2, v3, :cond_5d
if-eqz p3, :cond_5d
const/4 v1, 0x0
invoke-virtual {p0, p1, p3, v1}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/s;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/s;->a()Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
move-result-object v2
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/s;->b()Ljava/lang/String;
move-result-object v1
sget-object v3, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
if-eq v2, v3, :cond_57
const-string v2, "MixpanelAPI"
const-string v3, "Could not post data to Mixpanel"
invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-object v5, v1
move-object v1, v0
move-object v0, v5
:goto_51
new-instance v2, Lcom/mixpanel/android/mpmetrics/s;
invoke-direct {v2, v1, v0}, Lcom/mixpanel/android/mpmetrics/s;-><init>(Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;Ljava/lang/String;)V
return-object v2
:cond_57
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
move-object v5, v1
move-object v1, v0
move-object v0, v5
goto :goto_51
:cond_5d
move-object v5, v1
move-object v1, v0
move-object v0, v5
goto :goto_51
.end method