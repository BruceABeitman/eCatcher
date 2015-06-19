.class  LvStudio/Android/Camera360/activity/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:LvStudio/Android/Camera360/activity/CameraActivity;
.method constructor <init>(LvStudio/Android/Camera360/activity/CameraActivity;)V
.registers 2
iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 10
:try_start_0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v3
const-wide/16 v5, 0x3e8
invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;
move-result-object v7
invoke-virtual {v7, v3}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J
move-result-wide v7
cmp-long v5, v5, v7
if-ltz v5, :cond_3a
const-string/jumbo v5, "appDownLoad"
const-string/jumbo v6, "Storage can not used"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v5, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v6}, LvStudio/Android/Camera360/activity/CameraActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v6
const v7, 0x7f0800e9
invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
invoke-direct {v4, v5, v6, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
const/16 v5, 0x7d0
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
:goto_39
return-void
:cond_3a
iget-object v5, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
const-string/jumbo v6, "download"
invoke-virtual {v5, v6}, LvStudio/Android/Camera360/activity/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/app/DownloadManager;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;
invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
#getter for: LvStudio/Android/Camera360/activity/CameraActivity;->mAppName:Ljava/lang/String;
invoke-static {v6}, LvStudio/Android/Camera360/activity/CameraActivity;->access$1(LvStudio/Android/Camera360/activity/CameraActivity;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ".apk"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v5, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
#getter for: LvStudio/Android/Camera360/activity/CameraActivity;->mAppName:Ljava/lang/String;
invoke-static {v5}, LvStudio/Android/Camera360/activity/CameraActivity;->access$1(LvStudio/Android/Camera360/activity/CameraActivity;)Ljava/lang/String;
move-result-object v5
iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
#getter for: LvStudio/Android/Camera360/activity/CameraActivity;->mAppLink:Ljava/lang/String;
invoke-static {v6}, LvStudio/Android/Camera360/activity/CameraActivity;->access$2(LvStudio/Android/Camera360/activity/CameraActivity;)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v0, v6, v2}, Lcom/pinguo/lib/util/DownloadFileUtils;->doDownLoadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f
goto :goto_39
:catch_7f
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
iget-object v5, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$3;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
#getter for: LvStudio/Android/Camera360/activity/CameraActivity;->mAppLink:Ljava/lang/String;
invoke-static {v6}, LvStudio/Android/Camera360/activity/CameraActivity;->access$2(LvStudio/Android/Camera360/activity/CameraActivity;)Ljava/lang/String;
move-result-object v6
#calls: LvStudio/Android/Camera360/activity/CameraActivity;->startDownLoadAppOldMethod(Ljava/lang/String;)V
invoke-static {v5, v6}, LvStudio/Android/Camera360/activity/CameraActivity;->access$3(LvStudio/Android/Camera360/activity/CameraActivity;Ljava/lang/String;)V
goto :goto_39
.end method