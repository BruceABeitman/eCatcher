.class public abstract Lcom/twidroid/fragments/a/f;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "FragmentPagerAdapter"
.field private static final b:Z
.field private final c:Landroid/support/v4/app/FragmentManager;
.field private d:Landroid/support/v4/app/FragmentTransaction;
.field private e:Landroid/support/v4/app/Fragment;
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
iput-object v0, p0, Lcom/twidroid/fragments/a/f;->e:Landroid/support/v4/app/Fragment;
iput-object p1, p0, Lcom/twidroid/fragments/a/f;->c:Landroid/support/v4/app/FragmentManager;
return-void
.end method
.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method
.method protected a(II)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "android:switcher:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->c:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
:cond_c
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
check-cast p3, Landroid/support/v4/app/Fragment;
invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
return-void
.end method
.method public finishUpdate(Landroid/view/ViewGroup;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->c:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
:cond_11
return-void
.end method
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 8
const/4 v4, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
if-nez v0, :cond_d
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->c:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
:cond_d
invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
move-result v0
invoke-virtual {p0, v0, p2}, Lcom/twidroid/fragments/a/f;->a(II)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/a/f;->c:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_2d
iget-object v1, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
:goto_22
iget-object v1, p0, Lcom/twidroid/fragments/a/f;->e:Landroid/support/v4/app/Fragment;
if-eq v0, v1, :cond_2c
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
:cond_2c
return-object v0
:cond_2d
invoke-virtual {p0, p2}, Lcom/twidroid/fragments/a/f;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/a/f;->d:Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
move-result v2
invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
move-result v3
invoke-virtual {p0, v3, p2}, Lcom/twidroid/fragments/a/f;->a(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
goto :goto_22
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
.registers 3
return-void
.end method
.method public saveState()Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
check-cast p3, Landroid/support/v4/app/Fragment;
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->e:Landroid/support/v4/app/Fragment;
if-eq p3, v0, :cond_2c
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->e:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->e:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/a/f;->e:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
:cond_1c
if-eqz p3, :cond_2a
invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
:cond_2a
iput-object p3, p0, Lcom/twidroid/fragments/a/f;->e:Landroid/support/v4/app/Fragment;
:cond_2c
return-void
.end method
.method public startUpdate(Landroid/view/ViewGroup;)V
.registers 2
return-void
.end method