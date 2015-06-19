.class public Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field final n:Landroid/view/View$OnClickListener;

.field final p:Landroid/view/View$OnClickListener;

.field private q:Lcom/spotify/mobile/android/ui/actions/a;

.field private r:Lcom/spotify/android/paste/widget/DialogLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->q:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->q:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->r:Lcom/spotify/android/paste/widget/DialogLayout;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->r:Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->r:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f01df

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->r:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f01de

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->c(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->r:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f03f3

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->r:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f03f2

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aC:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void
.end method
