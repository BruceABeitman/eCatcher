.class  Lcom/faceplusplus/api/Utils$1;
.super Ljava/lang/Thread;
.source "Utils.java"
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$id:Ljava/lang/String;
.field private final synthetic val$secret:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/faceplusplus/api/Utils$1;->val$context:Landroid/content/Context;
iput-object p2, p0, Lcom/faceplusplus/api/Utils$1;->val$id:Ljava/lang/String;
iput-object p3, p0, Lcom/faceplusplus/api/Utils$1;->val$secret:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 13
:try_start_0
iget-object v8, p0, Lcom/faceplusplus/api/Utils$1;->val$context:Landroid/content/Context;
#calls: Lcom/faceplusplus/api/Utils;->getLogString(Landroid/content/Context;)Ljava/lang/String;
invoke-static {v8}, Lcom/faceplusplus/api/Utils;->access$0(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v1, Lorg/apache/http/client/methods/HttpPost;
invoke-static {}, Lcom/faceplusplus/api/Utils;->access$1()Ljava/lang/String;
move-result-object v8
invoke-direct {v1, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
const-wide/16 v10, 0x3e8
div-long v6, v8, v10
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v9, "partner_id"
iget-object v10, p0, Lcom/faceplusplus/api/Utils$1;->val$id:Ljava/lang/String;
invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v8, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v9, "timestamp"
new-instance v10, Ljava/lang/StringBuilder;
invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v8, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v9, "serial"
iget-object v10, p0, Lcom/faceplusplus/api/Utils$1;->val$id:Ljava/lang/String;
iget-object v11, p0, Lcom/faceplusplus/api/Utils$1;->val$secret:Ljava/lang/String;
#calls: Lcom/faceplusplus/api/Utils;->getSerial(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
invoke-static {v10, v11, v6, v7}, Lcom/faceplusplus/api/Utils;->access$2(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
move-result-object v10
invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v8, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v9, "log"
iget-object v10, p0, Lcom/faceplusplus/api/Utils$1;->val$context:Landroid/content/Context;
#calls: Lcom/faceplusplus/api/Utils;->getLogString(Landroid/content/Context;)Ljava/lang/String;
invoke-static {v10}, Lcom/faceplusplus/api/Utils;->access$0(Landroid/content/Context;)Ljava/lang/String;
move-result-object v10
invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v9, "UTF-8"
invoke-direct {v8, v5, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v1, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-virtual {v8, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v8
invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v8
const/16 v9, 0xc8
if-ne v8, v9, :cond_8
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v8
#calls: Lcom/faceplusplus/api/Utils;->getJSONFromHttpEntity(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
invoke-static {v8}, Lcom/faceplusplus/api/Utils;->access$3(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
move-result-object v3
const-string/jumbo v8, "status"
invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v8
const/4 v9, 0x1
if-ne v8, v9, :cond_8
iget-object v8, p0, Lcom/faceplusplus/api/Utils$1;->val$context:Landroid/content/Context;
#calls: Lcom/faceplusplus/api/Utils;->clearAll(Landroid/content/Context;)V
invoke-static {v8}, Lcom/faceplusplus/api/Utils;->access$4(Landroid/content/Context;)V
:try_end_9f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a1
goto/16 :goto_8
:catch_a1
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_8
.end method