.class public Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/Session;

.field private b:Lcom/facebook/ak;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 7

    const/4 v3, 0x1

    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_17

    invoke-static {p0, p2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->finish()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {p1}, Lcom/facebook/SessionState;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/cu;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/spotify/mobile/android/util/cu;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->finish()V

    goto :goto_16

    :cond_2d
    invoke-virtual {p1}, Lcom/facebook/SessionState;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->finish()V

    goto :goto_16
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->b:Lcom/facebook/ak;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ak;->a(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1a

    sget-object v0, Lcom/spotify/mobile/android/util/at;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/at;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/spotify/mobile/android/util/at;->b(Landroid/app/Activity;)V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;)V

    new-instance v1, Lcom/facebook/ak;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ak;-><init>(Landroid/app/Activity;Lcom/facebook/ae;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->b:Lcom/facebook/ak;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->b:Lcom/facebook/ak;

    invoke-virtual {v0, p1}, Lcom/facebook/ak;->a(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->c()Lcom/facebook/SessionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/SessionState;->b()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_2a
    new-instance v0, Lcom/facebook/Session;

    invoke-direct {v0, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    :cond_34
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->finish()V

    :goto_3f
    return-void

    :cond_40
    :try_start_40
    invoke-static {p0}, Lcom/spotify/mobile/android/util/at;->a(Landroid/app/Activity;)V
    :try_end_43
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_3f

    :catch_44
    move-exception v0

    const-string v1, "error requesting read permissions"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/spotify/mobile/android/util/dp;->i(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->finish()V

    goto :goto_3f
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->b:Lcom/facebook/ak;

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->b:Lcom/facebook/ak;

    invoke-virtual {v0}, Lcom/facebook/ak;->b()V

    const-string v0, "com.spotify.mobile.android.service.action.client.BACKGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->b:Lcom/facebook/ak;

    invoke-virtual {v0}, Lcom/facebook/ak;->a()V

    const-string v0, "com.spotify.mobile.android.service.action.client.FOREGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/facebook/Session;->a()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Lcom/facebook/Session;->b()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_23
    invoke-virtual {v0}, Lcom/facebook/Session;->c()Lcom/facebook/SessionState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a(Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    :cond_2b
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->b:Lcom/facebook/ak;

    invoke-virtual {v0, p1}, Lcom/facebook/ak;->b(Landroid/os/Bundle;)V

    return-void
.end method
