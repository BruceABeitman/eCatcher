.class public Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Lcom/spotify/mobile/android/util/cu;

.field private p:Lcom/facebook/ak;

.field private q:Lcom/facebook/ae;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->q:Lcom/facebook/ae;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 8

    const/4 v3, 0x1

    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/facebook/Session;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/spotify/mobile/android/util/at;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/at;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->n:Lcom/spotify/mobile/android/util/cu;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/cu;->a(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->finish()V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-static {p0}, Lcom/spotify/mobile/android/util/at;->b(Landroid/app/Activity;)V

    goto :goto_2a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/16 v5, 0x65

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->p:Lcom/facebook/ak;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ak;->a(IILandroid/content/Intent;)V

    if-ne p1, v5, :cond_1a

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->n:Lcom/spotify/mobile/android/util/cu;

    if-eqz p2, :cond_2b

    move v0, v1

    :goto_13
    invoke-static {}, Lcom/spotify/mobile/android/util/at;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/spotify/mobile/android/util/cu;->a(ZLjava/lang/String;)V

    :cond_1a
    if-ne p1, v5, :cond_2d

    if-nez p2, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->n:Lcom/spotify/mobile/android/util/cu;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/cu;->a(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->finish()V

    :goto_2a
    return-void

    :cond_2b
    move v0, v2

    goto :goto_13

    :cond_2d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->n:Lcom/spotify/mobile/android/util/cu;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cu;->a(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->finish()V

    goto :goto_2a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/ak;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->q:Lcom/facebook/ae;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ak;-><init>(Landroid/app/Activity;Lcom/facebook/ae;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->p:Lcom/facebook/ak;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->p:Lcom/facebook/ak;

    invoke-virtual {v0, p1}, Lcom/facebook/ak;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->M:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    new-instance v0, Lcom/spotify/mobile/android/util/cu;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->n:Lcom/spotify/mobile/android/util/cu;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->p:Lcom/facebook/ak;

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->p:Lcom/facebook/ak;

    invoke-virtual {v0}, Lcom/facebook/ak;->b()V

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onResume()V

    invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/facebook/Session;->a()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/facebook/Session;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_15
    invoke-virtual {v0}, Lcom/facebook/Session;->c()Lcom/facebook/SessionState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    :cond_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->p:Lcom/facebook/ak;

    invoke-virtual {v0}, Lcom/facebook/ak;->a()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;->p:Lcom/facebook/ak;

    invoke-virtual {v0, p1}, Lcom/facebook/ak;->b(Landroid/os/Bundle;)V

    return-void
.end method
