.class  Lco/vine/android/AbstractRecordingActivity$12;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const/4 v5, 0x1
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$2700(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->getCount()I
move-result v2
if-eq v2, v5, :cond_51
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget v2, v2, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$2700(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->getCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
if-eq v2, v3, :cond_51
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$2900(Lco/vine/android/AbstractRecordingActivity;)Ljava/util/ArrayList;
move-result-object v2
iget-object v4, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget v4, v4, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
#setter for: Lco/vine/android/AbstractRecordingActivity;->mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
invoke-static {v3, v2}, Lco/vine/android/AbstractRecordingActivity;->access$2802(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;)Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$000(Lco/vine/android/AbstractRecordingActivity;)Landroid/util/SparseArray;
move-result-object v2
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$12;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget v3, v3, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_51
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/DraftFragment;
if-eqz v1, :cond_51
invoke-virtual {v1, v5}, Lco/vine/android/DraftFragment;->setSelected(Z)V
:cond_51
return-void
.end method