.class public Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private a()Lcom/spotify/mobile/android/ui/activity/upsell/q;
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    const-string v1, "premium_signup"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/q;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->a()Lcom/spotify/mobile/android/ui/activity/upsell/q;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a(IILandroid/content/Intent;)V

    :goto_c
    return-void

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_c
.end method

.method public onBackPressed()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->a()Lcom/spotify/mobile/android/ui/activity/upsell/q;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->D()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onBackPressed()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->setContentView(I)V

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    const v1, 0x7f0a022d

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/q;

    invoke-direct {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/q;-><init>()V

    const-string v3, "premium_signup"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    :cond_24
    const v0, 0x7f0a0223

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->av:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void
.end method
