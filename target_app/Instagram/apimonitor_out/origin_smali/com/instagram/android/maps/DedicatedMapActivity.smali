.class public Lcom/instagram/android/maps/DedicatedMapActivity;
.super Lcom/instagram/base/activity/a;
.source "DedicatedMapActivity.java"


# instance fields
.field private p:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    return-void
.end method

.method private i()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final g()Landroid/app/LocalActivityManager;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method protected final h()V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_36

    new-instance v0, Lcom/instagram/android/maps/a;

    invoke-direct {v0}, Lcom/instagram/android/maps/a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARGUMENT_USER_ID"

    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    :cond_36
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const-string v0, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-super {p0}, Lcom/instagram/base/activity/a;->onBackPressed()V

    goto :goto_1f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_11

    const-string v0, "android:states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_b
    iget-object v1, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/activity/a;->onDestroy()V

    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/instagram/android/maps/DedicatedMapActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "android:states"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/activity/a;->onStop()V

    iget-object v0, p0, Lcom/instagram/android/maps/DedicatedMapActivity;->p:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    return-void
.end method
