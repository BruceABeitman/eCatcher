.class public Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;
.super Ljava/lang/Object;
.source "ThirdRequestConsole.java"
.field private static final NET_TIME_OUT:I = 0x2710
.field private mClient:Lorg/apache/http/client/HttpClient;
.field private mRequestData:Ljava/util/List;
.field private strResponse:Ljava/lang/String;
.field private strUrl:Ljava/lang/String;
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole$MySSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->mClient:Lorg/apache/http/client/HttpClient;
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->mRequestData:Ljava/util/List;
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->strUrl:Ljava/lang/String;
return-void
.end method
.method public getResponse()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->strResponse:Ljava/lang/String;
return-object v0
.end method
.method public send()Z
.registers 7
const/4 v3, 0x0
:try_start_1
new-instance v1, Lorg/apache/http/client/methods/HttpPost;
iget-object v4, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->strUrl:Ljava/lang/String;
invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
iget-object v5, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->mRequestData:Ljava/util/List;
invoke-direct {v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
iget-object v4, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->mClient:Lorg/apache/http/client/HttpClient;
invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v4
invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole;->strResponse:Ljava/lang/String;
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v4
invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
:try_end_29
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_29} :catch_30
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_35
move-result v4
const/16 v5, 0xc8
if-ne v4, v5, :cond_2f
const/4 v3, 0x1
:goto_2f
:cond_2f
return v3
:catch_30
move-exception v0
invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
goto :goto_2f
:catch_35
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2f
.end method