.class public abstract Ltwitter4j/internal/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"
.field private static LOGGABLE:Z = false
.field private static final TAG:Ljava/lang/String; = "T4JHttpResposne"
.field protected final CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
.field protected is:Ljava/io/InputStream;
.field private json:Ltwitter4j/internal/org/json/JSONObject;
.field private jsonArray:Ltwitter4j/internal/org/json/JSONArray;
.field protected responseAsString:Ljava/lang/String;
.field protected statusCode:I
.field private streamConsumed:Z
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
sput-boolean v0, Ltwitter4j/internal/http/HttpResponse;->LOGGABLE:Z
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
return-void
.end method
.method public constructor <init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
iput-object p1, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
return-void
.end method
.method private disconnectForcibly()V
.registers 2
:try_start_0
invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnect()V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method
.method public asJSONArray()Ltwitter4j/internal/org/json/JSONArray;
.registers 6
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
if-nez v2, :cond_39
const/4 v1, 0x0
:try_start_5
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
if-nez v2, :cond_3c
invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/Reader;
move-result-object v1
new-instance v2, Ltwitter4j/internal/org/json/JSONArray;
new-instance v3, Ltwitter4j/internal/org/json/JSONTokener;
invoke-direct {v3, v1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V
iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
:goto_19
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->isPrettyDebugEnabled()Z
move-result v2
if-eqz v2, :cond_78
sget-boolean v2, Ltwitter4j/internal/http/HttpResponse;->LOGGABLE:Z
if-eqz v2, :cond_31
const-string v2, "T4JHttpResposne"
iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_31
:cond_31
:try_end_31
.catchall {:try_start_5 .. :try_end_31} :catchall_6e
.catch Ltwitter4j/internal/org/json/JSONException; {:try_start_5 .. :try_end_31} :catch_46
if-eqz v1, :cond_36
:try_start_33
invoke-virtual {v1}, Ljava/io/Reader;->close()V
:goto_36
:cond_36
:try_end_36
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_99
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V
:cond_39
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
return-object v2
:try_start_3c
:cond_3c
new-instance v2, Ltwitter4j/internal/org/json/JSONArray;
iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V
iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
:try_end_45
.catchall {:try_start_3c .. :try_end_45} :catchall_6e
.catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3c .. :try_end_45} :catch_46
goto :goto_19
:catch_46
move-exception v0
:try_start_47
sget-boolean v2, Ltwitter4j/internal/http/HttpResponse;->LOGGABLE:Z
if-eqz v2, :cond_8f
new-instance v2, Ltwitter4j/TwitterException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catchall_6e
:try_end_6e
.catchall {:try_start_47 .. :try_end_6e} :catchall_6e
move-exception v2
if-eqz v1, :cond_74
:try_start_71
invoke-virtual {v1}, Ljava/io/Reader;->close()V
:goto_74
:cond_74
:try_end_74
.catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_9b
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V
throw v2
:cond_78
:try_start_78
sget-boolean v2, Ltwitter4j/internal/http/HttpResponse;->LOGGABLE:Z
if-eqz v2, :cond_31
const-string v3, "T4JHttpResposne"
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
if-eqz v2, :cond_88
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
:goto_84
invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_31
:cond_88
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->jsonArray:Ltwitter4j/internal/org/json/JSONArray;
invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;
:try_end_8d
.catchall {:try_start_78 .. :try_end_8d} :catchall_6e
.catch Ltwitter4j/internal/org/json/JSONException; {:try_start_78 .. :try_end_8d} :catch_46
move-result-object v2
goto :goto_84
:cond_8f
:try_start_8f
new-instance v2, Ltwitter4j/TwitterException;
invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_99
:try_end_99
.catchall {:try_start_8f .. :try_end_99} :catchall_6e
move-exception v2
goto :goto_36
:catch_9b
move-exception v3
goto :goto_74
.end method
.method public asJSONObject()Ltwitter4j/internal/org/json/JSONObject;
.registers 6
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
if-nez v2, :cond_39
const/4 v1, 0x0
:try_start_5
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
if-nez v2, :cond_3c
invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/Reader;
move-result-object v1
new-instance v2, Ltwitter4j/internal/org/json/JSONObject;
new-instance v3, Ltwitter4j/internal/org/json/JSONTokener;
invoke-direct {v3, v1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V
iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
:goto_19
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;
invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->isPrettyDebugEnabled()Z
move-result v2
if-eqz v2, :cond_5f
sget-boolean v2, Ltwitter4j/internal/http/HttpResponse;->LOGGABLE:Z
if-eqz v2, :cond_31
const-string v2, "T4JHttpResposne"
iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_31
:cond_31
:try_end_31
.catchall {:try_start_5 .. :try_end_31} :catchall_55
.catch Ltwitter4j/internal/org/json/JSONException; {:try_start_5 .. :try_end_31} :catch_46
if-eqz v1, :cond_36
:try_start_33
invoke-virtual {v1}, Ljava/io/Reader;->close()V
:goto_36
:cond_36
:try_end_36
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_99
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V
:cond_39
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
return-object v2
:try_start_3c
:cond_3c
new-instance v2, Ltwitter4j/internal/org/json/JSONObject;
iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V
iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
:try_end_45
.catchall {:try_start_3c .. :try_end_45} :catchall_55
.catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3c .. :try_end_45} :catch_46
goto :goto_19
:catch_46
move-exception v0
:try_start_47
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
if-nez v2, :cond_76
new-instance v2, Ltwitter4j/TwitterException;
invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catchall_55
:try_end_55
.catchall {:try_start_47 .. :try_end_55} :catchall_55
move-exception v2
if-eqz v1, :cond_5b
:try_start_58
invoke-virtual {v1}, Ljava/io/Reader;->close()V
:try_end_5b
.catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_9b
:goto_5b
:cond_5b
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V
throw v2
:cond_5f
:try_start_5f
sget-boolean v2, Ltwitter4j/internal/http/HttpResponse;->LOGGABLE:Z
if-eqz v2, :cond_31
const-string v3, "T4JHttpResposne"
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
if-eqz v2, :cond_6f
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
:goto_6b
invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_31
:cond_6f
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;
:try_end_74
.catchall {:try_start_5f .. :try_end_74} :catchall_55
.catch Ltwitter4j/internal/org/json/JSONException; {:try_start_5f .. :try_end_74} :catch_46
move-result-object v2
goto :goto_6b
:cond_76
:try_start_76
new-instance v2, Ltwitter4j/TwitterException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_99
:try_end_99
.catchall {:try_start_76 .. :try_end_99} :catchall_55
move-exception v2
goto :goto_36
:catch_9b
move-exception v3
goto :goto_5b
.end method
.method public asReader()Ljava/io/Reader;
.registers 6
:try_start_0
new-instance v1, Ljava/io/BufferedReader;
new-instance v2, Ljava/io/InputStreamReader;
iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;
const-string v4, "UTF-8"
invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-object v1
:catch_f
move-exception v0
new-instance v1, Ljava/io/InputStreamReader;
iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;
invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
goto :goto_e
.end method
.method public asStream()Ljava/io/InputStream;
.registers 3
iget-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Stream has already been consumed."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;
return-object v0
.end method
.method public asString()Ljava/lang/String;
.registers 9
iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
if-nez v6, :cond_7b
const/4 v0, 0x0
const/4 v5, 0x0
:try_start_6
invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asStream()Ljava/io/InputStream;
:try_end_9
.catchall {:try_start_6 .. :try_end_9} :catchall_48
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_8d
move-result-object v5
if-nez v5, :cond_1b
const/4 v6, 0x0
if-eqz v5, :cond_12
:try_start_f
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:cond_12
:goto_12
:try_end_12
.catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_7e
if-eqz v0, :cond_17
:try_start_14
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:cond_17
:goto_17
:try_end_17
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_80
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V
:goto_1a
return-object v6
:try_start_1b
:cond_1b
new-instance v1, Ljava/io/BufferedReader;
new-instance v6, Ljava/io/InputStreamReader;
const-string v7, "UTF-8"
invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_27
:try_end_27
.catchall {:try_start_1b .. :try_end_27} :catchall_48
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_8d
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
:goto_2c
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_57
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "\n"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_3b
.catchall {:try_start_27 .. :try_end_3b} :catchall_8a
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_3b} :catch_3c
goto :goto_2c
:catch_3c
move-exception v3
move-object v0, v1
:try_start_3e
:goto_3e
new-instance v6, Ltwitter4j/TwitterException;
invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v6
:try_end_48
.catchall {:try_start_3e .. :try_end_48} :catchall_48
:catchall_48
move-exception v6
:goto_49
if-eqz v5, :cond_4e
:try_start_4b
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:cond_4e
:goto_4e
:try_end_4e
.catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_86
if-eqz v0, :cond_53
:try_start_50
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:goto_53
:cond_53
:try_end_53
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_88
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V
throw v6
:cond_57
:try_start_57
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
sget-boolean v6, Ltwitter4j/internal/http/HttpResponse;->LOGGABLE:Z
if-eqz v6, :cond_68
const-string v6, "T4JHttpResposne"
iget-object v7, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_68
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
const/4 v6, 0x1
iput-boolean v6, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
:try_end_6e
.catchall {:try_start_57 .. :try_end_6e} :catchall_8a
.catch Ljava/io/IOException; {:try_start_57 .. :try_end_6e} :catch_3c
if-eqz v5, :cond_73
:try_start_70
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
:cond_73
:goto_73
:try_end_73
.catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_82
if-eqz v1, :cond_78
:try_start_75
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:goto_78
:cond_78
:try_end_78
.catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_84
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V
:cond_7b
iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
goto :goto_1a
:catch_7e
move-exception v7
goto :goto_12
:catch_80
move-exception v7
goto :goto_17
:catch_82
move-exception v6
goto :goto_73
:catch_84
move-exception v6
goto :goto_78
:catch_86
move-exception v7
goto :goto_4e
:catch_88
move-exception v7
goto :goto_53
:catchall_8a
move-exception v6
move-object v0, v1
goto :goto_49
:catch_8d
move-exception v3
goto :goto_3e
.end method
.method public abstract disconnect()V
.end method
.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public abstract getResponseHeaderFields()Ljava/util/Map;
.end method
.method public getStatusCode()I
.registers 2
iget v0, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "HttpResponse{statusCode="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", responseAsString=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", is="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", streamConsumed="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method