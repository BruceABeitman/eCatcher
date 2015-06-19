.class public Lcom/instagram/android/nux/SignedOutFragmentActivity;
.super Lcom/instagram/base/activity/a;
.source "SignedOutFragmentActivity.java"


# instance fields
.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    iput-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    iput-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    return-void
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    return-void
.end method

.method protected final h()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    new-instance v2, Lcom/instagram/android/nux/n;

    invoke-direct {v2}, Lcom/instagram/android/nux/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    :cond_21
    return-void
.end method

.method public final i()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    return-void
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    if-eqz v0, :cond_7

    invoke-super {p0}, Lcom/instagram/base/activity/a;->onBackPressed()V

    :cond_7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "allow_back"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    const-string v0, "is_nux_flow"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    const-string v0, "has_followed"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/activity/a;->onResume()V

    new-instance v0, Lcom/instagram/registrationpush/a;

    invoke-direct {v0, p0}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->b()V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->finish()V

    :cond_1b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "allow_back"

    iget-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_nux_flow"

    iget-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "has_followed"

    iget-boolean v1, p0, Lcom/instagram/android/nux/SignedOutFragmentActivity;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
