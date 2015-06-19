.class  Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
.super Landroid/support/v4/app/DraftFragmentStatePagerAdapter;
.source "AbstractRecordingActivity.java"
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;
.method public constructor <init>(Lco/vine/android/AbstractRecordingActivity;Landroid/support/v4/app/FragmentManager;)V
.registers 3
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-direct {p0, p2}, Landroid/support/v4/app/DraftFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V
return-void
.end method
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 8
:try_start_0
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DraftFragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
instance-of v3, p3, Lco/vine/android/DraftFragment;
if-eqz v3, :cond_19
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-virtual {v3}, Lco/vine/android/AbstractRecordingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
check-cast p3, Lco/vine/android/DraftFragment;
invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:try_end_19
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a
:goto_19
:cond_19
return-void
:catch_1a
move-exception v0
const-string v3, "Failed to remove draft, it\'s probably not there any more."
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_19
.end method
.method public finishUpdate(Landroid/view/ViewGroup;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/DraftFragmentStatePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$3800(Lco/vine/android/AbstractRecordingActivity;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
#calls: Lco/vine/android/AbstractRecordingActivity;->setCurrentSession()Z
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$3900(Lco/vine/android/AbstractRecordingActivity;)Z
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_16
#setter for: Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
invoke-static {v1, v0}, Lco/vine/android/AbstractRecordingActivity;->access$3802(Lco/vine/android/AbstractRecordingActivity;Z)Z
:cond_19
return-void
:cond_1a
const/4 v0, 0x0
goto :goto_16
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$2900(Lco/vine/android/AbstractRecordingActivity;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, 0x1
return v0
.end method
.method public getItem(I)Landroid/support/v4/app/Fragment;
.registers 11
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$2900(Lco/vine/android/AbstractRecordingActivity;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ne p1, v1, :cond_20
new-instance v0, Lco/vine/android/DraftCameraPreviewFragment;
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget v1, v1, Lco/vine/android/AbstractRecordingActivity;->mPreviewDimen:I
invoke-direct {v0, v1}, Lco/vine/android/DraftCameraPreviewFragment;-><init>(I)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
#setter for: Lco/vine/android/AbstractRecordingActivity;->mCameraFragment:Ljava/lang/ref/WeakReference;
invoke-static {v1, v2}, Lco/vine/android/AbstractRecordingActivity;->access$3002(Lco/vine/android/AbstractRecordingActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
:goto_1f
return-object v0
:cond_20
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$2900(Lco/vine/android/AbstractRecordingActivity;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
new-instance v0, Lco/vine/android/DraftFragment;
if-nez p1, :cond_6c
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$3100(Lco/vine/android/AbstractRecordingActivity;)Z
move-result v1
if-nez v1, :cond_6c
const/4 v1, 0x1
:goto_39
iget-object v2, v8, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->video:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v3
iget-object v2, v8, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->thumb:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v4
iget-object v5, v8, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;
iget-object v2, v8, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->meta:Lco/vine/android/recorder/RecordSessionMeta;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordSessionMeta;->getProgress()I
move-result v6
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget v7, v2, Lco/vine/android/AbstractRecordingActivity;->mPreviewDimen:I
move v2, p1
invoke-direct/range {v0 .. v7}, Lco/vine/android/DraftFragment;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/io/File;II)V
new-instance v1, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;
invoke-direct {v1, p0, v0}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl$1;-><init>(Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;Lco/vine/android/DraftFragment;)V
invoke-virtual {v0, v1}, Lco/vine/android/DraftFragment;->setListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$000(Lco/vine/android/AbstractRecordingActivity;)Landroid/util/SparseArray;
move-result-object v1
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
goto :goto_1f
:cond_6c
const/4 v1, 0x0
goto :goto_39
.end method
.method public getItemPosition(Ljava/lang/Object;)I
.registers 4
instance-of v1, p1, Lco/vine/android/DraftFragment;
if-eqz v1, :cond_11
move-object v0, p1
check-cast v0, Lco/vine/android/DraftFragment;
invoke-virtual {v0}, Lco/vine/android/DraftFragment;->isExpired()Z
move-result v1
if-eqz v1, :cond_f
const/4 v1, -0x2
:goto_e
return v1
:cond_f
const/4 v1, -0x1
goto :goto_e
:cond_11
invoke-super {p0, p1}, Landroid/support/v4/app/DraftFragmentStatePagerAdapter;->getItemPosition(Ljava/lang/Object;)I
move-result v1
goto :goto_e
.end method