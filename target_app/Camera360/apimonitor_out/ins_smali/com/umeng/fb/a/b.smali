.class public Lcom/umeng/fb/a/b;
.super Ljava/lang/Object;
.source "FbClient.java"
.field public static final a:Ljava/lang/String; = "http://feedback.umeng.com/feedback"
.field public static final b:Ljava/lang/String; = "http://feedback.umeng.com/feedback/reply"
.field public static final c:Ljava/lang/String; = "http://feedback.umeng.com/feedback/reply"
.field public static final d:Ljava/lang/String; = "http://feedback.umeng.com/feedback/feedbacks"
.field private static final e:Ljava/lang/String; = null
.field private static final g:I = 0x7530
.field private f:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/fb/a/b;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/umeng/fb/a/b;->f:Landroid/content/Context;
return-void
.end method
.method private a(Lorg/json/JSONObject;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/umeng/fb/a/b;->f:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/fb/c/a;->b(Landroid/content/Context;)Lorg/json/JSONObject;
move-result-object v1
sget-object v0, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "addRequestHeader: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v2
:goto_23
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_2a
:goto_29
return-void
:cond_2a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_37
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_38
goto :goto_23
:catch_38
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_29
.end method
.method private a(Lcom/umeng/fb/model/UserReply;)Z
.registers 6
:try_start_0
invoke-virtual {p1}, Lcom/umeng/fb/model/UserReply;->toJson()Lorg/json/JSONObject;
move-result-object v0
invoke-direct {p0, v0}, Lcom/umeng/fb/a/b;->a(Lorg/json/JSONObject;)V
invoke-direct {p0, v0}, Lcom/umeng/fb/a/b;->b(Lorg/json/JSONObject;)V
new-instance v1, Lcom/umeng/fb/a/c;
const-string/jumbo v2, "reply"
const-string/jumbo v3, "http://feedback.umeng.com/feedback/reply"
invoke-direct {v1, v2, v0, v3}, Lcom/umeng/fb/a/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/umeng/fb/a/b;->a(Lcom/umeng/fb/a/c;)Lcom/umeng/fb/a/d;
move-result-object v0
if-eqz v0, :cond_39
const-string/jumbo v1, "ok"
invoke-virtual {v0}, Lcom/umeng/fb/a/d;->a()Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v2, "state"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_30
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_35
move-result v0
if-eqz v0, :cond_39
const/4 v0, 0x1
:goto_34
return v0
:catch_35
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_39
const/4 v0, 0x0
goto :goto_34
.end method
.method private a(Lcom/umeng/fb/model/UserTitleReply;)Z
.registers 6
:try_start_0
invoke-virtual {p1}, Lcom/umeng/fb/model/UserTitleReply;->toJson()Lorg/json/JSONObject;
move-result-object v0
invoke-direct {p0, v0}, Lcom/umeng/fb/a/b;->a(Lorg/json/JSONObject;)V
invoke-direct {p0, v0}, Lcom/umeng/fb/a/b;->b(Lorg/json/JSONObject;)V
new-instance v1, Lcom/umeng/fb/a/c;
const-string/jumbo v2, "feedback"
const-string/jumbo v3, "http://feedback.umeng.com/feedback/feedbacks"
invoke-direct {v1, v2, v0, v3}, Lcom/umeng/fb/a/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/umeng/fb/a/b;->a(Lcom/umeng/fb/a/c;)Lcom/umeng/fb/a/d;
move-result-object v0
if-eqz v0, :cond_39
const-string/jumbo v1, "ok"
invoke-virtual {v0}, Lcom/umeng/fb/a/d;->a()Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v2, "state"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_30
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_35
move-result v0
if-eqz v0, :cond_39
const/4 v0, 0x1
:goto_34
return v0
:catch_35
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_39
const/4 v0, 0x0
goto :goto_34
.end method
.method private b(Lorg/json/JSONObject;)V
.registers 9
:try_start_0
iget-object v0, p0, Lcom/umeng/fb/a/b;->f:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUserInfoLastSyncAt()J
move-result-wide v0
iget-object v2, p0, Lcom/umeng/fb/a/b;->f:Landroid/content/Context;
invoke-static {v2}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;
move-result-object v2
invoke-virtual {v2}, Lcom/umeng/fb/model/Store;->getUserInfoLastUpdateAt()J
move-result-wide v2
sget-object v4, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "addUserInfoIfNotSynced: last_sync_at="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " last_update_at="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
cmp-long v0, v0, v2
if-gez v0, :cond_4c
iget-object v0, p0, Lcom/umeng/fb/a/b;->f:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUserInfo()Lcom/umeng/fb/model/UserInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/fb/model/UserInfo;->toJson()Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "userinfo"
invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_4c
:try_end_4c
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4c} :catch_4d
:cond_4c
return-void
:catch_4d
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_4c
.end method
.method public a(Lcom/umeng/fb/a/c;)Lcom/umeng/fb/a/d;
.registers 12
const/16 v9, 0x7530
const/4 v8, 0x1
const/4 v2, 0x0
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
const/16 v1, 0x3e8
invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I
move-result v3
iget-object v4, p1, Lcom/umeng/fb/a/c;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/umeng/fb/a/c;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/umeng/fb/a/c;->e:Lorg/json/JSONObject;
instance-of v5, p1, Lcom/umeng/fb/a/c;
if-nez v5, :cond_23
sget-object v0, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
const-string/jumbo v1, "request type error, request must be type of FbReportRequest"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
:goto_22
return-object v0
:cond_23
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
if-gt v5, v8, :cond_44
sget-object v0, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tInvalid baseUrl."
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
goto :goto_22
:cond_44
if-eqz v0, :cond_115
sget-object v5, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, ": post: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v6, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_start_83
new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v0, "UTF-8"
invoke-direct {v6, v5, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
:try_end_8b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_83 .. :try_end_8b} :catch_10e
new-instance v1, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v0
invoke-interface {v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
move-object v0, v1
check-cast v0, Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {v0, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
move-object v0, v1
:goto_9e
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v5
invoke-static {v5, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v5, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
const-wide/16 v6, 0x7530
invoke-static {v5, v6, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V
:try_start_b2
check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
const/16 v5, 0xc8
if-ne v1, v5, :cond_15a
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v1
sget-object v0, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "res :"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/umeng/fb/a/d;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v5}, Lcom/umeng/fb/a/d;-><init>(Lorg/json/JSONObject;)V
:try_end_eb
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b2 .. :try_end_eb} :catch_ed
.catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_eb} :catch_139
goto/16 :goto_22
:catch_ed
move-exception v0
sget-object v1, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tClientProtocolException,Failed to send message."
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
move-object v0, v2
goto/16 :goto_22
:catch_10e
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:cond_115
sget-object v0, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, ":\tget: "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
goto/16 :goto_9e
:catch_139
move-exception v0
sget-object v1, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ":\tIOException,Failed to send message."
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
move-object v0, v2
goto/16 :goto_22
:cond_15a
move-object v0, v2
goto/16 :goto_22
.end method
.method public a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.registers 13
const/4 v1, 0x0
const/16 v6, 0x7530
const/4 v4, 0x0
if-eqz p1, :cond_12
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-eqz v0, :cond_12
invoke-static {p3}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
move-object v0, v1
:cond_13
:goto_13
return-object v0
:cond_14
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1d
:cond_1d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_102
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v0
const/4 v3, 0x1
if-le v0, v3, :cond_3a
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
const-string/jumbo v5, ""
invoke-virtual {v2, v0, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
:cond_3a
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v0, "http://feedback.umeng.com/feedback/reply"
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v5, "?appkey="
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v5, "&feedback_id="
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p2}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_81
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "&startkey="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_81
sget-object v0, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v5, "getDevReply url: "
invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v0
invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
const-wide/16 v5, 0x7530
invoke-static {v0, v5, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
:try_start_b3
check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v3, 0xc8
if-ne v2, v3, :cond_137
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/umeng/fb/a/b;->e:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v5, "getDevReply resp: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v6, Lorg/json/JSONArray;
invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
move v5, v4
:goto_ed
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
:try_end_f0
.catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_f0} :catch_133
move-result v2
if-ge v5, v2, :cond_13
:try_start_f3
invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
move-result-object v7
move v3, v4
:goto_f8
invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
:try_end_fb
.catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_fb} :catch_12e
.catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fb} :catch_133
move-result v2
if-lt v3, v2, :cond_119
:goto_fe
add-int/lit8 v2, v5, 0x1
move v5, v2
goto :goto_ed
:cond_102
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_1d
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v0, ","
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_1d
:try_start_119
:cond_119
new-instance v2, Lcom/umeng/fb/model/DevReply;
invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v8
invoke-direct {v2, v8}, Lcom/umeng/fb/model/DevReply;-><init>(Lorg/json/JSONObject;)V
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_125
:try_end_125
.catch Lorg/json/JSONException; {:try_start_119 .. :try_end_125} :catch_129
.catch Ljava/lang/Exception; {:try_start_119 .. :try_end_125} :catch_133
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_f8
:catch_129
move-exception v2
:try_start_12a
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_12d
.catch Lorg/json/JSONException; {:try_start_12a .. :try_end_12d} :catch_12e
.catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12d} :catch_133
goto :goto_125
:catch_12e
move-exception v2
:try_start_12f
invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
:try_end_132
.catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_133
goto :goto_fe
:catch_133
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_137
move-object v0, v1
goto/16 :goto_13
.end method
.method public a(Lcom/umeng/fb/model/Reply;)Z
.registers 5
if-nez p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Lcom/umeng/fb/model/UserReply;
if-eqz v0, :cond_f
check-cast p1, Lcom/umeng/fb/model/UserReply;
invoke-direct {p0, p1}, Lcom/umeng/fb/a/b;->a(Lcom/umeng/fb/model/UserReply;)Z
move-result v0
goto :goto_3
:cond_f
instance-of v0, p1, Lcom/umeng/fb/model/UserTitleReply;
if-eqz v0, :cond_1a
check-cast p1, Lcom/umeng/fb/model/UserTitleReply;
invoke-direct {p0, p1}, Lcom/umeng/fb/a/b;->a(Lcom/umeng/fb/model/UserTitleReply;)Z
move-result v0
goto :goto_3
:cond_1a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Illegal argument: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ". reply must be "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-class v2, Lcom/umeng/fb/model/UserReply;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " or "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-class v2, Lcom/umeng/fb/model/UserTitleReply;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method