.class public final Lcom/google/android/gms/dynamic/b;
.super Lcom/google/android/gms/dynamic/c$a;


# instance fields
.field private Mg:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/c$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    return-void
.end method

.method public static a(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/google/android/gms/dynamic/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/b;-><init>(Landroid/app/Fragment;)V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public c(Lcom/google/android/gms/dynamic/d;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/dynamic/d;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public gD()Lcom/google/android/gms/dynamic/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public gE()Lcom/google/android/gms/dynamic/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public gF()Lcom/google/android/gms/dynamic/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public gG()Lcom/google/android/gms/dynamic/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getId()I

    move-result v0

    return v0
.end method

.method public getRetainInstance()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getRetainInstance()Z

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetRequestCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v0

    return v0
.end method

.method public getUserVisibleHint()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public getView()Lcom/google/android/gms/dynamic/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public isAdded()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public isDetached()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isInLayout()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isInLayout()Z

    move-result v0

    return v0
.end method

.method public isRemoving()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    return v0
.end method

.method public isResumed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
