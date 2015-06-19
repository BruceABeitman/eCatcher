.class  LvStudio/Android/Camera360/activity/GuideViewFragment$1;
.super Landroid/os/Handler;
.source "GuideViewFragment.java"
.field final synthetic this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
.registers 2
iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v2, 0x0
const-wide/16 v6, 0x12c
const/4 v1, 0x1
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
invoke-static {}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$0()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "msg.waht  "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v5, p1, Landroid/os/Message;->what:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
iget v4, p1, Landroid/os/Message;->what:I
#setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mCurrentMegIndex:I
invoke-static {v3, v4}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$1(LvStudio/Android/Camera360/activity/GuideViewFragment;I)V
iget v3, p1, Landroid/os/Message;->what:I
const/4 v4, 0x6
if-eq v3, v4, :cond_35
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->textView3:Landroid/widget/TextView;
invoke-static {v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$2(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/TextView;
move-result-object v3
if-nez v3, :cond_35
:pswitch_34
:goto_34
return-void
:cond_35
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
iget v3, p1, Landroid/os/Message;->what:I
packed-switch v3, :pswitch_data_e6
goto :goto_34
:pswitch_40
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->textView3:Landroid/widget/TextView;
invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$2(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/TextView;
move-result-object v1
const-string/jumbo v2, "."
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v1, 0x2
iput v1, v0, Landroid/os/Message;->what:I
invoke-virtual {p0, v0, v6, v7}, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_34
:pswitch_53
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->textView3:Landroid/widget/TextView;
invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$2(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/TextView;
move-result-object v1
const-string/jumbo v2, ".."
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v1, 0x3
iput v1, v0, Landroid/os/Message;->what:I
invoke-virtual {p0, v0, v6, v7}, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_34
:pswitch_66
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->textView3:Landroid/widget/TextView;
invoke-static {v2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$2(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/TextView;
move-result-object v2
const-string/jumbo v3, "..."
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iput v1, v0, Landroid/os/Message;->what:I
invoke-virtual {p0, v0, v6, v7}, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_34
:pswitch_78
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
iget v4, p1, Landroid/os/Message;->arg1:I
const/16 v5, 0x63
if-eq v4, v5, :cond_84
:goto_80
#calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->startEnterCamera(Z)V
invoke-static {v3, v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$3(LvStudio/Android/Camera360/activity/GuideViewFragment;Z)V
goto :goto_34
:cond_84
move v1, v2
goto :goto_80
:pswitch_86
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
iget-object v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-static {v4}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$4(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v4
invoke-static {v4}, LvStudio/Android/Camera360/PreferencesAdapter;->adapterPreferences(Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)I
move-result v4
#setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
invoke-static {v3, v4}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$5(LvStudio/Android/Camera360/activity/GuideViewFragment;I)V
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-static {v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$4(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v3
const-string/jumbo v4, "key_version_code"
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->versionCode:I
invoke-static {v5}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$6(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
move-result v5
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-static {v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$4(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v3
const-string/jumbo v4, "pref_first_start_flag_key"
invoke-virtual {v3, v4, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_d1
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const v3, 0x7f0802c3
const v4, 0x7f0201f2
const-class v5, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-static {v1, v3, v4, v5}, Lcom/pinguo/camera360/push/utils/SystemUtil;->addShortcutToDesktop(Landroid/content/Context;IILjava/lang/Class;)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$4(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
const-string/jumbo v3, "pref_first_start_flag_key"
invoke-virtual {v1, v3, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V
:cond_d1
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->enterCamera()V
invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$7(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
goto/16 :goto_34
:pswitch_d8
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->startPlayGuide()V
invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$8(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
goto/16 :goto_34
:pswitch_df
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->enterCamera()V
invoke-static {v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$7(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
goto/16 :goto_34
:pswitch_data_e6
.packed-switch 0x1
:pswitch_40
:pswitch_53
:pswitch_66
:pswitch_78
:pswitch_86
:pswitch_d8
:pswitch_34
:pswitch_df
.end packed-switch
.end method