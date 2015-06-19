.class public final Lcom/spotify/mobile/android/ui/fragments/logic/o;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/content/Intent;

.field private d:Lcom/spotify/mobile/android/ui/actions/d;

.field private e:Lcom/spotify/mobile/android/util/ca;

.field private f:Lcom/spotify/mobile/android/ui/actions/a;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->d:Lcom/spotify/mobile/android/ui/actions/d;

    const-class v0, Lcom/spotify/mobile/android/util/ca;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ca;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->e:Lcom/spotify/mobile/android/util/ca;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->f:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/o$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/o;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;->getPlaybackErrorAsClientEvent(I)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v1

    const-string v2, "target"

    if-eqz p3, :cond_1b

    move-object v0, p3

    :goto_a
    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->f:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    packed-switch p2, :pswitch_data_8a

    :pswitch_17
    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->c(Landroid/content/Context;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    move-object v0, p4

    goto :goto_a

    :pswitch_1d
    const v0, 0x7f0f03c9

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :pswitch_28
    const/4 v0, 0x4

    invoke-direct {p0, p4, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Ljava/lang/String;I)V

    goto :goto_1a

    :pswitch_2d
    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Ljava/lang/String;I)V

    goto :goto_1a

    :pswitch_32
    const v0, 0x7f0f0448

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :pswitch_3d
    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->f(Landroid/content/Context;)V

    goto :goto_1a

    :pswitch_41
    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->t(Landroid/content/Context;)V

    goto :goto_1a

    :pswitch_45
    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->g(Landroid/content/Context;)V

    goto :goto_1a

    :pswitch_49
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0xa

    invoke-direct {p0, v3, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Ljava/lang/String;I)V

    goto :goto_1a

    :cond_57
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Ljava/lang/String;I)V

    goto :goto_1a

    :pswitch_5c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    if-eqz p3, :cond_72

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    const-string v1, "radio_uri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_72
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    goto :goto_1a

    :pswitch_7c
    const/4 v0, 0x5

    invoke-direct {p0, p4, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Ljava/lang/String;I)V

    goto :goto_1a

    :pswitch_81
    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->d(Landroid/content/Context;)V

    goto :goto_1a

    :pswitch_85
    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->e(Landroid/content/Context;)V

    goto :goto_1a

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1d
        :pswitch_17
        :pswitch_3d
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_45
        :pswitch_41
        :pswitch_49
        :pswitch_5c
        :pswitch_7c
        :pswitch_49
        :pswitch_28
        :pswitch_2d
        :pswitch_81
        :pswitch_85
    .end packed-switch
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/o;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_13
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    const-string v1, "radio_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    const-string v1, "body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_26
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 7

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    if-ne p1, v0, :cond_37

    const/4 v0, -0x1

    if-ne p2, v0, :cond_37

    const-string v0, "radio_uri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "view_uri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const-string v2, "view_uri must be set to a Verified"

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_37

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->d:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    :cond_37
    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_17

    const-string v0, "request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    const-string v0, "request_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    :cond_17
    return-void
.end method

.method public final c()V
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    const-string v0, "request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "request_intent"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final r_()V
    .registers 5

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->r_()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->g:Landroid/content/BroadcastReceiver;

    const-string v2, "com.spotify.mobile.android.service.broadcast.session.PLAYBACK_ERROR"

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final s_()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->s_()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final x()V
    .registers 5

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->e:Lcom/spotify/mobile/android/util/ca;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ca;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->e:Lcom/spotify/mobile/android/util/ca;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ca;->c()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->e:Lcom/spotify/mobile/android/util/ca;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ca;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o;->e:Lcom/spotify/mobile/android/util/ca;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ca;->a()V

    return-void
.end method
