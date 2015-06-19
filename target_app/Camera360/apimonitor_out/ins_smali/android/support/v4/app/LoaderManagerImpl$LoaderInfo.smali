.class final Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;
.field final mArgs:Landroid/os/Bundle;
.field  mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.field  mData:Ljava/lang/Object;
.field  mDeliveredData:Z
.field  mDestroyed:Z
.field  mHaveData:Z
.field final mId:I
.field  mListenerRegistered:Z
.field  mLoader:Landroid/support/v4/content/Loader;
.field  mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.field  mReportNextStart:Z
.field  mRetaining:Z
.field  mRetainingStarted:Z
.field  mStarted:Z
.field final synthetic this$0:Landroid/support/v4/app/LoaderManagerImpl;
.method public constructor <init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
.registers 5
iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
iput-object p3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;
iput-object p4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
return-void
.end method
.method  callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 7
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
if-eqz v1, :cond_61
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v1, :cond_1e
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
const-string/jumbo v2, "onLoadFinished"
iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
:try_start_1e
:cond_1e
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_4b
const-string/jumbo v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "  onLoadFinished in "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1, p2}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_4b
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
invoke-interface {v1, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
:try_end_50
.catchall {:try_start_1e .. :try_end_50} :catchall_62
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v1, :cond_5e
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
:cond_5e
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
:cond_61
return-void
:catchall_62
move-exception v1
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v2, :cond_71
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
:cond_71
throw v1
.end method
.method  destroy()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x0
sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v2, :cond_20
const-string/jumbo v2, "LoaderManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "  Destroying: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z
iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
if-eqz v2, :cond_82
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
if-eqz v2, :cond_82
iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
if-eqz v2, :cond_82
if-eqz v1, :cond_82
sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v2, :cond_53
const-string/jumbo v2, "LoaderManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "  Reseting: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_53
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v2, :cond_6d
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
const-string/jumbo v3, "onLoaderReset"
iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
:cond_6d
:try_start_6d
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-interface {v2, v3}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V
:try_end_74
.catchall {:try_start_6d .. :try_end_74} :catchall_a6
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v2, :cond_82
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
:cond_82
iput-object v6, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
iput-object v6, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;
iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
if-eqz v2, :cond_9c
iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z
if-eqz v2, :cond_97
iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v2, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
:cond_97
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v2}, Landroid/support/v4/content/Loader;->reset()V
:cond_9c
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v2, :cond_a5
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
:cond_a5
return-void
:catchall_a6
move-exception v2
iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v3, :cond_b5
iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v0, v3, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
:cond_b5
throw v2
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 8
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "mId="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string/jumbo v0, " mArgs="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "mCallbacks="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "mLoader="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
if-eqz v0, :cond_52
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_52
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
if-nez v0, :cond_5a
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
if-eqz v0, :cond_81
:cond_5a
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "mHaveData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v0, "  mDeliveredData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "mData="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_81
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "mStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v0, " mReportNextStart="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v0, " mDestroyed="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "mRetaining="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v0, " mRetainingStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v0, " mListenerRegistered="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v0, :cond_fa
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v0, "Pending Loader "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
const-string/jumbo v0, ":"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_fa
return-void
.end method
.method  finishRetain()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z
if-eqz v0, :cond_32
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_22
const-string/jumbo v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "  Finished Retaining: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_22
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z
if-eq v0, v1, :cond_32
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
if-nez v0, :cond_32
invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V
:cond_32
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
if-eqz v0, :cond_45
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
if-eqz v0, :cond_45
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z
if-nez v0, :cond_45
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
:cond_45
return-void
.end method
.method public onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; onLoadComplete "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v2, :cond_1f
const-string/jumbo v2, "LoaderManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "onLoadComplete: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1f
iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z
if-eqz v2, :cond_31
sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v2, :cond_30
const-string/jumbo v2, "LoaderManager"
const-string/jumbo v3, "  Ignoring load complete -- destroyed"
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:goto_30
:cond_30
const-string v1, " - Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; onLoadComplete"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_31
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v2
if-eq v2, p0, :cond_4b
sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v2, :cond_30
const-string/jumbo v2, "LoaderManager"
const-string/jumbo v3, "  Ignoring load complete -- not active"
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_30
:cond_4b
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v1, :cond_81
sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v2, :cond_6d
const-string/jumbo v2, "LoaderManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "  Switching to pending loader: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_6d
iput-object v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {v2, v3, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v2, v1}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
goto :goto_30
:cond_81
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;
if-ne v2, p2, :cond_89
iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
if-nez v2, :cond_95
:cond_89
iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
if-eqz v2, :cond_95
invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
:cond_95
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v0, :cond_b4
if-eq v0, p0, :cond_b4
const/4 v2, 0x0
iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V
:cond_b4
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v2, :cond_30
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
move-result v2
if-nez v2, :cond_30
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V
goto/16 :goto_30
.end method
.method  reportStart()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
if-eqz v0, :cond_16
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z
if-eqz v0, :cond_16
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
:cond_16
return-void
.end method
.method  retain()V
.registers 4
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1e
const-string/jumbo v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "  Retaining: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1e
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
return-void
.end method
.method  start()V
.registers 5
const/4 v3, 0x1
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z
if-eqz v0, :cond_c
iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
:cond_b
:goto_b
return-void
:cond_c
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
if-nez v0, :cond_b
iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_30
const-string/jumbo v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "  Starting: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_30
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
if-nez v0, :cond_44
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
if-eqz v0, :cond_44
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;
invoke-interface {v0, v1, v2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
:cond_44
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z
move-result v0
if-eqz v0, :cond_80
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v0
if-nez v0, :cond_80
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_80
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z
if-nez v0, :cond_8d
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z
:cond_8d
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V
goto/16 :goto_b
.end method
.method  stop()V
.registers 5
const/4 v3, 0x0
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1f
const-string/jumbo v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "  Stopping: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1f
iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z
if-nez v0, :cond_39
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
if-eqz v0, :cond_39
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z
if-eqz v0, :cond_39
iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V
:cond_39
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string/jumbo v1, "LoaderInfo{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, " #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v1, " : "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string/jumbo v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method