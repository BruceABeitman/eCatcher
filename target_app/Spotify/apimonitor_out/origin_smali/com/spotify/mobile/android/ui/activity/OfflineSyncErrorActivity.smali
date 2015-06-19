.class public Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "error_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyError;->a(I)Lcom/spotify/mobile/android/util/SpotifyError;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyError;->a:Lcom/spotify/mobile/android/util/SpotifyError;

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->finish()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->setResult(I)V

    :goto_1d
    return-void

    :cond_1e
    new-instance v1, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v1, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0296

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/SpotifyError;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0295

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->setResult(I)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->af:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    goto :goto_1d
.end method
