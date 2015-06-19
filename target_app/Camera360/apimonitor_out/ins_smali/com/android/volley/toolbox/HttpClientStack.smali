.class public Lcom/android/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;
.source "HttpClientStack.java"
.implements Lcom/android/volley/toolbox/HttpStack;
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"
.field protected final mClient:Lorg/apache/http/client/HttpClient;
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;
return-void
.end method
.method private static addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
.registers 5
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_f
return-void
:cond_f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
.end method
.method static createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
.registers 9
invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I
move-result v5
packed-switch v5, :pswitch_data_b6
new-instance v5, Ljava/lang/IllegalStateException;
const-string/jumbo v6, "Unknown request method."
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:pswitch_10
invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBody()[B
move-result-object v2
if-eqz v2, :cond_32
new-instance v3, Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "Content-Type"
invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;
invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:goto_31
return-object v3
:cond_32
new-instance v3, Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
goto :goto_31
:pswitch_3c
new-instance v3, Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
goto :goto_31
:pswitch_46
new-instance v3, Lorg/apache/http/client/methods/HttpDelete;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V
goto :goto_31
:pswitch_50
new-instance v3, Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "Content-Type"
invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v3, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
goto :goto_31
:pswitch_67
new-instance v4, Lorg/apache/http/client/methods/HttpPut;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "Content-Type"
invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
move-object v3, v4
goto :goto_31
:pswitch_7f
new-instance v3, Lorg/apache/http/client/methods/HttpHead;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V
goto :goto_31
:pswitch_89
new-instance v3, Lorg/apache/http/client/methods/HttpOptions;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V
goto :goto_31
:pswitch_93
new-instance v3, Lorg/apache/http/client/methods/HttpTrace;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V
goto :goto_31
:pswitch_9d
new-instance v1, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "Content-Type"
invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;
move-result-object v6
invoke-virtual {v1, v5, v6}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
move-object v3, v1
goto/16 :goto_31
:pswitch_data_b6
.packed-switch -0x1
:pswitch_10
:pswitch_3c
:pswitch_50
:pswitch_67
:pswitch_46
:pswitch_7f
:pswitch_89
:pswitch_93
:pswitch_9d
.end packed-switch
.end method
.method private static getPostParameterPairs(Ljava/util/Map;)Ljava/util/List;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/Map;->size()I
move-result v2
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_11
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_18
return-object v1
:cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-direct {v4, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
.end method
.method private static setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
.registers 4
invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;
invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
:cond_e
return-void
.end method
.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
.registers 2
return-void
.end method
.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
.registers 7
invoke-static {p1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
move-result-object v1
invoke-static {v1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;
move-result-object v3
invoke-static {v1, v3}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
invoke-virtual {p0, v1}, Lcom/android/volley/toolbox/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v0
invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I
move-result v2
const/16 v3, 0x1388
invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
iget-object v3, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;
invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v3
return-object v3
.end method