.class  Lcom/tencent/weiyun/FileManager$UploadFileImp$1;
.super Landroid/os/Handler;
.source "ProGuard"
.field final synthetic this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
.field final synthetic val$this$0:Lcom/tencent/weiyun/FileManager;
.method constructor <init>(Lcom/tencent/weiyun/FileManager$UploadFileImp;Landroid/os/Looper;Lcom/tencent/weiyun/FileManager;)V
.registers 4
iput-object p1, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
iput-object p3, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->val$this$0:Lcom/tencent/weiyun/FileManager;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 8
const/4 v5, 0x0
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_a0
iget-object v0, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
#getter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/weiyun/IUploadFileCallBack;
invoke-static {v0}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$000(Lcom/tencent/weiyun/FileManager$UploadFileImp;)Lcom/tencent/weiyun/IUploadFileCallBack;
move-result-object v1
new-instance v2, Lcom/tencent/tauth/UiError;
iget v3, p1, Landroid/os/Message;->what:I
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-direct {v2, v3, v0, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/tencent/weiyun/IUploadFileCallBack;->onError(Lcom/tencent/tauth/UiError;)V
:goto_1a
return-void
:pswitch_1b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
:try_start_1f
const-string/jumbo v1, "ret"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_51
iget-object v2, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
#getter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/weiyun/IUploadFileCallBack;
invoke-static {v2}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$000(Lcom/tencent/weiyun/FileManager$UploadFileImp;)Lcom/tencent/weiyun/IUploadFileCallBack;
move-result-object v2
new-instance v3, Lcom/tencent/tauth/UiError;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
const/4 v4, 0x0
invoke-direct {v3, v1, v0, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v3}, Lcom/tencent/weiyun/IUploadFileCallBack;->onError(Lcom/tencent/tauth/UiError;)V
:try_end_3b
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3b} :catch_3c
goto :goto_1a
:catch_3c
move-exception v0
iget-object v1, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
#getter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/weiyun/IUploadFileCallBack;
invoke-static {v1}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$000(Lcom/tencent/weiyun/FileManager$UploadFileImp;)Lcom/tencent/weiyun/IUploadFileCallBack;
move-result-object v1
new-instance v2, Lcom/tencent/tauth/UiError;
const/4 v3, -0x4
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v3, v0, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/tencent/weiyun/IUploadFileCallBack;->onError(Lcom/tencent/tauth/UiError;)V
goto :goto_1a
:try_start_51
:cond_51
const-string/jumbo v1, "data"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "csum"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
invoke-static {v1}, Lcom/tencent/utils/DataConvert;->string2bytes(Ljava/lang/String;)[B
move-result-object v1
#setter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mUKey:[B
invoke-static {v2, v1}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$102(Lcom/tencent/weiyun/FileManager$UploadFileImp;[B)[B
iget-object v1, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
const-string/jumbo v2, "host"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
#setter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mHost:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$202(Lcom/tencent/weiyun/FileManager$UploadFileImp;Ljava/lang/String;)Ljava/lang/String;
:try_end_74
.catch Ljava/lang/Exception; {:try_start_51 .. :try_end_74} :catch_3c
iget-object v0, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
#getter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/weiyun/IUploadFileCallBack;
invoke-static {v0}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$000(Lcom/tencent/weiyun/FileManager$UploadFileImp;)Lcom/tencent/weiyun/IUploadFileCallBack;
move-result-object v0
invoke-interface {v0}, Lcom/tencent/weiyun/IUploadFileCallBack;->onUploadStart()V
iget-object v0, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
#calls: Lcom/tencent/weiyun/FileManager$UploadFileImp;->doUpload()V
invoke-static {v0}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$300(Lcom/tencent/weiyun/FileManager$UploadFileImp;)V
goto :goto_1a
:pswitch_83
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
#getter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/weiyun/IUploadFileCallBack;
invoke-static {v1}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$000(Lcom/tencent/weiyun/FileManager$UploadFileImp;)Lcom/tencent/weiyun/IUploadFileCallBack;
move-result-object v1
invoke-interface {v1, v0}, Lcom/tencent/weiyun/IUploadFileCallBack;->onUploadProgress(I)V
goto :goto_1a
:pswitch_95
iget-object v0, p0, Lcom/tencent/weiyun/FileManager$UploadFileImp$1;->this$1:Lcom/tencent/weiyun/FileManager$UploadFileImp;
#getter for: Lcom/tencent/weiyun/FileManager$UploadFileImp;->mCallback:Lcom/tencent/weiyun/IUploadFileCallBack;
invoke-static {v0}, Lcom/tencent/weiyun/FileManager$UploadFileImp;->access$000(Lcom/tencent/weiyun/FileManager$UploadFileImp;)Lcom/tencent/weiyun/IUploadFileCallBack;
move-result-object v0
invoke-interface {v0}, Lcom/tencent/weiyun/IUploadFileCallBack;->onUploadSuccess()V
goto/16 :goto_1a
:pswitch_data_a0
.packed-switch 0x0
:pswitch_1b
:pswitch_83
:pswitch_95
.end packed-switch
.end method