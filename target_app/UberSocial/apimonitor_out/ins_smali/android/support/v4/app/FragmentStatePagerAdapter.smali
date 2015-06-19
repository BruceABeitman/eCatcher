.class public abstract Landroid/support/v4/app/FragmentStatePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"
.field private static final DEBUG:Z = false
.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;
.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;
.field private mFragments:Ljava/util/ArrayList;
.field private mSavedState:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
iput-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;
iput-object p1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
return-void
.end method
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 7
const/4 v2, 0x0
check-cast p3, Landroid/support/v4/app/Fragment;
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
if-nez v0, :cond_f
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
:goto_f
:cond_f
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gt v0, p2, :cond_1d
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_1d
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
move-result-object v1
invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
return-void
.end method
.method public finishUpdate(Landroid/view/ViewGroup;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
:cond_11
return-void
.end method
.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-le v0, p2, :cond_14
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_14
:goto_13
return-object v0
:cond_14
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
if-nez v0, :cond_20
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
:cond_20
invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;
move-result-object v1
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-le v0, p2, :cond_39
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment$SavedState;
if-eqz v0, :cond_39
invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
:cond_39
:goto_39
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gt v0, p2, :cond_48
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_39
:cond_48
invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
move-result v2
invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-object v0, v1
goto :goto_13
.end method
.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
check-cast p2, Landroid/support/v4/app/Fragment;
invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v0
if-ne v0, p1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
.registers 9
const/4 v2, 0x0
if-eqz p1, :cond_89
check-cast p1, Landroid/os/Bundle;
invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
const-string v0, "states"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
move-result-object v3
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
if-eqz v3, :cond_2b
move v1, v2
:goto_1b
array-length v0, v3
if-ge v1, v0, :cond_2b
iget-object v4, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
aget-object v0, v3, v1
check-cast v0, Landroid/support/v4/app/Fragment$SavedState;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1b
:cond_2b
invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_33
:cond_33
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_89
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v3, "f"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_33
const/4 v3, 0x1
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
iget-object v4, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v4, p1, v0}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v4
if-eqz v4, :cond_70
:goto_58
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gt v0, v3, :cond_67
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
const/4 v5, 0x0
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_58
:cond_67
invoke-virtual {v4, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_33
:cond_70
const-string v3, "FragmentStatePagerAdapter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Bad fragment at key "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_33
:cond_89
return-void
.end method
.method public saveState()Landroid/os/Parcelable;
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_20
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget-object v1, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v1, v1, [Landroid/support/v4/app/Fragment$SavedState;
iget-object v2, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
const-string v2, "states"
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
:cond_20
const/4 v1, 0x0
move-object v2, v0
:goto_22
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_57
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_53
if-nez v2, :cond_3b
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
:cond_3b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "f"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v4, v2, v3, v0}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
:cond_53
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_22
:cond_57
return-object v2
.end method
.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
check-cast p3, Landroid/support/v4/app/Fragment;
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;
if-eq p3, v0, :cond_20
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
iget-object v0, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
:cond_16
if-eqz p3, :cond_1e
invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
:cond_1e
iput-object p3, p0, Landroid/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;
:cond_20
return-void
.end method
.method public startUpdate(Landroid/view/ViewGroup;)V
.registers 2
return-void
.end method