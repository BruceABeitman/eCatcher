.class public final Lcom/lenovo/lps/reaper/sdk/c/f;
.super Lcom/lenovo/lps/reaper/sdk/c/g;
.field private a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c/g;-><init>()V
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/f;->a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
return-void
.end method
.method public final a()V
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->z()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_18
const-string/jumbo v1, "ConfigurationUpdateTask"
const-string/jumbo v2, "server url is null."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_15
if-nez v0, :cond_1a
:goto_17
return-void
:cond_18
move v0, v1
goto :goto_15
:cond_1a
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;
move-result-object v0
const-string/jumbo v1, "ConfigurationUpdateTask"
const-string/jumbo v2, "add configuration update task."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "ConfigurationUpdateTask"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->z()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
:try_start_36
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c/f;->a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
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
const-string/jumbo v4, "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s"
const/16 v5, 0xe
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
sget-object v7, Lcom/lenovo/lps/reaper/sdk/b/c;->a:Lcom/lenovo/lps/reaper/sdk/b/c;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/b/c;->name()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->E()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x2
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->m()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x3
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->k()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x4
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->f()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x5
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->d()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x6
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->e()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x7
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->g()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/16 v6, 0x8
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->n()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/16 v6, 0x9
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->o()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/16 v6, 0xa
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->p()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/16 v6, 0xb
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->q()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/16 v6, 0xc
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->v()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/16 v6, 0xd
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->j()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
new-instance v5, Lorg/apache/http/entity/StringEntity;
invoke-direct {v5, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->z()Ljava/lang/String;
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
if-ne v2, v3, :cond_191
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
:try_end_119
.catchall {:try_start_36 .. :try_end_119} :catchall_1ae
.catch Ljava/lang/Exception; {:try_start_36 .. :try_end_119} :catch_169
move-result-object v2
:try_start_11a
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(Lorg/json/JSONArray;)V
:try_end_126
.catchall {:try_start_11a .. :try_end_126} :catchall_1ae
.catch Ljava/lang/Exception; {:try_start_11a .. :try_end_126} :catch_149
:try_start_126
:goto_126
const-string/jumbo v0, "ConfigurationUpdateTask"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "ConfigUpdate Success: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_140
:try_end_140
.catchall {:try_start_126 .. :try_end_140} :catchall_1ae
.catch Ljava/lang/Exception; {:try_start_126 .. :try_end_140} :catch_169
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
goto/16 :goto_17
:catch_149
move-exception v0
:try_start_14a
const-string/jumbo v3, "ConfigurationUpdateTask"
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
:try_end_168
.catchall {:try_start_14a .. :try_end_168} :catchall_1ae
.catch Ljava/lang/Exception; {:try_start_14a .. :try_end_168} :catch_169
goto :goto_126
:catch_169
move-exception v0
:try_start_16a
const-string/jumbo v2, "ConfigurationUpdateTask"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Get configuration fail. "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_188
.catchall {:try_start_16a .. :try_end_188} :catchall_1ae
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
goto/16 :goto_17
:try_start_191
:cond_191
const-string/jumbo v0, "ConfigurationUpdateTask"
new-instance v3, Ljava/lang/StringBuilder;
const/16 v4, 0x40
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V
const-string/jumbo v4, "Get configuration fail, status code: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1ad
.catchall {:try_start_191 .. :try_end_1ad} :catchall_1ae
.catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1ad} :catch_169
goto :goto_140
:catchall_1ae
move-exception v0
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
throw v0
.end method