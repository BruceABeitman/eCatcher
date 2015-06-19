.class  Lcom/pinguo/share/local/LocalCloudShareModel$3;
.super Landroid/os/AsyncTask;
.source "LocalCloudShareModel.java"
.field final synthetic this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
.field private final synthetic val$activity:Landroid/app/Activity;
.field private final synthetic val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.field private final synthetic val$siteCode:Ljava/lang/String;
.field private final synthetic val$title:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/share/local/LocalCloudShareModel;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V
.registers 6
iput-object p1, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
iput-object p2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
iput-object p3, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$title:Ljava/lang/String;
iput-object p4, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$siteCode:Ljava/lang/String;
iput-object p5, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel$3;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
.registers 11
const/4 v3, 0x0
iget-object v4, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessCancelled:Z
invoke-static {v4}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$4(Lcom/pinguo/share/local/LocalCloudShareModel;)Z
move-result v4
if-eqz v4, :cond_b
const/4 v4, 0x0
:goto_a
return-object v4
:cond_b
:try_start_b
iget-object v4, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-static {v4}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
sget-object v6, Lcom/pinguo/share/ShareConstants;->HOST_CLOUD:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/mobile/share/getPhotoWallLinks"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v6}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$title:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$siteCode:Ljava/lang/String;
invoke-virtual {v4, v5, v6, v7, v8}, Lcom/pinguo/share/net/ServiceConnection;->getPhotoWallLinks(Ljava/lang/String;Lcom/pinguo/share/CloudShareInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$2()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "get photoWallUrl photoWallResult:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "200"
const-string/jumbo v5, "status"
invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6f
const-string/jumbo v4, "data"
invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v4
const-string/jumbo v5, "puburl"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_6e
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_6e} :catch_71
move-result-object v3
:goto_6f
:cond_6f
move-object v4, v3
goto :goto_a
:catch_71
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v3, 0x0
goto :goto_6f
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel$3;->onPostExecute(Ljava/lang/String;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/String;)V
.registers 13
invoke-static {}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$2()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "get photoWallUrl:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessCancelled:Z
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$4(Lcom/pinguo/share/local/LocalCloudShareModel;)Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/pinguo/share/CloudShareInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
const/4 v2, 0x0
#setter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessing:Z
invoke-static {v0, v2}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$3(Lcom/pinguo/share/local/LocalCloudShareModel;Z)V
:goto_2f
return-void
:cond_30
if-eqz p1, :cond_184
const/4 v5, 0x0
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v2, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;
if-ne v0, v2, :cond_93
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z
move-result v0
if-eqz v0, :cond_58
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f08004a
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
:cond_58
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
iget-object v2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v2}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/share/CloudShareInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;
move-result-object v2
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v1
const/4 v3, 0x0
iget-object v4, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$title:Ljava/lang/String;
const/4 v6, 0x1
move-object v2, p1
invoke-static/range {v0 .. v6}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForChats(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
:cond_71
:goto_71
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
if-eqz v0, :cond_82
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_82
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->cancel()V
:cond_82
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/pinguo/share/CloudShareInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
const/4 v2, 0x0
#setter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessing:Z
invoke-static {v0, v2}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$3(Lcom/pinguo/share/local/LocalCloudShareModel;Z)V
goto :goto_2f
:cond_93
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v2, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;
if-ne v0, v2, :cond_d2
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z
move-result v0
if-eqz v0, :cond_b8
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f08004a
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
:cond_b8
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
iget-object v2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v2}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/share/CloudShareInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;
move-result-object v2
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v1
const/4 v3, 0x0
iget-object v4, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$title:Ljava/lang/String;
const/4 v6, 0x1
move-object v2, p1
invoke-static/range {v0 .. v6}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForFriends(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
goto :goto_71
:cond_d2
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v2, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;
if-ne v0, v2, :cond_11d
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z
move-result v0
if-eqz v0, :cond_10f
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f08004d
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
:goto_f7
new-instance v1, Lcom/pinguo/share/local/LocalQQShare;
invoke-direct {v1}, Lcom/pinguo/share/local/LocalQQShare;-><init>()V
iget-object v2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
const/4 v3, 0x0
iget-object v4, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$title:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
iget-object v6, v0, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;
move-object v7, p1
invoke-virtual/range {v1 .. v7}, Lcom/pinguo/share/local/LocalQQShare;->sharePicture(Landroid/app/Activity;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_71
:cond_10f
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f080039
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
goto :goto_f7
:cond_11d
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v2, Lcom/pinguo/share/ShareType;->LOCAL_SMS:Lcom/pinguo/share/ShareType;
if-ne v0, v2, :cond_71
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;
#getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z
move-result v0
if-eqz v0, :cond_176
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f08004d
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
:goto_142
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ". "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
const-string/jumbo v0, "smsto:"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v10
new-instance v8, Landroid/content/Intent;
const-string/jumbo v0, "android.intent.action.SENDTO"
invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const-string/jumbo v0, "sms_body"
invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_71
:cond_176
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f080039
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
goto :goto_142
:cond_184
iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
iget-object v2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$3;->val$activity:Landroid/app/Activity;
const v3, 0x7f08003d
invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
goto/16 :goto_71
.end method