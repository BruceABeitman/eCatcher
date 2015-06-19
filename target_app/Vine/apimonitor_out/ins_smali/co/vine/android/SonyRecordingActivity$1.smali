.class  Lco/vine/android/SonyRecordingActivity$1;
.super Ljava/lang/Object;
.source "SonyRecordingActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/SonyRecordingActivity;
.method constructor <init>(Lco/vine/android/SonyRecordingActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SonyRecordingActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;
#getter for: Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
invoke-static {v2}, Lco/vine/android/SonyRecordingActivity;->access$000(Lco/vine/android/SonyRecordingActivity;)Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
move-result-object v2
if-eqz v2, :cond_24
iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;
iget-object v0, v2, Lco/vine/android/SonyRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_24
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditing()Z
move-result v1
if-nez v1, :cond_25
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isSessionModified()Z
move-result v2
if-nez v2, :cond_25
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->setDiscardChangesOnStop()V
iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;
#calls: Lco/vine/android/SonyRecordingActivity;->showSonyOverlay()V
invoke-static {v2}, Lco/vine/android/SonyRecordingActivity;->access$100(Lco/vine/android/SonyRecordingActivity;)V
:goto_24
:cond_24
const-string v1, " - Lco/vine/android/SonyRecordingActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_25
if-eqz v1, :cond_36
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditingDirty()Z
move-result v2
if-nez v2, :cond_36
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->discardEditing()V
iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;
#calls: Lco/vine/android/SonyRecordingActivity;->showSonyOverlay()V
invoke-static {v2}, Lco/vine/android/SonyRecordingActivity;->access$100(Lco/vine/android/SonyRecordingActivity;)V
goto :goto_24
:cond_36
iget-object v2, p0, Lco/vine/android/SonyRecordingActivity$1;->this$0:Lco/vine/android/SonyRecordingActivity;
const/4 v3, 0x0
invoke-virtual {v2, v3, v0}, Lco/vine/android/SonyRecordingActivity;->showUnSavedChangesDialog(ILco/vine/android/RecordingFragment;)V
goto :goto_24
.end method