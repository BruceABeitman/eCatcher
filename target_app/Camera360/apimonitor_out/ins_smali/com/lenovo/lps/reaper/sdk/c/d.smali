.class public final Lcom/lenovo/lps/reaper/sdk/c/d;
.super Lcom/lenovo/lps/reaper/sdk/c/g;
.field private a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.field private b:Lcom/lenovo/lps/reaper/sdk/g/b;
.field private c:Z
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/g/b;Z)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c/g;-><init>()V
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
iput-boolean p2, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->c:Z
return-void
.end method
.method private static a(Ljava/lang/String;)V
.registers 10
:try_start_0
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v4
const-string/jumbo v1, ""
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_58
const/4 v0, 0x0
move v2, v0
:goto_e
if-ge v2, v4, :cond_77
:try_start_10
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
:try_end_17
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_78
move-result-object v6
move-object v0, v1
:goto_19
:try_start_19
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_28
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_19
:cond_28
invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/e;->a()Lcom/lenovo/lps/reaper/sdk/message/e;
move-result-object v5
invoke-virtual {v5, v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/e;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_33
:try_end_33
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_38
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_e
:catch_38
move-exception v1
:goto_39
:try_start_39
const-string/jumbo v5, "MessageUploadTask"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Get Message Wrong. "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v5, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_57
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_57} :catch_58
goto :goto_33
:catch_58
move-exception v0
const-string/jumbo v1, "MessageUploadTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "process response fail. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_77
return-void
:catch_78
move-exception v0
move-object v8, v0
move-object v0, v1
move-object v1, v8
goto :goto_39
.end method
.method public final a()V
.registers 11
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->A()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_17
const-string/jumbo v1, "MessageUploadTask"
const-string/jumbo v2, "server url is null."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
move v1, v0
:cond_14
:goto_14
if-nez v1, :cond_30
:goto_16
return-void
:cond_17
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/e;->a()Lcom/lenovo/lps/reaper/sdk/message/e;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/message/e;->e()Z
move-result v2
if-nez v2, :cond_14
iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->c:Z
if-nez v2, :cond_14
const-string/jumbo v1, "MessageUploadTask"
const-string/jumbo v2, "network is not ok."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
move v1, v0
goto :goto_14
:cond_30
const-string/jumbo v1, "MessageUploadTask"
const-string/jumbo v2, "add message task."
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "MessageUploadTask"
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->A()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
:try_start_4a
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
new-instance v5, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const-string/jumbo v1, "http.connection.timeout"
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v5, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
const-string/jumbo v1, "http.socket.timeout"
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v5, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
new-instance v6, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v6}, Lorg/apache/http/client/methods/HttpPost;-><init>()V
const-string/jumbo v1, "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001"
const/16 v2, 0xe
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
sget-object v7, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Lcom/lenovo/lps/reaper/sdk/b/a;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/b/a;->name()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x1
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->E()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x2
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->m()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x3
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->k()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x4
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->f()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x5
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->d()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x6
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->e()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x7
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->g()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/16 v3, 0x8
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->n()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/16 v3, 0x9
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->o()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/16 v3, 0xa
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->p()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/16 v3, 0xb
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->q()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/16 v3, 0xc
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->v()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
const/16 v3, 0xd
iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/g/b;->j()Ljava/lang/String;
move-result-object v7
aput-object v7, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/e;->a()Lcom/lenovo/lps/reaper/sdk/message/e;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/message/e;->c()Ljava/util/concurrent/ConcurrentLinkedQueue;
move-result-object v2
new-instance v8, Ljava/util/LinkedList;
invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V
invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I
move-result v3
if-nez v3, :cond_1dc
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
new-instance v1, Lcom/lenovo/lps/reaper/sdk/message/a;
invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/message/a;-><init>()V
const-string/jumbo v1, "%d\u0001%s\u0001%s"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v7, 0x0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v2, v3
const/4 v3, 0x1
const-string/jumbo v7, ""
aput-object v7, v2, v3
const/4 v3, 0x2
const-string/jumbo v7, ""
aput-object v7, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_152
new-instance v1, Lorg/apache/http/entity/StringEntity;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
const-string/jumbo v0, "%s?dowload=%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/g/b;->A()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->c:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v0
invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V
const-string/jumbo v0, "Host"
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c/d;->b:Lcom/lenovo/lps/reaper/sdk/g/b;
invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/g/b;->D()Ljava/lang/String;
move-result-object v1
invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V
invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
const/16 v2, 0xc8
if-ne v1, v2, :cond_215
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/c/d;->a(Ljava/lang/String;)V
const-string/jumbo v1, "MessageUploadTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Message Update Success, and Get Result: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/e;->a()Lcom/lenovo/lps/reaper/sdk/message/e;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/e;->d()V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/e;->a()Lcom/lenovo/lps/reaper/sdk/message/e;
move-result-object v0
invoke-virtual {v0, v8}, Lcom/lenovo/lps/reaper/sdk/message/e;->a(Ljava/util/List;)V
:try_end_1d3
.catchall {:try_start_4a .. :try_end_1d3} :catchall_25a
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_1d3} :catch_232
:goto_1d3
invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
goto/16 :goto_16
:try_start_1dc
:cond_1dc
const-string/jumbo v3, "MessageUploadTask"
const-string/jumbo v9, "Sending Message..."
invoke-static {v3, v9}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;
move-result-object v9
move v2, v0
:goto_1ea
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_263
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/lps/reaper/sdk/message/a;
add-int/lit8 v3, v2, 0x1
if-lez v2, :cond_200
const-string/jumbo v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_200
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-string/jumbo v2, "MessageUploadTask"
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/a;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
move v2, v3
goto :goto_1ea
:cond_215
const-string/jumbo v0, "MessageUploadTask"
new-instance v2, Ljava/lang/StringBuilder;
const/16 v3, 0x40
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V
const-string/jumbo v3, "Get message fail, status code: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_231
.catchall {:try_start_1dc .. :try_end_231} :catchall_25a
.catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_231} :catch_232
goto :goto_1d3
:catch_232
move-exception v0
:try_start_233
const-string/jumbo v1, "MessageUploadTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Get Message fail. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_251
.catchall {:try_start_233 .. :try_end_251} :catchall_25a
invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
goto/16 :goto_16
:catchall_25a
move-exception v0
invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
throw v0
:cond_263
move-object v0, v1
goto/16 :goto_152
.end method