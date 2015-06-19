.class  Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "SourceFile"
.field static DEBUG:Z = false
.field static final TAG:Ljava/lang/String; = "LoaderManager"
.field  mActivity:Landroid/support/v4/app/FragmentActivity;
.field  mCreatingLoader:Z
.field final mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
.field final mLoaders:Landroid/support/v4/util/SparseArrayCompat;
.field  mRetaining:Z
.field  mRetainingStarted:Z
.field  mStarted:Z
.field final mWho:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
return-void
.end method
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
.registers 5
invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V
new-instance v0, Landroid/support/v4/util/SparseArrayCompat;
invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
new-instance v0, Landroid/support/v4/util/SparseArrayCompat;
invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;
iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iput-boolean p3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
return-void
.end method
.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_e
iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z
return-object v0
:catchall_e
move-exception v0
iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z
throw v0
.end method
.method private createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.registers 6
new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
invoke-interface {p3, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
return-object v0
.end method
.method public destroyLoader(I)V
.registers 5
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_32
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "destroyLoader in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_32
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I
move-result v1
if-ltz v1, :cond_4a
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
:cond_4a
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I
move-result v1
if-ltz v1, :cond_62
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
:cond_62
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_73
invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
move-result v0
if-nez v0, :cond_73
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V
:cond_73
return-void
.end method
.method  doDestroy()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z
if-nez v0, :cond_3f
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_20
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Destroying Active in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_29
if-ltz v1, :cond_3a
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_29
:cond_3a
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V
:cond_3f
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_5b
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Destroying Inactive in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_5b
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_64
if-ltz v1, :cond_75
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_64
:cond_75
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V
return-void
.end method
.method  doReportNextStart()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
const/4 v2, 0x1
iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_1a
return-void
.end method
.method  doReportStart()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_9
if-ltz v1, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_9
:cond_1a
return-void
.end method
.method  doRetain()V
.registers 5
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1c
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Retaining in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
if-nez v0, :cond_43
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Called doRetain when not started: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_42
return-void
:cond_43
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_52
if-ltz v1, :cond_42
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_52
.end method
.method  doStart()V
.registers 5
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1c
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Starting in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
if-eqz v0, :cond_43
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Called doStart when already started: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_42
return-void
:cond_43
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_4f
if-ltz v1, :cond_42
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_4f
.end method
.method  doStop()V
.registers 5
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1c
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Stopping in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
if-nez v0, :cond_43
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "here"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Called doStop when not started: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_42
return-void
:cond_43
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_4c
if-ltz v1, :cond_5d
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_4c
:cond_5d
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
goto :goto_42
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 10
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
if-lez v0, :cond_59
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Active Loaders:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "    "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move v1, v2
:goto_25
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
if-ge v1, v0, :cond_59
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v4, "  #"
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I
move-result v4
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V
const-string v4, ": "
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_25
:cond_59
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
if-lez v0, :cond_af
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Inactive Loaders:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "    "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_7c
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
if-ge v2, v0, :cond_af
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v3, "  #"
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I
move-result v3
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V
const-string v3, ": "
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v2, v2, 0x1
goto :goto_7c
:cond_af
return-void
.end method
.method  finishRetain()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z
if-eqz v0, :cond_3d
sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v0, :cond_20
const-string v0, "LoaderManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Finished Retaining in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_2c
if-ltz v1, :cond_3d
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_2c
:cond_3d
return-void
.end method
.method public getLoader(I)Landroid/support/v4/content/Loader;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v0, :cond_22
iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v1, :cond_1f
iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
:goto_1e
return-object v0
:cond_1f
iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
goto :goto_1e
:cond_22
const/4 v0, 0x0
goto :goto_1e
.end method
.method public hasRunningLoaders()Z
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v4
move v2, v1
move v3, v1
:goto_9
if-ge v2, v4, :cond_23
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
iget-boolean v5, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
if-eqz v5, :cond_21
iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
if-nez v0, :cond_21
const/4 v0, 0x1
:goto_1c
or-int/2addr v3, v0
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_9
:cond_21
move v0, v1
goto :goto_1c
:cond_23
return v3
.end method
.method public initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.registers 8
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_3a
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "initLoader in "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": args="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_3a
if-nez v0, :cond_6e
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
move-result-object v0
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_5c
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "  Created new loader "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:goto_5c
:cond_5c
iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
if-eqz v1, :cond_6b
iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
if-eqz v1, :cond_6b
iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
iget-object v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
:cond_6b
iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
return-object v0
:cond_6e
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_8a
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "  Re-using existing loader "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_8a
iput-object p3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
goto :goto_5c
.end method
.method  installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
iget v1, p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I
invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
if-eqz v0, :cond_e
invoke-virtual {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V
:cond_e
return-void
.end method
.method public restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.registers 9
const/4 v4, 0x0
iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Called while creating a loader"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_3b
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "restartLoader in "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": args="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_3b
if-eqz v0, :cond_77
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v1, :cond_d5
iget-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z
if-eqz v2, :cond_7e
sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v2, :cond_67
const-string v2, "LoaderManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "  Removing last inactive loader: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_67
const/4 v2, 0x0
iput-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z
invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v1}, Landroid/support/v4/content/Loader;->abandon()V
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
:goto_77
:cond_77
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
move-result-object v0
iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
:goto_7d
return-object v0
:cond_7e
iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z
if-nez v1, :cond_96
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_8d
const-string v1, "LoaderManager"
const-string v2, "  Current loader is stopped; replacing"
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_8d
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v1, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
goto :goto_77
:cond_96
iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
if-eqz v1, :cond_bf
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_b8
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "  Removing pending loader: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_b8
iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
iput-object v4, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
:cond_bf
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_ca
const-string v1, "LoaderManager"
const-string v2, "  Enqueuing as new pending loader"
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_ca
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
goto :goto_7d
:cond_d5
sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z
if-eqz v1, :cond_f1
const-string v1, "LoaderManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "  Making last loader inactive: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_f1
iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;
invoke-virtual {v1}, Landroid/support/v4/content/Loader;->abandon()V
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
goto/16 :goto_77
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "LoaderManager{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " in "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  updateActivity(Landroid/support/v4/app/FragmentActivity;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
return-void
.end method