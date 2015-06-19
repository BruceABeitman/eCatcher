.class  Lco/vine/android/AbstractRecordingActivity$3;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$3;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/AbstractRecordingActivity$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$3;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget v0, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$3;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$000(Lco/vine/android/AbstractRecordingActivity;)Landroid/util/SparseArray;
move-result-object v1
invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
move-result v1
if-eq v0, v1, :cond_1b
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$3;->this$0:Lco/vine/android/AbstractRecordingActivity;
const/4 v1, 0x0
#setter for: Lco/vine/android/AbstractRecordingActivity;->mDeleteWasDrag:Z
invoke-static {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->access$102(Lco/vine/android/AbstractRecordingActivity;Z)Z
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$3;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-virtual {v0}, Lco/vine/android/AbstractRecordingActivity;->showDeleteDialog()V
:cond_1b
const-string v1, " - Lco/vine/android/AbstractRecordingActivity$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method