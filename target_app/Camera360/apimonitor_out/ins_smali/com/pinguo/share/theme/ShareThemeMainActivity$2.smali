.class  Lcom/pinguo/share/theme/ShareThemeMainActivity$2;
.super Landroid/os/Handler;
.source "ShareThemeMainActivity.java"
.field final synthetic this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
.method constructor <init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 15
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10001
if-eq v10, v11, :cond_38
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10002
if-ne v10, v11, :cond_39
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
if-eqz v10, :cond_33
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v10
if-eqz v10, :cond_33
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
invoke-virtual {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->isFinishing()Z
move-result v10
if-nez v10, :cond_33
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_33
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#calls: Lcom/pinguo/share/theme/ShareThemeMainActivity;->showNewAlertInformation()V
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$9(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
:cond_38
:goto_38
return-void
:cond_39
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10003
if-ne v10, v11, :cond_6b
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
if-eqz v10, :cond_65
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v10
if-eqz v10, :cond_65
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
invoke-virtual {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->isFinishing()Z
move-result v10
if-nez v10, :cond_65
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_65
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#calls: Lcom/pinguo/share/theme/ShareThemeMainActivity;->showNewAlertInformation()V
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$9(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
goto :goto_38
:cond_6b
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10009
if-ne v10, v11, :cond_b6
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
if-eqz v10, :cond_97
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v10
if-eqz v10, :cond_97
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
invoke-virtual {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->isFinishing()Z
move-result v10
if-nez v10, :cond_97
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$8(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V
:cond_97
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mAdapter:Lcom/pinguo/share/theme/ShareThemeAdapter;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$10(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ShareThemeAdapter;
move-result-object v10
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLastSelectedTemplateId:I
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$11(Lcom/pinguo/share/theme/ShareThemeMainActivity;)I
move-result v11
invoke-virtual {v10, v11}, Lcom/pinguo/share/theme/ShareThemeAdapter;->setSelectedId(I)V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mGridView:Landroid/widget/GridView;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$12(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/widget/GridView;
move-result-object v10
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mAdapter:Lcom/pinguo/share/theme/ShareThemeAdapter;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$10(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ShareThemeAdapter;
move-result-object v11
invoke-virtual {v10, v11}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
goto :goto_38
:cond_b6
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10008
if-eq v10, v11, :cond_38
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10004
if-ne v10, v11, :cond_13e
iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDownloaded()V
new-instance v10, Ljava/lang/StringBuilder;
sget-object v11, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "/"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
const/4 v0, 0x0
new-instance v10, Ljava/io/File;
invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_10e
invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_fd
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;
move-result-object v10
if-eqz v10, :cond_38
if-eqz v0, :cond_115
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;
move-result-object v10
invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_38
:cond_10e
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mFailLoadingBitmap:Landroid/graphics/Bitmap;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$4(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_fd
:cond_115
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;
move-result-object v10
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mFailLoadingBitmap:Landroid/graphics/Bitmap;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$4(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;
move-result-object v11
invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
new-instance v2, Ljava/io/File;
invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_38
invoke-virtual {v2}, Ljava/io/File;->delete()Z
move-result v10
if-nez v10, :cond_38
const-string/jumbo v10, "tag"
const-string/jumbo v11, "Delete file failed!"
invoke-static {v10, v11}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_38
:cond_13e
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10005
if-ne v10, v11, :cond_161
iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDownloaded()V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mFailLoadingBitmap:Landroid/graphics/Bitmap;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$4(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;
move-result-object v10
if-eqz v10, :cond_38
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;
move-result-object v10
invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_38
:cond_161
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10006
if-ne v10, v11, :cond_184
iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->setDownloaded()V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mFailLoadingBitmap:Landroid/graphics/Bitmap;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$4(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;
move-result-object v10
if-eqz v10, :cond_38
invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;
move-result-object v10
invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_38
:cond_184
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10007
if-eq v10, v11, :cond_38
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10010
if-ne v10, v11, :cond_22a
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v10, Lcom/pinguo/share/theme/ThemeXMLStruct;
#setter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11, v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$1(Lcom/pinguo/share/theme/ShareThemeMainActivity;Lcom/pinguo/share/theme/ThemeXMLStruct;)V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
const/4 v11, 0x1
#setter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->nCurrentDownloadType:I
invoke-static {v10, v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$5(Lcom/pinguo/share/theme/ShareThemeMainActivity;I)V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$6(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V
new-instance v10, Ljava/lang/StringBuilder;
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getUrlPrefix()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
new-instance v10, Ljava/lang/StringBuilder;
sget-object v11, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "/"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
const/16 v10, 0x1e
const/16 v11, 0x1e
invoke-static {v7, v10, v11}, Lcom/pinguo/share/util/ShareModuleUtil;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v9
if-nez v9, :cond_212
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mTNC:Lcom/pinguo/share/theme/ThemeNetConsole;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$13(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeNetConsole;
move-result-object v10
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;
move-result-object v11
invoke-virtual {v10, v11, v8, v7}, Lcom/pinguo/share/theme/ThemeNetConsole;->getModel(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;
goto/16 :goto_38
:cond_212
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;
move-result-object v10
const v11, 0x10011
invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v6
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;
move-result-object v10
invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto/16 :goto_38
:cond_22a
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10011
if-ne v10, v11, :cond_3b1
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$6(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->hide()V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v10
if-eqz v10, :cond_38
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/theme/ThemeXMLStruct;->enableThemeButton()V
new-instance v3, Landroid/content/Intent;
invoke-direct {v3}, Landroid/content/Intent;-><init>()V
const-string/jumbo v10, "name"
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTitle()Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v10, "id"
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v11
invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v10, "activity_id"
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getActivity()I
move-result v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v10, "description"
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDescription()Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v10, "tag"
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getTag()Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v10, "default"
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getDefault()Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v10, "path"
new-instance v11, Ljava/lang/StringBuilder;
sget-object v12, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v12, 0x2f
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v11
iget-object v12, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v12}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v10, "theme"
const/4 v11, 0x1
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string/jumbo v10, "push"
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getContent()Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->nCurrentDownloadType:I
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$14(Lcom/pinguo/share/theme/ShareThemeMainActivity;)I
move-result v10
packed-switch v10, :pswitch_data_3e8
const-string/jumbo v10, "tag"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Invalid download type:"
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v12, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->nCurrentDownloadType:I
invoke-static {v12}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$14(Lcom/pinguo/share/theme/ShareThemeMainActivity;)I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_38
:pswitch_31f
const-class v10, Lcom/pinguo/share/theme/ThemeXMLConsole;
invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v10
const-string/jumbo v11, "ShareThemeMainActivity"
invoke-static {v10, v11}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v10
invoke-static {v10}, Lcom/pinguo/share/theme/ThemeXMLConsole;->setSelect(I)V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
const/4 v11, 0x0
invoke-virtual {v10, v11, v3}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->setResult(ILandroid/content/Intent;)V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
invoke-virtual {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->finish()V
goto/16 :goto_38
:pswitch_345
const-string/jumbo v10, "big_path"
new-instance v11, Ljava/lang/StringBuilder;
sget-object v12, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;
invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v12, 0x2f
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v11
iget-object v12, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v12}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v12
invoke-virtual {v12}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getPreviewUrl()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
const-class v11, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mActivityContent:Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$15(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;
move-result-object v10
if-eqz v10, :cond_3a4
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mActivityContent:Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$15(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/lang/String;
move-result-object v10
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
invoke-static {v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I
move-result v11
invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getActivityJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v4
if-eqz v4, :cond_3a4
:try_start_397
const-string/jumbo v10, "push"
const-string/jumbo v11, "message"
invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:goto_3a4
:try_end_3a4
.catch Lorg/json/JSONException; {:try_start_397 .. :try_end_3a4} :catch_3ac
:cond_3a4
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
const/4 v11, 0x0
invoke-virtual {v10, v3, v11}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto/16 :goto_38
:catch_3ac
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_3a4
:cond_3b1
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10012
if-ne v10, v11, :cond_3c8
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$6(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->hide()V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#calls: Lcom/pinguo/share/theme/ShareThemeMainActivity;->showNewAlertInformation()V
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$9(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
goto/16 :goto_38
:cond_3c8
iget v10, p1, Landroid/os/Message;->what:I
const v11, 0x10013
if-ne v10, v11, :cond_38
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
#getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-static {v10}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$6(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->hide()V
iget-object v10, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$2;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;
const v12, 0x7f080060
invoke-virtual {v11, v12}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getString(I)Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
goto/16 :goto_38
:pswitch_data_3e8
.packed-switch 0x1
:pswitch_345
:pswitch_31f
.end packed-switch
.end method