.class  Lcom/pinguo/share/local/LocalShareModel$2;
.super Landroid/os/AsyncTask;
.source "LocalShareModel.java"
.field final synthetic this$0:Lcom/pinguo/share/local/LocalShareModel;
.field private final synthetic val$activity:Landroid/app/Activity;
.field private final synthetic val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.method constructor <init>(Lcom/pinguo/share/local/LocalShareModel;Landroid/app/Activity;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
iput-object p2, p0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
iput-object p3, p0, Lcom/pinguo/share/local/LocalShareModel$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
iget-object v1, p0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v0, v1}, Lcom/pinguo/share/local/LocalShareModel;->process(Landroid/app/Activity;)V
const/4 v0, 0x0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Object;)V
.registers 22
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareProcessCancelled:Z
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$1(Lcom/pinguo/share/local/LocalShareModel;)Z
move-result v1
if-eqz v1, :cond_29
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
const/4 v2, 0x0
iput-object v2, v1, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
const/4 v2, 0x0
iput-object v2, v1, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
const/4 v2, 0x0
#setter for: Lcom/pinguo/share/local/LocalShareModel;->mShareProcessing:Z
invoke-static {v1, v2}, Lcom/pinguo/share/local/LocalShareModel;->access$3(Lcom/pinguo/share/local/LocalShareModel;Z)V
:goto_28
return-void
:cond_29
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v9, v1, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v3, v1, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-boolean v0, v1, Lcom/pinguo/share/ShareInfo;->isAudioFile:Z
move/from16 v19, v0
if-eqz v3, :cond_de
const-string/jumbo v1, "null"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_de
const/16 v18, 0x1
:goto_56
if-eqz v9, :cond_e2
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_e2
const/16 v17, 0x1
:goto_60
invoke-static {}, Lcom/pinguo/share/local/LocalShareModel;->access$4()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v4, "img path:"
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v4}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v4
iget-object v4, v4, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v4, "imgurl:"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v4}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v4
iget-object v4, v4, Lcom/pinguo/share/ShareInfo;->imageUrl:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v4, ",isAudioFile:"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
if-nez v17, :cond_e6
if-nez v18, :cond_e6
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
if-eqz v1, :cond_be
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_be
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->cancel()V
:cond_be
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
const/4 v2, 0x0
iput-object v2, v1, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
const/4 v2, 0x0
iput-object v2, v1, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
const/4 v2, 0x0
#setter for: Lcom/pinguo/share/local/LocalShareModel;->mShareProcessing:Z
invoke-static {v1, v2}, Lcom/pinguo/share/local/LocalShareModel;->access$3(Lcom/pinguo/share/local/LocalShareModel;Z)V
goto/16 :goto_28
:cond_de
const/16 v18, 0x0
goto/16 :goto_56
:cond_e2
const/16 v17, 0x0
goto/16 :goto_60
:cond_e6
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v2, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;
if-ne v1, v2, :cond_1a9
invoke-static {}, Lcom/pinguo/share/local/LocalShareModel;->access$4()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "wx share"
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v19, :cond_16f
if-eqz v18, :cond_16f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080049
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f08004a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v2}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
const/4 v4, 0x0
invoke-static {v2, v4}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v2
const/4 v4, 0x0
const/4 v7, 0x1
invoke-static/range {v1 .. v7}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForChats(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
:goto_138
:cond_138
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
if-eqz v1, :cond_14f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_14f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->cancel()V
:cond_14f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
const/4 v2, 0x0
iput-object v2, v1, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
const/4 v2, 0x0
iput-object v2, v1, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
const/4 v2, 0x0
#setter for: Lcom/pinguo/share/local/LocalShareModel;->mShareProcessing:Z
invoke-static {v1, v2}, Lcom/pinguo/share/local/LocalShareModel;->access$3(Lcom/pinguo/share/local/LocalShareModel;Z)V
goto/16 :goto_28
:cond_16f
if-eqz v17, :cond_18c
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v8
const/4 v10, 0x1
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
invoke-static/range {v7 .. v13}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForChats(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
goto :goto_138
:cond_18c
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v11
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v16, 0x0
move-object v12, v3
invoke-static/range {v10 .. v16}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForChats(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
goto :goto_138
:cond_1a9
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v2, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;
if-ne v1, v2, :cond_239
invoke-static {}, Lcom/pinguo/share/local/LocalShareModel;->access$4()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "wx friends share"
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v19, :cond_1fd
if-eqz v18, :cond_1fd
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080049
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f08004a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v2}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
const/4 v4, 0x0
invoke-static {v2, v4}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v2
const/4 v4, 0x0
const/4 v7, 0x1
invoke-static/range {v1 .. v7}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForFriends(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
goto/16 :goto_138
:cond_1fd
if-eqz v17, :cond_21b
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v8
const/4 v10, 0x1
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
invoke-static/range {v7 .. v13}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForFriends(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
goto/16 :goto_138
:cond_21b
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
move-result-object v11
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v16, 0x0
move-object v12, v3
invoke-static/range {v10 .. v16}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForFriends(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
goto/16 :goto_138
:cond_239
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->this$0:Lcom/pinguo/share/local/LocalShareModel;
#getter for: Lcom/pinguo/share/local/LocalShareModel;->mShareInfo:Lcom/pinguo/share/ShareInfo;
invoke-static {v1}, Lcom/pinguo/share/local/LocalShareModel;->access$2(Lcom/pinguo/share/local/LocalShareModel;)Lcom/pinguo/share/ShareInfo;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;
sget-object v2, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;
if-ne v1, v2, :cond_138
invoke-static {}, Lcom/pinguo/share/local/LocalShareModel;->access$4()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "qq share"
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v18, :cond_2a6
if-eqz v19, :cond_287
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f08004b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f08004d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
:goto_273
new-instance v10, Lcom/pinguo/share/local/LocalQQShare;
invoke-direct {v10}, Lcom/pinguo/share/local/LocalQQShare;-><init>()V
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
const/4 v12, 0x0
move-object v13, v5
move-object v14, v6
move-object v15, v9
move-object/from16 v16, v3
invoke-virtual/range {v10 .. v16}, Lcom/pinguo/share/local/LocalQQShare;->sharePicture(Landroid/app/Activity;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_138
:cond_287
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f08004b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f08004c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
goto :goto_273
:cond_2a6
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/local/LocalShareModel$2;->val$activity:Landroid/app/Activity;
const v4, 0x7f08003d
invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
goto/16 :goto_138
.end method