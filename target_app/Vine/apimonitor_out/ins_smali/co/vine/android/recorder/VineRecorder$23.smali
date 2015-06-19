.class  Lco/vine/android/recorder/VineRecorder$23;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/recorder/VineRecorder$23; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mReturnToPreview:Z
invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$3500(Lco/vine/android/recorder/VineRecorder;)Z
move-result v2
if-eqz v2, :cond_24
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
#calls: Lco/vine/android/recorder/VineRecorder;->getDurationFromSegments()J
invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$3600(Lco/vine/android/recorder/VineRecorder;)J
move-result-wide v2
iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
iget v4, v4, Lco/vine/android/recorder/VineRecorder;->mThresholdMs:I
int-to-long v4, v4
cmp-long v2, v2, v4
if-ltz v2, :cond_24
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
#calls: Lco/vine/android/recorder/VineRecorder;->animateEditModeControlsOut(Z)V
invoke-static {v2, v0}, Lco/vine/android/recorder/VineRecorder;->access$3700(Lco/vine/android/recorder/VineRecorder;Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
#calls: Lco/vine/android/recorder/VineRecorder;->returnToPreview(Z)V
invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$3800(Lco/vine/android/recorder/VineRecorder;Z)V
:goto_23
const-string v1, " - Lco/vine/android/recorder/VineRecorder$23; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_24
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorDoneButton:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$3900(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v3
iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$23;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditing:Z
invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$4000(Lco/vine/android/recorder/VineRecorder;)Z
move-result v4
if-nez v4, :cond_38
:goto_34
invoke-virtual {v2, v3, v0, v1}, Lco/vine/android/recorder/VineRecorder;->setEditMode(Landroid/view/View;ZZ)V
goto :goto_23
:cond_38
move v0, v1
goto :goto_34
.end method