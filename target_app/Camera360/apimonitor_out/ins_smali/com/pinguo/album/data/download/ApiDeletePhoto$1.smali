.class  Lcom/pinguo/album/data/download/ApiDeletePhoto$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "ApiDeletePhoto.java"
.field final synthetic this$0:Lcom/pinguo/album/data/download/ApiDeletePhoto;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.method constructor <init>(Lcom/pinguo/album/data/download/ApiDeletePhoto;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->this$0:Lcom/pinguo/album/data/download/ApiDeletePhoto;
iput-object p4, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 6
iget-object v3, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->this$0:Lcom/pinguo/album/data/download/ApiDeletePhoto;
#getter for: Lcom/pinguo/album/data/download/ApiDeletePhoto;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->access$0(Lcom/pinguo/album/data/download/ApiDeletePhoto;)Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/album/utils/AlbumConstants;->buildCommonRequestParam(Landroid/content/Context;)Ljava/util/Map;
move-result-object v0
const/4 v1, 0x0
:goto_b
iget-object v3, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->this$0:Lcom/pinguo/album/data/download/ApiDeletePhoto;
#getter for: Lcom/pinguo/album/data/download/ApiDeletePhoto;->mIds:[Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->access$1(Lcom/pinguo/album/data/download/ApiDeletePhoto;)[Ljava/lang/String;
move-result-object v3
array-length v3, v3
if-lt v1, v3, :cond_1f
invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "sig"
invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
:cond_1f
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "pids["
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "]"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->this$0:Lcom/pinguo/album/data/download/ApiDeletePhoto;
#getter for: Lcom/pinguo/album/data/download/ApiDeletePhoto;->mIds:[Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->access$1(Lcom/pinguo/album/data/download/ApiDeletePhoto;)[Ljava/lang/String;
move-result-object v4
aget-object v4, v4, v1
invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_b
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 5
invoke-static {}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->access$2()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Url:http://cloud.camera360.com/mobile/picture/delete | e"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->this$0:Lcom/pinguo/album/data/download/ApiDeletePhoto;
iget-object v1, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/album/data/download/ApiDeletePhoto;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->access$4(Lcom/pinguo/album/data/download/ApiDeletePhoto;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method protected onResponse(Lcom/pinguo/album/data/download/ApiDeletePhoto$Response;)V
.registers 5
invoke-static {}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->access$2()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Url:http://cloud.camera360.com/mobile/picture/delete | onResponse"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Lcom/pinguo/album/data/download/ApiDeletePhoto$Response;->status:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->this$0:Lcom/pinguo/album/data/download/ApiDeletePhoto;
iget-object v1, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/album/data/download/ApiDeletePhoto;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->access$3(Lcom/pinguo/album/data/download/ApiDeletePhoto;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/album/data/download/ApiDeletePhoto$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;->onResponse(Lcom/pinguo/album/data/download/ApiDeletePhoto$Response;)V
return-void
.end method