.class public abstract Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Lcom/spotify/mobile/android/util/dw;

.field protected o:Lcom/spotify/mobile/android/service/connections/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->n:Lcom/spotify/mobile/android/util/dw;

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/util/dw;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->n:Lcom/spotify/mobile/android/util/dw;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0}, Lcom/spotify/android/paste/app/FontSupport;->a(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/b;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    invoke-static {v0, p2, p0}, Lcom/spotify/mobile/android/util/y;->a(Lcom/spotify/mobile/android/service/connections/b;Landroid/view/KeyEvent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->n:Lcom/spotify/mobile/android/util/dw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->n:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    :cond_c
    const-string v0, "com.spotify.mobile.android.service.action.client.BACKGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->n:Lcom/spotify/mobile/android/util/dw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->n:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    :cond_c
    const-string v0, "com.spotify.mobile.android.service.action.client.FOREGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/j;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/activity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/j;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V

    :cond_d
    invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/j;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/activity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/j;->b()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method
