.class public final Lcom/lenovo/lps/reaper/sdk/c/c;
.super Lcom/lenovo/lps/reaper/sdk/c/g;
.field private static a:Z
.field private b:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c/g;-><init>()V
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/c;->b:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
return-void
.end method
.method public final a()V
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
sget-boolean v2, Lcom/lenovo/lps/reaper/sdk/c/c;->a:Z
if-eqz v2, :cond_12
const-string/jumbo v1, "DeviceIdSyncWithServerTask"
const-string/jumbo v2, "has executed this task."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
if-nez v0, :cond_28
:goto_11
return-void
:cond_12
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->B()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_26
const-string/jumbo v1, "DeviceIdSyncWithServerTask"
const-string/jumbo v2, "server url is null."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
:cond_26
move v0, v1
goto :goto_f
:cond_28
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;
move-result-object v0
const-string/jumbo v1, "DeviceIdSyncWithServerTask"
const-string/jumbo v2, "add device id sync task."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "DeviceIdSyncWithServerTask"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->B()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
:try_start_44
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c/c;->b:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
new-instance v2, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const-string/jumbo v3, "http.connection.timeout"
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v4
invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
const-string/jumbo v3, "http.socket.timeout"
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v4
invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
new-instance v3, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v3}, Lorg/apache/http/client/methods/HttpPost;-><init>()V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "sv"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->E()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "did"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->k()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "didt"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->m()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "appkey"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->f()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "vname"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->d()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "vcode"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->e()I
move-result v7
invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "channel"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->g()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "osv"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->n()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "lang"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->o()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "country"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->p()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "dm"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->q()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "manu"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->v()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v6, "reso"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->j()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v6, "UTF-8"
invoke-direct {v5, v4, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->B()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v4
invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V
const-string/jumbo v4, "Host"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->D()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V
invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v3, 0xc8
if-ne v2, v3, :cond_1ea
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
:try_end_17d
.catchall {:try_start_44 .. :try_end_17d} :catchall_207
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_17d} :catch_1d7
move-result-object v2
:try_start_17e
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;
move-result-object v3
const-string/jumbo v4, "did"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->e(Ljava/lang/String;)V
:try_end_191
.catchall {:try_start_17e .. :try_end_191} :catchall_207
.catch Ljava/lang/Exception; {:try_start_17e .. :try_end_191} :catch_1b7
:goto_191
const/4 v0, 0x1
:try_start_192
sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/c/c;->a:Z
const-string/jumbo v0, "DeviceIdSyncWithServerTask"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "DeviceIdSyncWithServerTask Success: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_1ae
:try_end_1ae
.catchall {:try_start_192 .. :try_end_1ae} :catchall_207
.catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1ae} :catch_1d7
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
goto/16 :goto_11
:catch_1b7
move-exception v0
:try_start_1b8
const-string/jumbo v3, "DeviceIdSyncWithServerTask"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "process response fail. "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_1d6
.catchall {:try_start_1b8 .. :try_end_1d6} :catchall_207
.catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1d6} :catch_1d7
goto :goto_191
:catch_1d7
move-exception v0
:try_start_1d8
const-string/jumbo v2, "DeviceIdSyncWithServerTask"
const-string/jumbo v3, "DeviceIdSyncWithServerTask fail."
invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1e1
.catchall {:try_start_1d8 .. :try_end_1e1} :catchall_207
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
goto/16 :goto_11
:try_start_1ea
:cond_1ea
const-string/jumbo v0, "DeviceIdSyncWithServerTask"
new-instance v3, Ljava/lang/StringBuilder;
const/16 v4, 0x40
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V
const-string/jumbo v4, "DeviceIdSyncWithServerTask fail, status code: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_206
.catchall {:try_start_1ea .. :try_end_206} :catchall_207
.catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_206} :catch_1d7
goto :goto_1ae
:catchall_207
move-exception v0
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
throw v0
.end method