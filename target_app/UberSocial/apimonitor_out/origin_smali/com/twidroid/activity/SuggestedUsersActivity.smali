.class public Lcom/twidroid/activity/SuggestedUsersActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "com.twidroid.activity.SuggestedUsersActivity"


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

    const v0, 0x7f030077

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/SuggestedUsersActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twidroid/activity/SuggestedUsersActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    const v1, 0x7f0c02f3

    invoke-virtual {p0}, Lcom/twidroid/activity/SuggestedUsersActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V

    return-void
.end method
