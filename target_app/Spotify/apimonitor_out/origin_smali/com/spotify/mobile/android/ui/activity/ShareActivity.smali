.class public Lcom/spotify/mobile/android/ui/activity/ShareActivity;
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
    .registers 10

    const v7, 0x7f0a01db

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "include_share_to_spotify"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "twitter_share_text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "friend_to_friend_email_specific_subject"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "friend_to_friend_email_specific_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_7a

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    :cond_7a
    return-void
.end method
