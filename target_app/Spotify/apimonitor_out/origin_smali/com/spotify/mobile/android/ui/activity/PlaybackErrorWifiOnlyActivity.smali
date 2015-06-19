.class public Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# static fields
.field private static final p:Lcom/spotify/mobile/android/util/ViewUri$Verified;


# instance fields
.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aA:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->setContentView(I)V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/spotify/mobile/android/util/bv;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/spotify/mobile/android/util/bv;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0221

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0222

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "radio_uri"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->n:Ljava/lang/String;

    if-eqz p1, :cond_59

    const-string v3, "radio_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->n:Ljava/lang/String;

    :cond_59
    invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->setResult(I)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->n:Ljava/lang/String;

    if-eqz v3, :cond_b1

    move v3, v4

    :goto_61
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v3, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$2;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v3, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v3

    check-cast v3, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v3, 0x7f020061

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_8b
    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_a7

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_a7

    sget-object v0, Lcom/spotify/mobile/android/util/bv;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a7
    sget-object v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void

    :cond_b1
    move v3, v5

    goto :goto_61
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "radio_uri"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
