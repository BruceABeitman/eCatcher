.class final Lcom/mobileapptracker/r;
.super Ljava/lang/Object;
.field private a:Lorg/apache/http/client/HttpClient;
.method public constructor <init>()V
.registers 7
const v5, 0xea60
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v1, Lorg/apache/http/conn/scheme/Scheme;
const-string v2, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v3
const/16 v4, 0x50
invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v1, Lorg/apache/http/conn/scheme/Scheme;
const-string v2, "https"
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v3
const/16 v4, 0x1bb
invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v1, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
const-string v2, "UTF-8"
invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
const/16 v2, 0x2000
invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
iput-object v0, p0, Lcom/mobileapptracker/r;->a:Lorg/apache/http/client/HttpClient;
return-void
.end method
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
.registers 12
const/4 v1, 0x0
if-eqz p2, :cond_9
invoke-virtual {p2}, Lorg/json/JSONObject;->length()I
move-result v0
if-nez v0, :cond_89
:try_start_9
:cond_9
iget-object v0, p0, Lcom/mobileapptracker/r;->a:Lorg/apache/http/client/HttpClient;
new-instance v2, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
:try_end_13
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_6d
move-result-object v0
:goto_14
if-eqz v0, :cond_67
:try_start_16
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v3
const-string v2, "X-MAT-Responder"
invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v4
if-eqz p3, :cond_3a
const-string v2, "MobileAppTracker"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Request completed with status "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_3a
new-instance v2, Ljava/io/BufferedReader;
new-instance v5, Ljava/io/InputStreamReader;
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
const-string v6, "UTF-8"
invoke-direct {v5, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
:goto_53
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_b0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\n"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_62
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_62} :catch_63
goto :goto_53
:catch_63
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_67
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:goto_6c
:cond_6c
return-object v0
:catch_6d
move-exception v0
if-eqz p3, :cond_84
const-string v2, "MobileAppTracker"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Request error with URL "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_84
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
move-object v0, v1
goto :goto_14
:try_start_89
:cond_89
new-instance v0, Lorg/apache/http/entity/StringEntity;
invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "UTF-8"
invoke-direct {v0, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "application/json"
invoke-virtual {v0, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
new-instance v2, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
iget-object v0, p0, Lcom/mobileapptracker/r;->a:Lorg/apache/http/client/HttpClient;
invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
:try_end_a6
.catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a6} :catch_a9
move-result-object v0
goto/16 :goto_14
:catch_a9
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
move-object v0, v1
goto/16 :goto_14
:try_start_b0
:cond_b0
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
new-instance v2, Lorg/json/JSONTokener;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
if-eqz p3, :cond_110
const-string v2, "MobileAppTracker"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Server response: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
:try_end_da
.catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_da} :catch_63
move-result v2
if-lez v2, :cond_110
:try_start_dd
const-string v2, "errors"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_136
const-string v2, "errors"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v2
if-eqz v2, :cond_136
const-string v2, "errors"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
const/4 v5, 0x0
invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v2
const-string v5, "MobileAppTracker"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Event was rejected by server with error: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_start_110
:goto_110
:try_end_110
.catch Lorg/json/JSONException; {:try_start_dd .. :try_end_110} :catch_1a0
.catch Ljava/lang/Exception; {:try_start_dd .. :try_end_110} :catch_63
:cond_110
invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v5, 0xc8
if-lt v2, v5, :cond_120
invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v5, 0x12b
if-le v2, v5, :cond_6c
:cond_120
invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
const/16 v2, 0x190
if-ne v0, v2, :cond_67
if-eqz v4, :cond_67
if-eqz p3, :cond_133
const-string v0, "MobileAppTracker"
const-string v2, "Request received 400 error from MAT server, won\'t be retried"
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_133
.catch Ljava/lang/Exception; {:try_start_110 .. :try_end_133} :catch_63
:cond_133
move-object v0, v1
goto/16 :goto_6c
:try_start_136
:cond_136
const-string v2, "log_action"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1b6
const-string v2, "log_action"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v5, "null"
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1b6
const-string v2, "log_action"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v5, "false"
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1b6
const-string v2, "log_action"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string v5, "conversion"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_110
const-string v5, "conversion"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string v5, "status"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_110
const-string v5, "status"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v6, "rejected"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1ad
const-string v5, "status_code"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v5, "MobileAppTracker"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Event was rejected by server: status code "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_19e
.catch Lorg/json/JSONException; {:try_start_136 .. :try_end_19e} :catch_1a0
.catch Ljava/lang/Exception; {:try_start_136 .. :try_end_19e} :catch_63
goto/16 :goto_110
:catch_1a0
move-exception v2
:try_start_1a1
const-string v5, "MobileAppTracker"
const-string v6, "Server response status could not be parsed"
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_1ab
.catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1ab} :catch_63
goto/16 :goto_110
:try_start_1ad
:cond_1ad
const-string v2, "MobileAppTracker"
const-string v5, "Event was accepted by server"
invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_110
:cond_1b6
const-string v2, "options"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_110
const-string v2, "options"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string v5, "conversion_status"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_110
const-string v5, "conversion_status"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v5, "MobileAppTracker"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Event was "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, " by server"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_1ec
.catch Lorg/json/JSONException; {:try_start_1ad .. :try_end_1ec} :catch_1a0
.catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1ec} :catch_63
goto/16 :goto_110
.end method