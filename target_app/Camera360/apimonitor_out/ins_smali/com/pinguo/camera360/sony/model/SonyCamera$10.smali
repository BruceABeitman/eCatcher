.class  Lcom/pinguo/camera360/sony/model/SonyCamera$10;
.super Ljava/lang/Thread;
.source "SonyCamera.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
.field private final synthetic val$direction:Ljava/lang/String;
.field private final synthetic val$movement:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$10;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$10;->val$direction:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$10;->val$movement:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 8
:try_start_0
iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$10;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
invoke-static {v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$10;->val$direction:Ljava/lang/String;
iget-object v6, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$10;->val$movement:Ljava/lang/String;
invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->actZoom(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v4, "result"
invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I
move-result v2
if-eqz v2, :cond_33
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "actZoom: error: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_33
:cond_33
:try_end_33
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_34
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_51
return-void
:catch_34
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "actZoom: IOException: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_33
:catch_51
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "actZoom: JSON format error."
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_33
.end method