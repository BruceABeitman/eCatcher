.class public Lcom/twidroid/SingleTweetActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "EXTRA_TWEET"

.field public static final c:Ljava/lang/String; = "EXTRA_STATUS_ID"

.field public static final d:Ljava/lang/String; = "EXTRA_HIDE_DETAILS"

.field public static final e:Ljava/lang/String; = "EXTRA_RECIPIENT_USER_ID"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/twidroid/SingleTweetActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/twidroid/SingleTweetActivity;->J:Lcom/twidroid/UberSocialApplication;

    const v1, 0x7f0c02f2

    invoke-virtual {p0}, Lcom/twidroid/SingleTweetActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/twidroid/SingleTweetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/SingleTweetActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/twidroid/SingleTweetActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0c02ce

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->e(I)V

    :cond_2e
    new-instance v2, Lcom/twidroid/fragments/f;

    invoke-direct {v2}, Lcom/twidroid/fragments/f;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/SingleTweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "EXTRA_TWEET"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "EXTRA_TWEET"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v2, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/model/twitter/Tweet;)V

    :cond_4a
    :goto_4a
    const-string v0, "EXTRA_HIDE_DETAILS"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "EXTRA_HIDE_DETAILS"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/twidroid/fragments/f;->e:Z

    :cond_5b
    const v0, 0x7f0900ec

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :cond_65
    const-string v0, "EXTRA_STATUS_ID"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_4a
.end method
