.class public abstract Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "HttpMultipartRequest.java"
.field private mEntity:Lcom/pinguo/Camera360Lib/network/MultipartEntity;
.method public constructor <init>(ILjava/lang/String;Lcom/pinguo/Camera360Lib/network/MultipartEntity;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, v0, p2}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V
iput-object p3, p0, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;->mEntity:Lcom/pinguo/Camera360Lib/network/MultipartEntity;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/pinguo/Camera360Lib/network/MultipartEntity;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V
iput-object p2, p0, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;->mEntity:Lcom/pinguo/Camera360Lib/network/MultipartEntity;
return-void
.end method
.method public getBody(Ljava/io/OutputStream;)V
.registers 9
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;->getParams()Ljava/util/Map;
move-result-object v2
invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_c
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_18
:try_start_12
iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;->mEntity:Lcom/pinguo/Camera360Lib/network/MultipartEntity;
invoke-virtual {v3, p1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V
:try_end_17
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_30
:goto_17
return-void
:cond_18
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
iget-object v6, p0, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;->mEntity:Lcom/pinguo/Camera360Lib/network/MultipartEntity;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v6, v3, v4}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:catch_30
move-exception v0
const-string/jumbo v3, "IOException writing to OutputStream"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_17
.end method
.method public getBody()[B
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getBodyContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;->mEntity:Lcom/pinguo/Camera360Lib/network/MultipartEntity;
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
return-object v0
.end method