.class  Lco/vine/android/recorder/VineRecorder$27;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/recorder/VineRecorder$27; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mReturnToPreview:Z
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$3500(Lco/vine/android/recorder/VineRecorder;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;
#calls: Lco/vine/android/recorder/VineRecorder;->returnToPreview(Z)V
invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$3800(Lco/vine/android/recorder/VineRecorder;Z)V
:goto_e
const-string v1, " - Lco/vine/android/recorder/VineRecorder$27; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_f
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4300(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$27;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditing:Z
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4000(Lco/vine/android/recorder/VineRecorder;)Z
move-result v0
if-nez v0, :cond_24
move v0, v1
:goto_20
invoke-virtual {v2, v3, v0, v1}, Lco/vine/android/recorder/VineRecorder;->setEditMode(Landroid/view/View;ZZ)V
goto :goto_e
:cond_24
const/4 v0, 0x0
goto :goto_20
.end method