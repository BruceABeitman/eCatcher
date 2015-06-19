.class public Lcom/spotify/mobile/android/ui/activity/NotificationWebViewActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/NotificationWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->m()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/NotificationWebViewActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    const-string v1, "notification_webview"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/i;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/i;->D()Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onBackPressed()V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/NotificationWebViewActivity;->setContentView(I)V

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/NotificationWebViewActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    const v1, 0x7f0a022b

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/i;

    invoke-direct {v2}, Lcom/spotify/mobile/android/ui/fragments/i;-><init>()V

    const-string v3, "notification_webview"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    :cond_24
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aY:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/NotificationWebViewActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void
.end method
