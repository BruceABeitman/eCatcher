.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;
.field static final OP_ADD:I = 0x1
.field static final OP_ATTACH:I = 0x7
.field static final OP_DETACH:I = 0x6
.field static final OP_HIDE:I = 0x4
.field static final OP_NULL:I = 0x0
.field static final OP_REMOVE:I = 0x3
.field static final OP_REPLACE:I = 0x2
.field static final OP_SHOW:I = 0x5
.field static final TAG:Ljava/lang/String; = "FragmentManager"
.field  mAddToBackStack:Z
.field  mAllowAddToBackStack:Z
.field  mBreadCrumbShortTitleRes:I
.field  mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
.field  mBreadCrumbTitleRes:I
.field  mBreadCrumbTitleText:Ljava/lang/CharSequence;
.field  mCommitted:Z
.field  mEnterAnim:I
.field  mExitAnim:I
.field  mHead:Landroid/support/v4/app/BackStackRecord$Op;
.field  mIndex:I
.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;
.field  mName:Ljava/lang/String;
.field  mNumOp:I
.field  mPopEnterAnim:I
.field  mPopExitAnim:I
.field  mTail:Landroid/support/v4/app/BackStackRecord$Op;
.field  mTransition:I
.field  mTransitionStyle:I
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
return-void
.end method
.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
.registers 9
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
if-eqz p3, :cond_46
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
if-eqz v1, :cond_44
iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_44
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Can\'t change tag of fragment "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ": was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " now "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_44
iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
:cond_46
if-eqz p1, :cond_86
iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eqz v1, :cond_82
iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eq v1, p1, :cond_82
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Can\'t change container ID of fragment "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ": was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " now "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_82
iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I
:cond_86
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-void
.end method
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method  addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
if-nez v0, :cond_1f
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_8
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I
return-void
:cond_1f
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_8
.end method
.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
return-object p0
.end method
.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x7
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method  bumpBackStackNesting(I)V
.registers 8
iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-nez v3, :cond_5
:cond_4
return-void
:cond_5
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_2e
const-string/jumbo v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Bump nesting in "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " by "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2e
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_30
if-eqz v1, :cond_4
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
if-eqz v3, :cond_6c
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
add-int/2addr v4, p1
iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_6c
const-string/jumbo v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Bump nesting of "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " to "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_6c
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-eqz v3, :cond_b5
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v0, v3, -0x1
:goto_78
if-ltz v0, :cond_b5
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
add-int/2addr v3, p1
iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_b2
const-string/jumbo v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Bump nesting of "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " to "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_b2
add-int/lit8 v0, v0, -0x1
goto :goto_78
:cond_b5
iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
goto/16 :goto_30
.end method
.method public commit()I
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I
move-result v0
return v0
.end method
.method public commitAllowingStateLoss()I
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I
move-result v0
return v0
.end method
.method  commitInternal(Z)I
.registers 8
const/4 v5, 0x0
iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
if-eqz v2, :cond_e
new-instance v2, Ljava/lang/IllegalStateException;
const-string/jumbo v3, "commit already called"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_e
sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v2, :cond_3f
const-string/jumbo v2, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Commit: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Landroid/support/v4/util/LogWriter;
const-string/jumbo v2, "FragmentManager"
invoke-direct {v0, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string/jumbo v2, "  "
invoke-virtual {p0, v2, v5, v1, v5}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_3f
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v2, :cond_56
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
move-result v2
iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
:goto_4e
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V
iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
return v2
:cond_56
const/4 v2, -0x1
iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
goto :goto_4e
.end method
.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x6
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "This transaction is already being added to the back stack"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
return-object p0
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
.registers 11
if-eqz p3, :cond_e7
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "mName="
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " mIndex="
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V
const-string/jumbo v5, " mCommitted="
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
if-eqz v5, :cond_4b
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "mTransition=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " mTransitionStyle=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_4b
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
if-nez v5, :cond_53
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
if-eqz v5, :cond_74
:cond_53
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "mEnterAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " mExitAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_74
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
if-nez v5, :cond_7c
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
if-eqz v5, :cond_9d
:cond_7c
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "mPopEnterAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " mPopExitAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_9d
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
if-nez v5, :cond_a5
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
if-eqz v5, :cond_c2
:cond_a5
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "mBreadCrumbTitleRes=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " mBreadCrumbTitleText="
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_c2
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
if-nez v5, :cond_ca
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
if-eqz v5, :cond_e7
:cond_ca
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " mBreadCrumbShortTitleText="
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_e7
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
if-eqz v5, :cond_218
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "Operations:"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "    "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
const/4 v3, 0x0
:goto_10b
if-eqz v4, :cond_218
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v5, :pswitch_data_21a
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "cmd="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_128
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "  Op #"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V
const-string/jumbo v5, ": "
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " "
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
if-eqz p3, :cond_19c
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
if-nez v5, :cond_152
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
if-eqz v5, :cond_173
:cond_152
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "enterAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " exitAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_173
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
if-nez v5, :cond_17b
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
if-eqz v5, :cond_19c
:cond_17b
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "popEnterAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, " popExitAnim=#"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_19c
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-eqz v5, :cond_212
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_212
const/4 v1, 0x0
:goto_1a9
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-ge v1, v5, :cond_212
invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
const/4 v6, 0x1
if-ne v5, v6, :cond_1f7
const-string/jumbo v5, "Removed: "
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:goto_1c3
iget-object v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_1a9
:pswitch_1cf
const-string/jumbo v0, "NULL"
goto/16 :goto_128
:pswitch_1d4
const-string/jumbo v0, "ADD"
goto/16 :goto_128
:pswitch_1d9
const-string/jumbo v0, "REPLACE"
goto/16 :goto_128
:pswitch_1de
const-string/jumbo v0, "REMOVE"
goto/16 :goto_128
:pswitch_1e3
const-string/jumbo v0, "HIDE"
goto/16 :goto_128
:pswitch_1e8
const-string/jumbo v0, "SHOW"
goto/16 :goto_128
:pswitch_1ed
const-string/jumbo v0, "DETACH"
goto/16 :goto_128
:pswitch_1f2
const-string/jumbo v0, "ATTACH"
goto/16 :goto_128
:cond_1f7
if-nez v1, :cond_1ff
const-string/jumbo v5, "Removed:"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_1ff
invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v5, "  #"
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V
const-string/jumbo v5, ": "
invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
goto :goto_1c3
:cond_212
iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
add-int/lit8 v3, v3, 0x1
goto/16 :goto_10b
:cond_218
return-void
nop
:pswitch_data_21a
.packed-switch 0x0
:pswitch_1cf
:pswitch_1d4
:pswitch_1d9
:pswitch_1de
:pswitch_1e3
:pswitch_1e8
:pswitch_1ed
:pswitch_1f2
.end packed-switch
.end method
.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
.registers 3
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
goto :goto_e
.end method
.method public getBreadCrumbShortTitleRes()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
return v0
.end method
.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
.registers 3
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
goto :goto_e
.end method
.method public getBreadCrumbTitleRes()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
return v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getTransition()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
return v0
.end method
.method public getTransitionStyle()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
return v0
.end method
.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x4
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public isAddToBackStackAllowed()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
return v0
.end method
.method public isEmpty()Z
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public popFromBackStack(Z)V
.registers 14
const/4 v10, 0x0
const/4 v9, 0x0
const/4 v11, -0x1
sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v6, :cond_34
const-string/jumbo v6, "FragmentManager"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "popFromBackStack: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Landroid/support/v4/util/LogWriter;
const-string/jumbo v6, "FragmentManager"
invoke-direct {v2, v6}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v5, Ljava/io/PrintWriter;
invoke-direct {v5, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string/jumbo v6, "  "
invoke-virtual {p0, v6, v10, v5, v10}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_34
invoke-virtual {p0, v11}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;
:goto_39
if-eqz v4, :cond_105
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v6, :pswitch_data_128
new-instance v6, Ljava/lang/IllegalArgumentException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "Unknown cmd: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget v8, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:pswitch_5c
iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v7}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v7
iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
:goto_6f
:cond_6f
iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_39
:pswitch_72
iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_87
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v7}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v7
iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
:cond_87
iget-object v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-eqz v6, :cond_6f
const/4 v1, 0x0
:goto_8c
iget-object v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
if-ge v1, v6, :cond_6f
iget-object v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/app/Fragment;
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iput v6, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v6, v3, v9}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_8c
:pswitch_a8
iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v6, v0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
goto :goto_6f
:pswitch_b4
iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v7}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v7
iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_6f
:pswitch_c8
iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v7}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v7
iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_6f
:pswitch_dc
iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v7}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v7
iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_6f
:pswitch_f0
iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v6, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v7}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v7
iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_6f
:cond_105
if-eqz p1, :cond_119
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v7, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v8}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v8
iget v9, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
const/4 v10, 0x1
invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V
:cond_119
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v6, :cond_126
iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V
iput v11, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
:cond_126
return-void
nop
:pswitch_data_128
.packed-switch 0x1
:pswitch_5c
:pswitch_72
:pswitch_a8
:pswitch_b4
:pswitch_c8
:pswitch_dc
:pswitch_f0
.end packed-switch
.end method
.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x3
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
return-object v0
.end method
.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 6
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Must use non-zero containerViewId"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
const/4 v0, 0x2
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public run()V
.registers 10
const/4 v8, 0x1
const/4 v7, 0x0
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_20
const-string/jumbo v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "Run: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v4, :cond_31
iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-gez v4, :cond_31
new-instance v4, Ljava/lang/IllegalStateException;
const-string/jumbo v5, "addToBackStack() called after commit()"
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v4
:cond_31
invoke-virtual {p0, v8}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;
:goto_36
if-eqz v3, :cond_172
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v4, :pswitch_data_18a
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "Unknown cmd: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:pswitch_59
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
:cond_64
:goto_64
iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;
goto :goto_36
:pswitch_67
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v4, :cond_110
const/4 v1, 0x0
:goto_70
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_110
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_ad
const-string/jumbo v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "OP_REPLACE: adding="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " old="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_ad
if-eqz v0, :cond_b5
iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I
iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
if-ne v4, v5, :cond_ba
:cond_b5
if-ne v2, v0, :cond_bd
const/4 v0, 0x0
iput-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
:goto_ba
:cond_ba
add-int/lit8 v1, v1, 0x1
goto :goto_70
:cond_bd
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
if-nez v4, :cond_c8
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
:cond_c8
iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iput v4, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v4, :cond_106
iget v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
add-int/lit8 v4, v4, 0x1
iput v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_106
const-string/jumbo v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "Bump nesting of "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " to "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_106
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v4, v2, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
goto :goto_ba
:cond_110
if-eqz v0, :cond_64
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
goto/16 :goto_64
:pswitch_11d
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_64
:pswitch_12e
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_64
:pswitch_13f
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_64
:pswitch_150
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_64
:pswitch_161
iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V
goto/16 :goto_64
:cond_172
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V
iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v4, :cond_188
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
:cond_188
return-void
nop
:pswitch_data_18a
.packed-switch 0x1
:pswitch_59
:pswitch_67
:pswitch_11d
:pswitch_12e
:pswitch_13f
:pswitch_150
:pswitch_161
.end packed-switch
.end method
.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 3
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.registers 3
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 3
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.registers 3
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
return-object v0
.end method
.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
.registers 5
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
return-object p0
.end method
.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
.registers 2
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
return-object p0
.end method
.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 2
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
return-object p0
.end method
.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x5
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string/jumbo v1, "BackStackEntry{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v1, :cond_27
const-string/jumbo v1, " #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_27
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
if-eqz v1, :cond_36
const-string/jumbo v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_36
const-string/jumbo v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method