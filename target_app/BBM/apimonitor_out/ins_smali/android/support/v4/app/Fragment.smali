.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.field static final ACTIVITY_CREATED:I = 0x2
.field static final CREATED:I = 0x1
.field static final INITIALIZING:I = 0x0
.field static final RESUMED:I = 0x5
.field static final STARTED:I = 0x4
.field static final STOPPED:I = 0x3
.field private static final sClassMap:Landroid/support/v4/b/n;
.field  mActivity:Landroid/support/v4/app/h;
.field  mAdded:Z
.field  mAnimatingAway:Landroid/view/View;
.field  mArguments:Landroid/os/Bundle;
.field  mBackStackNesting:I
.field  mCalled:Z
.field  mCheckedForLoaderManager:Z
.field  mChildFragmentManager:Landroid/support/v4/app/o;
.field  mContainer:Landroid/view/ViewGroup;
.field  mContainerId:I
.field  mDeferStart:Z
.field  mDetached:Z
.field  mFragmentId:I
.field  mFragmentManager:Landroid/support/v4/app/o;
.field  mFromLayout:Z
.field  mHasMenu:Z
.field  mHidden:Z
.field  mInLayout:Z
.field  mIndex:I
.field  mInnerView:Landroid/view/View;
.field  mLoaderManager:Landroid/support/v4/app/z;
.field  mLoadersStarted:Z
.field  mMenuVisible:Z
.field  mNextAnim:I
.field  mParentFragment:Landroid/support/v4/app/Fragment;
.field  mRemoving:Z
.field  mRestored:Z
.field  mResumed:Z
.field  mRetainInstance:Z
.field  mRetaining:Z
.field  mSavedFragmentState:Landroid/os/Bundle;
.field  mSavedViewState:Landroid/util/SparseArray;
.field  mState:I
.field  mStateAfterAnimating:I
.field  mTag:Ljava/lang/String;
.field  mTarget:Landroid/support/v4/app/Fragment;
.field  mTargetIndex:I
.field  mTargetRequestCode:I
.field  mUserVisibleHint:Z
.field  mView:Landroid/view/View;
.field  mWho:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/b/n;
invoke-direct {v0}, Landroid/support/v4/b/n;-><init>()V
sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/b/n;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I
iput v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I
iput v1, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I
iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
return-void
.end method
.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v0
return-object v0
.end method
.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
.registers 7
:try_start_0
sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/b/n;
invoke-virtual {v0, p1}, Landroid/support/v4/b/n;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
if-nez v0, :cond_17
invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sget-object v1, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/b/n;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/b/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_17
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz p2, :cond_2c
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iput-object p2, v0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
:try_end_2c
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d
.catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_49
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_65
:cond_2c
return-object v0
:catch_2d
move-exception v0
new-instance v1, Landroid/support/v4/app/f;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unable to instantiate fragment "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Landroid/support/v4/app/f;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:catch_49
move-exception v0
new-instance v1, Landroid/support/v4/app/f;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unable to instantiate fragment "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Landroid/support/v4/app/f;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
:catch_65
move-exception v0
new-instance v1, Landroid/support/v4/app/f;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unable to instantiate fragment "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Landroid/support/v4/app/f;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
:try_start_0
sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/b/n;
invoke-virtual {v0, p1}, Landroid/support/v4/b/n;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
if-nez v0, :cond_17
invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sget-object v1, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/b/n;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/b/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_17
const-class v1, Landroid/support/v4/app/Fragment;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
:try_end_1c
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1e
move-result v0
:goto_1d
return v0
:catch_1e
move-exception v0
const/4 v0, 0x0
goto :goto_1d
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 8
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mFragmentId=#"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mContainerId=#"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mTag="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mState="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mIndex="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mWho="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, " mBackStackNesting="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mAdded="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mRemoving="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mResumed="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mFromLayout="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mInLayout="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mHidden="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mDetached="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mMenuVisible="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mHasMenu="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mRetainInstance="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mRetaining="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mUserVisibleHint="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_e6
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mFragmentManager="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_e6
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
if-eqz v0, :cond_f7
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mActivity="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_f7
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_108
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mParentFragment="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_108
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
if-eqz v0, :cond_119
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mArguments="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_119
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
if-eqz v0, :cond_12a
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mSavedFragmentState="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_12a
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-eqz v0, :cond_13b
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mSavedViewState="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_13b
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_156
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mTarget="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
const-string v0, " mTargetRequestCode="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
:cond_156
iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I
if-eqz v0, :cond_167
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mNextAnim="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
:cond_167
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-eqz v0, :cond_178
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mContainer="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_178
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_189
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mView="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_189
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
if-eqz v0, :cond_19a
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mInnerView="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_19a
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
if-eqz v0, :cond_1b8
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mAnimatingAway="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mStateAfterAnimating="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
:cond_1b8
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_1dc
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Loader Manager:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/z;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V
:cond_1dc
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_215
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Child "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/o;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_215
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method  findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
:goto_9
:cond_9
return-object p0
:cond_a
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_37
iget-object v3, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
iget-object v0, v3, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_35
if-eqz p1, :cond_35
iget-object v0, v3, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v2, v0
:goto_1f
if-ltz v2, :cond_35
iget-object v0, v3, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_31
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object p0
if-nez p0, :cond_9
:cond_31
add-int/lit8 v0, v2, -0x1
move v2, v0
goto :goto_1f
:cond_35
move-object p0, v1
goto :goto_9
:cond_37
move-object p0, v1
goto :goto_9
.end method
.method public final getActivity()Landroid/support/v4/app/h;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
return-object v0
.end method
.method public final getArguments()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
return-object v0
.end method
.method public final getChildFragmentManager()Landroid/support/v4/app/n;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-nez v0, :cond_11
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V
iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I
const/4 v1, 0x5
if-lt v0, v1, :cond_14
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->j()V
:goto_11
:cond_11
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
return-object v0
:cond_14
iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I
const/4 v1, 0x4
if-lt v0, v1, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->i()V
goto :goto_11
:cond_1f
iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I
const/4 v1, 0x2
if-lt v0, v1, :cond_2a
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->h()V
goto :goto_11
:cond_2a
iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I
if-lez v0, :cond_11
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->g()V
goto :goto_11
.end method
.method public final getFragmentManager()Landroid/support/v4/app/n;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
return-object v0
.end method
.method public final getId()I
.registers 2
iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I
return v0
.end method
.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
return-object v0
.end method
.method public getLoaderManager()Landroid/support/v4/app/x;
.registers 5
const/4 v3, 0x1
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_8
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
if-nez v0, :cond_27
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " not attached to Activity"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/h;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/z;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
goto :goto_7
.end method
.method public final getParentFragment()Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method public final getResources()Landroid/content/res/Resources;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " not attached to Activity"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->getResources()Landroid/content/res/Resources;
move-result-object v0
return-object v0
.end method
.method public final getRetainInstance()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
return v0
.end method
.method public final getString(I)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
return-object v0
.end method
.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method public final getTargetRequestCode()I
.registers 2
iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
return v0
.end method
.method public final getText(I)Ljava/lang/CharSequence;
.registers 3
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getUserVisibleHint()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
return v0
.end method
.method public getView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
return-object v0
.end method
.method public final hasOptionsMenu()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
return v0
.end method
.method public final hashCode()I
.registers 2
invoke-super {p0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method  initState()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I
iput-object v2, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mAdded:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mResumed:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRestored:Z
iput v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
iput-object v2, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
iput-object v2, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iput v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput v1, p0, Landroid/support/v4/app/Fragment;->mContainerId:I
iput-object v2, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mDetached:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z
iput-object v2, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
return-void
.end method
.method  instantiateChildFragmentManager()V
.registers 4
new-instance v0, Landroid/support/v4/app/o;
invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
new-instance v2, Landroid/support/v4/app/e;
invoke-direct {v2, p0}, Landroid/support/v4/app/e;-><init>(Landroid/support/v4/app/Fragment;)V
invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/h;Landroid/support/v4/app/m;Landroid/support/v4/app/Fragment;)V
return-void
.end method
.method public final isAdded()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
if-eqz v0, :cond_a
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isDetached()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z
return v0
.end method
.method public final isHidden()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
return v0
.end method
.method final isInBackStack()Z
.registers 2
iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
if-lez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final isInLayout()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z
return v0
.end method
.method public final isMenuVisible()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
return v0
.end method
.method public final isRemoving()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z
return v0
.end method
.method public final isResumed()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z
return v0
.end method
.method public final isVisible()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z
move-result v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z
move-result v0
if-nez v0, :cond_22
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_22
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 4
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/Fragment; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
move v2, v0
const-string v1, " - Landroid/support/v4/app/Fragment; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Landroid/support/v4/app/Fragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
const-string v1, " - Landroid/support/v4/app/Fragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
.registers 5
const/4 v0, 0x0
return-object v0
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/Fragment; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/h;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
const-string v1, " - Landroid/support/v4/app/Fragment; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/Fragment; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Landroid/support/v4/app/Fragment; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 5
const/4 v0, 0x0
return-object v0
.end method
.method public onDestroy()V
.registers 5
const-string v1, " + Landroid/support/v4/app/Fragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
if-nez v0, :cond_16
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/h;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/z;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
:cond_16
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->g()V
:cond_1f
const-string v1, " - Landroid/support/v4/app/Fragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroyOptionsMenu()V
.registers 1
return-void
.end method
.method public onDestroyView()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method public onDetach()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method public onHiddenChanged(Z)V
.registers 2
return-void
.end method
.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
.registers 5
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method public onLowMemory()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/Fragment; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
move v2, v0
const-string v1, " - Landroid/support/v4/app/Fragment; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onOptionsMenuClosed(Landroid/view/Menu;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/Fragment; onOptionsMenuClosed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Landroid/support/v4/app/Fragment; onOptionsMenuClosed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Landroid/support/v4/app/Fragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
const-string v1, " - Landroid/support/v4/app/Fragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
.registers 2
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Landroid/support/v4/app/Fragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
const-string v1, " - Landroid/support/v4/app/Fragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Landroid/support/v4/app/Fragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Landroid/support/v4/app/Fragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 5
const-string v1, " + Landroid/support/v4/app/Fragment; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
if-nez v0, :cond_25
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
if-nez v0, :cond_1c
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/h;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/z;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
:cond_1c
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_25
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->b()V
:cond_25
const-string v1, " - Landroid/support/v4/app/Fragment; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Landroid/support/v4/app/Fragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
const-string v1, " - Landroid/support/v4/app/Fragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onViewStateRestored(Landroid/os/Bundle;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
return-void
.end method
.method  performActivityCreated(Landroid/os/Bundle;)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
iput-boolean v1, v0, Landroid/support/v4/app/o;->s:Z
:cond_9
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_2d
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onActivityCreated()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_36
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->h()V
:cond_36
return-void
.end method
.method  performConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/content/res/Configuration;)V
:cond_c
return-void
.end method
.method  performContextItemSelected(Landroid/view/MenuItem;)Z
.registers 4
const/4 v0, 0x1
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v1, :cond_18
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
move-result v1
if-eqz v1, :cond_c
:goto_b
:cond_b
return v0
:cond_c
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v1, :cond_18
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->b(Landroid/view/MenuItem;)Z
move-result v1
if-nez v1, :cond_b
:cond_18
const/4 v0, 0x0
goto :goto_b
.end method
.method  performCreate(Landroid/os/Bundle;)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
iput-boolean v1, v0, Landroid/support/v4/app/o;->s:Z
:cond_9
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_2d
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onCreate()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
if-eqz p1, :cond_49
const-string v0, "android:support:fragments"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_49
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-nez v1, :cond_3e
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V
:cond_3e
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/o;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->g()V
:cond_49
return-void
.end method
.method  performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
.registers 5
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v1, :cond_1c
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v1, :cond_11
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v1, :cond_11
const/4 v0, 0x1
invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
:cond_11
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v1, :cond_1c
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
move-result v1
or-int/2addr v0, v1
:cond_1c
return v0
.end method
.method  performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v4/app/o;->s:Z
:cond_9
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method  performDestroy()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V
:cond_9
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_2e
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onDestroy()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
return-void
.end method
.method  performDestroyView()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->c(I)V
:cond_a
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_2f
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onDestroyView()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_38
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->e()V
:cond_38
return-void
.end method
.method  performLowMemory()V
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->m()V
:cond_c
return-void
.end method
.method  performOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 4
const/4 v0, 0x1
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v1, :cond_20
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v1, :cond_14
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v1, :cond_14
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
if-eqz v1, :cond_14
:cond_13
:goto_13
return v0
:cond_14
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v1, :cond_20
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->a(Landroid/view/MenuItem;)Z
move-result v1
if-nez v1, :cond_13
:cond_20
const/4 v0, 0x0
goto :goto_13
.end method
.method  performOptionsMenuClosed(Landroid/view/Menu;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v0, :cond_18
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_f
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_f
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V
:cond_f
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->b(Landroid/view/Menu;)V
:cond_18
return-void
.end method
.method  performPause()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->c(I)V
:cond_a
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_2f
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onPause()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
return-void
.end method
.method  performPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 4
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v1, :cond_1c
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v1, :cond_11
iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v1, :cond_11
const/4 v0, 0x1
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V
:cond_11
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v1, :cond_1c
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;)Z
move-result v1
or-int/2addr v0, v1
:cond_1c
return v0
.end method
.method  performReallyStop()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->c(I)V
:cond_b
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
if-eqz v0, :cond_33
iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
if-nez v0, :cond_24
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/h;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/z;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
:cond_24
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_33
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iget-boolean v0, v0, Landroid/support/v4/app/h;->mRetaining:Z
if-nez v0, :cond_34
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->c()V
:goto_33
:cond_33
return-void
:cond_34
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->d()V
goto :goto_33
.end method
.method  performResume()V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
iput-boolean v1, v0, Landroid/support/v4/app/o;->s:Z
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z
:cond_e
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_32
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onResume()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_32
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_40
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->j()V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z
:cond_40
return-void
.end method
.method  performSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->f()Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_14
const-string v1, "android:support:fragments"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_14
return-void
.end method
.method  performStart()V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
iput-boolean v1, v0, Landroid/support/v4/app/o;->s:Z
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z
:cond_e
iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_32
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onStart()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_32
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->i()V
:cond_3b
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_44
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->f()V
:cond_44
return-void
.end method
.method  performStop()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->k()V
:cond_9
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_2e
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onStop()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
return-void
.end method
.method public registerForContextMenu(Landroid/view/View;)V
.registers 2
invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
return-void
.end method
.method final restoreViewState(Landroid/os/Bundle;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
:cond_e
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_33
new-instance v0, Landroid/support/v4/app/aq;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onViewStateRestored()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
return-void
.end method
.method public setArguments(Landroid/os/Bundle;)V
.registers 4
iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I
if-ltz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Fragment already active"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
return-void
.end method
.method public setHasOptionsMenu(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eq v0, p1, :cond_17
iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->supportInvalidateOptionsMenu()V
:cond_17
return-void
.end method
.method final setIndex(ILandroid/support/v4/app/Fragment;)V
.registers 5
iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I
if-eqz p2, :cond_22
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
:goto_21
return-void
:cond_22
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "android:fragment:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
goto :goto_21
.end method
.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
.registers 4
iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I
if-ltz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Fragment already active"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-eqz p1, :cond_17
iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->a:Landroid/os/Bundle;
if-eqz v0, :cond_17
iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->a:Landroid/os/Bundle;
:goto_14
iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
return-void
:cond_17
const/4 v0, 0x0
goto :goto_14
.end method
.method public setMenuVisibility(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eq v0, p1, :cond_1b
iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_1b
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->supportInvalidateOptionsMenu()V
:cond_1b
return-void
.end method
.method public setRetainInstance(Z)V
.registers 4
if-eqz p1, :cond_e
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can\'t retain fragements that are nested in other fragments"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
return-void
.end method
.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
.registers 3
iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
return-void
.end method
.method public setUserVisibleHint(Z)V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez v0, :cond_10
if-eqz p1, :cond_10
iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I
const/4 v1, 0x4
if-ge v0, v1, :cond_10
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
invoke-virtual {v0, p0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)V
:cond_10
iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez p1, :cond_18
const/4 v0, 0x1
:goto_15
iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z
return-void
:cond_18
const/4 v0, 0x0
goto :goto_15
.end method
.method public startActivity(Landroid/content/Intent;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " not attached to Activity"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
const/4 v1, -0x1
invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/h;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
return-void
.end method
.method public startActivityForResult(Landroid/content/Intent;I)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " not attached to Activity"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/h;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {p0, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I
if-ltz v1, :cond_18
const-string v1, " #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_18
iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eqz v1, :cond_2a
const-string v1, " id=0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2a
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
if-eqz v1, :cond_38
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_38
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public unregisterForContextMenu(Landroid/view/View;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
return-void
.end method