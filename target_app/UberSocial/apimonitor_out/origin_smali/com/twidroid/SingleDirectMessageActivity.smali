.class public Lcom/twidroid/SingleDirectMessageActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "EXTRA_ACTION_SCREENNAME"

.field public static final c:Ljava/lang/String; = "EXTRA_ACTION_RECIPIENT_ID"

.field public static final d:Ljava/lang/String; = "EXTRA_MESSAGE"

.field public static final e:Ljava/lang/String; = "EXTRA_MESSAGE_ID"

.field public static final f:Ljava/lang/String; = "EXTRA_CLOSE_AFTER_SEND_FLAG"

.field private static h:Ljava/lang/String;


# instance fields
.field g:Lcom/twidroid/fragments/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SingleDirectMessageActivity"

    sput-object v0, Lcom/twidroid/SingleDirectMessageActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/twidroid/SingleDirectMessageActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/twidroid/SingleDirectMessageActivity;->J:Lcom/twidroid/UberSocialApplication;

    const v1, 0x7f0c02f2

    invoke-virtual {p0}, Lcom/twidroid/SingleDirectMessageActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/twidroid/SingleDirectMessageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/SingleDirectMessageActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->c(Z)V

    invoke-virtual {p0}, Lcom/twidroid/SingleDirectMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "EXTRA_ACTION_SCREENNAME"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    new-instance v0, Lcom/twidroid/fragments/b;

    const-string v3, "EXTRA_ACTION_SCREENNAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/twidroid/fragments/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    :cond_3f
    :goto_3f
    const-string v0, "notification_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/twidroid/d/q;->b:Lcom/twidroid/d/q;

    const-string v3, "notification_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3, p0}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;ILandroid/content/Context;)V

    :cond_52
    iget-object v0, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "singledmfragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twidroid/fragments/b;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    const-string v3, "EXTRA_CLOSE_AFTER_SEND_FLAG"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twidroid/fragments/b;->a(Z)V

    if-eqz p1, :cond_8e

    const-string v0, "dmtext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    const-string v2, "dmtext"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twidroid/fragments/b;->a(Ljava/lang/String;)V

    :cond_8e
    const v0, 0x7f0900ec

    iget-object v2, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :cond_9a
    const-string v0, "EXTRA_MESSAGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v3, Lcom/twidroid/fragments/b;

    const-string v0, "EXTRA_MESSAGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-direct {v3, v0}, Lcom/twidroid/fragments/b;-><init>(Lcom/twidroid/model/twitter/DirectMessage;)V

    iput-object v3, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    goto :goto_3f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "dmtext"

    iget-object v1, p0, Lcom/twidroid/SingleDirectMessageActivity;->g:Lcom/twidroid/fragments/b;

    invoke-virtual {v1}, Lcom/twidroid/fragments/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onStop()V

    return-void
.end method
