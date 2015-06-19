.class public final Lcom/instagram/android/maps/a;
.super Lcom/instagram/base/a/b;
.source "MapFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, " tag"

    sput-object v0, Lcom/instagram/android/maps/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    :cond_46
    return-void
.end method

.method public final F()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    :cond_35
    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    return-void
.end method

.method public final G()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/maps/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/instagram/android/maps/a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-class v2, Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    sget-object v2, Lcom/instagram/android/maps/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/a;->a:Landroid/view/Window;

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/DedicatedMapActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/DedicatedMapActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/maps/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/a/b;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/instagram/a/b;

    invoke-interface {v0, p1}, Lcom/instagram/a/b;->a(Lcom/instagram/a/a;)V

    :cond_19
    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARGUMENT_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "self_photomap"

    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, "photomap"

    goto :goto_1a
.end method

.method public final j_()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final k_()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    invoke-virtual {p0}, Lcom/instagram/android/maps/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final l_()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    return-void
.end method
