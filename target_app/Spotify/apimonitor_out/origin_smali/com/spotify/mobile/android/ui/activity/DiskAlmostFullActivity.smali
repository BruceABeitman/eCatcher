.class public Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;
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
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0f01f3

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V

    const v1, 0x7f0f01f1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->c(I)V

    const v1, 0x7f0f01f2

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ag:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void
.end method
