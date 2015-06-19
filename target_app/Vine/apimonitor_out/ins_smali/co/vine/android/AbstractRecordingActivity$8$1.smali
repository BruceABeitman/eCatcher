.class  Lco/vine/android/AbstractRecordingActivity$8$1;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lco/vine/android/AbstractRecordingActivity$8;
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity$8;)V
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$8$1;->this$1:Lco/vine/android/AbstractRecordingActivity$8;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$8$1;->this$1:Lco/vine/android/AbstractRecordingActivity$8;
iget-object v1, v1, Lco/vine/android/AbstractRecordingActivity$8;->this$0:Lco/vine/android/AbstractRecordingActivity;
#calls: Lco/vine/android/AbstractRecordingActivity;->getActiveRecordingFragment()Lco/vine/android/RecordingFragment;
invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$800(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/RecordingFragment;
move-result-object v0
if-eqz v0, :cond_17
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$8$1;->this$1:Lco/vine/android/AbstractRecordingActivity$8;
iget-object v1, v1, Lco/vine/android/AbstractRecordingActivity$8;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftUpgradeCustomer:Lco/vine/android/service/DraftUpgradeCustomer;
invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$900(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/service/DraftUpgradeCustomer;
move-result-object v1
iget v1, v1, Lco/vine/android/service/DraftUpgradeCustomer;->count:I
invoke-virtual {v0, v1}, Lco/vine/android/RecordingFragment;->onDraftUpgradeNumberChanged(I)V
:cond_17
return-void
.end method