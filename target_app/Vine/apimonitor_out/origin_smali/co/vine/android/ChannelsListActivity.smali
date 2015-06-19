.class public Lco/vine/android/ChannelsListActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "ChannelsListActivity.java"


# static fields
.field public static final EXTRA_CHANNEL:Ljava/lang/String; = "channel"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final EXTRA_SELECTED_CHANNEL:Ljava/lang/String; = "selected_channel"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelSelected(JLjava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "channel"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lco/vine/android/ChannelsListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lco/vine/android/ChannelsListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    const v4, 0x7f030046

    invoke-super {p0, p1, v4, v8}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0, v8}, Lco/vine/android/ChannelsListActivity;->setRequestedOrientation(I)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const v6, 0x7f0e01bd

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lco/vine/android/ChannelsListActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    invoke-virtual {p0}, Lco/vine/android/ChannelsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez p1, :cond_58

    new-instance v0, Lco/vine/android/ChannelsListFragment;

    invoke-direct {v0}, Lco/vine/android/ChannelsListFragment;-><init>()V

    const-string v4, "selected_channel"

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "refresh"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "take_focus"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "selected_channel"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v1, v9}, Lco/vine/android/BaseCursorListFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lco/vine/android/ChannelsListFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/ChannelsListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0a0102

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_58
    return-void
.end method
