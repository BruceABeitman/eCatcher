.class  LvStudio/Android/Camera360/activity/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:LvStudio/Android/Camera360/activity/CameraActivity;
.field private final synthetic val$isNewUser:Z
.method constructor <init>(LvStudio/Android/Camera360/activity/CameraActivity;Z)V
.registers 3
iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$7;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
iput-boolean p2, p0, LvStudio/Android/Camera360/activity/CameraActivity$7;->val$isNewUser:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 14
:try_start_0
iget-object v8, p0, LvStudio/Android/Camera360/activity/CameraActivity$7;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
const-string/jumbo v9, "feedback_common.log"
const-string/jumbo v10, "feedback_common.log.gz"
invoke-static {v8, v9, v10}, Lcom/pinguo/lib/util/FileTool;->getGzipFromDataFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
move-result v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v8
const-string/jumbo v9, "pref_key_new_user_feedback_post_time"
const-wide/16 v10, 0x0
invoke-virtual {v8, v9, v10, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v6
sub-long v8, v0, v6
const-wide/32 v10, 0x5265c00
div-long/2addr v8, v10
:try_end_23
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_63
long-to-int v2, v8
if-nez v4, :cond_29
const/4 v8, 0x2
if-lt v2, v8, :cond_68
:cond_29
:try_start_29
iget-object v8, p0, LvStudio/Android/Camera360/activity/CameraActivity$7;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
iget-boolean v9, p0, LvStudio/Android/Camera360/activity/CameraActivity$7;->val$isNewUser:Z
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v10
invoke-static {v8, v9, v10}, Lcom/pinguo/camera360/lib/feedback/FeedbackUploadService;->startUpload(Landroid/content/Context;ZLcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)Z
move-result v5
const-string/jumbo v8, "FeedbackUploadService"
const-string/jumbo v9, "\u6570\u636e\u540e\u624d\u5f00\u59cb\u8bb0\u5f55\u542f\u52a8"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v8, Lcom/pinguo/camera360/lib/feedback/F$key;->camera:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v9, "_c360-adr-5.4.5_"
sget-object v10, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v11, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v12, Lcom/pinguo/camera360/lib/feedback/FeventId$camera;->id_1_0:Lcom/pinguo/camera360/lib/feedback/FeventId$camera;
invoke-virtual {v12}, Lcom/pinguo/camera360/lib/feedback/FeventId$camera;->name()Ljava/lang/String;
move-result-object v12
invoke-static {v10, v11, v12}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityAction(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-static {v8, v9, v10}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
:try_end_54
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_54} :catch_55
:goto_54
return-void
:catch_55
move-exception v3
:try_start_56
const-string/jumbo v8, "CameraActivity"
const-string/jumbo v9, "FeedBack post fail ! Servers Connection  refused"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
:try_end_62
.catch Ljava/io/IOException; {:try_start_56 .. :try_end_62} :catch_63
goto :goto_54
:catch_63
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto :goto_54
:cond_68
:try_start_68
sget-object v8, Lcom/pinguo/camera360/lib/feedback/F$key;->camera:Lcom/pinguo/camera360/lib/feedback/F$key;
const-string/jumbo v9, "_c360-adr-5.4.5_"
sget-object v10, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_main:Lcom/pinguo/camera360/lib/feedback/F$activity;
sget-object v11, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;
sget-object v12, Lcom/pinguo/camera360/lib/feedback/FeventId$camera;->id_1_0:Lcom/pinguo/camera360/lib/feedback/FeventId$camera;
invoke-virtual {v12}, Lcom/pinguo/camera360/lib/feedback/FeventId$camera;->name()Ljava/lang/String;
move-result-object v12
invoke-static {v10, v11, v12}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityAction(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-static {v8, v9, v10}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V
:try_end_7e
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_7e} :catch_63
goto :goto_54
.end method