.class public Lcom/twidroid/activity/ConversationViewActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/ConversationViewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twidroid/activity/ConversationViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    const v1, 0x7f0c00d9

    invoke-virtual {p0}, Lcom/twidroid/activity/ConversationViewActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/twidroid/activity/ConversationViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/f;

    invoke-direct {v1}, Lcom/twidroid/fragments/f;-><init>()V

    invoke-virtual {v1}, Lcom/twidroid/fragments/f;->c()V

    const v2, 0x7f0900ec

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/twidroid/activity/ConversationViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_TWEET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "EXTRA_TWEET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/model/twitter/Tweet;)V

    :cond_4a
    return-void
.end method
