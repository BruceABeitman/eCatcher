.class  Lco/vine/android/recorder/VineRecorder$15;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.field final synthetic val$et:Landroid/widget/EditText;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/EditText;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/VineRecorder$15;->val$et:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/recorder/VineRecorder$15; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_21
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->setAudioTrim(Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$15;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$15;->val$et:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->startTimeLapse(D)V
:cond_21
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lco/vine/android/recorder/VineRecorder$15; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method