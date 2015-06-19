.class  LvStudio/Android/Camera360/activity/GuideViewFragment$7;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "GuideViewFragment.java"
.field final synthetic this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
.field private final synthetic val$need1:Z
.field private final synthetic val$need2:Z
.field private final synthetic val$need3:Z
.field private final synthetic val$need4:Z
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment;ZZZZ)V
.registers 6
iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
iput-boolean p2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need1:Z
iput-boolean p3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need2:Z
iput-boolean p4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need4:Z
iput-boolean p5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need3:Z
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 8
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
#setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->beginInstallTime:J
invoke-static {v3, v4, v5}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$29(LvStudio/Android/Camera360/activity/GuideViewFragment;J)V
iget-boolean v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need1:Z
if-eqz v3, :cond_13
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installIDCameraOfCameraDb()V
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installIDCameraOfShopDb()V
:cond_13
iget-boolean v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need2:Z
if-eqz v3, :cond_1e
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, LvStudio/Android/Camera360/activity/UpdateAdapter;->updateInstalledLight(Landroid/content/Context;)V
:cond_1e
iget-boolean v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need4:Z
if-eqz v3, :cond_28
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installSonyCameraOfCameraDb()V
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installSonyCameraOfShopDb()V
:cond_28
iget-boolean v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->val$need3:Z
if-eqz v3, :cond_9e
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "effect"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "installed"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "shader"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "frontImage.jpg"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_7e
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v3
const-string/jumbo v4, "load_background.jpg"
invoke-static {v3, v4, v2}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v3
const/16 v4, 0x23
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putFrontImageVersion(I)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v3
const-string/jumbo v4, "key_front_image_crc32"
const-string/jumbo v5, "480b1e1c"
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_9e
:try_end_9e
.catch Ljava/io/IOException; {:try_start_7e .. :try_end_9e} :catch_a0
:cond_9e
const/4 v3, 0x0
return-object v3
:catch_a0
move-exception v0
const-string/jumbo v3, "TAG"
invoke-static {v3, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_9e
invoke-virtual {v2}, Ljava/io/File;->delete()Z
goto :goto_9e
.end method
.method protected onPostExecute(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
const/4 v1, 0x0
#calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->readyEnterCamera(Z)V
invoke-static {v0, v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$30(LvStudio/Android/Camera360/activity/GuideViewFragment;Z)V
return-void
.end method