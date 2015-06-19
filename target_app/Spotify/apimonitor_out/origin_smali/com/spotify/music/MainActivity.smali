.class public Lcom/spotify/music/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/session/d;
.implements Lcom/spotify/mobile/android/service/session/f;
.implements Lcom/spotify/mobile/android/ui/activity/n;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Lcom/spotify/mobile/android/util/t;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Lcom/spotify/mobile/android/ui/activity/o;

.field private H:Lcom/spotify/music/b;

.field private I:Lcom/spotify/mobile/android/util/ae;

.field private J:Lcom/spotify/mobile/android/util/du;

.field private K:Lcom/spotify/music/a;

.field private L:Lcom/spotify/mobile/android/ui/actions/a;

.field private M:Lcom/spotify/mobile/android/ui/actions/d;

.field private N:Lcom/spotify/mobile/android/service/flow/logic/c;

.field private O:Lcom/spotify/mobile/android/util/a/a;

.field private P:Lcom/spotify/mobile/android/service/connections/b;

.field private Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

.field private R:Z

.field private S:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

.field private T:Lcom/spotify/mobile/android/ui/view/snackbar/c;

.field private U:Lcom/spotify/mobile/android/util/tracking/debug/a;

.field private V:Lcom/spotify/mobile/android/ui/fragments/logic/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/fragments/logic/g",
            "<",
            "Ljava/lang/Boolean;",
            "Lcom/spotify/mobile/android/ui/fragments/logic/f;",
            ">;"
        }
    .end annotation
.end field

.field private W:Lcom/spotify/mobile/android/service/feature/a;

.field private X:Lcom/spotify/mobile/android/service/session/d;

.field private Y:Landroid/content/BroadcastReceiver;

.field private Z:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/support/v4/widget/g;

.field private ab:Lcom/spotify/mobile/android/ui/k;

.field private o:Lcom/spotify/mobile/android/ui/ActionBarManager;

.field private p:Lcom/spotify/mobile/android/ui/fragments/g;

.field private q:Lcom/spotify/mobile/android/service/feature/c;

.field private r:Lcom/spotify/mobile/android/service/session/e;

.field private s:Lcom/spotify/mobile/android/ui/f;

.field private t:Lcom/spotify/mobile/android/ui/d;

.field private u:Landroid/support/v4/widget/DrawerLayout;

.field private v:Landroid/support/v4/app/a;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/music/MainActivity;->A:I

    iput-boolean v1, p0, Lcom/spotify/music/MainActivity;->C:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->J:Lcom/spotify/mobile/android/util/du;

    new-instance v0, Lcom/spotify/music/a;

    invoke-direct {v0, p0}, Lcom/spotify/music/a;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->K:Lcom/spotify/music/a;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->M:Lcom/spotify/mobile/android/ui/actions/d;

    const-class v0, Lcom/spotify/mobile/android/service/flow/logic/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/c;

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->N:Lcom/spotify/mobile/android/service/flow/logic/c;

    const-class v0, Lcom/spotify/mobile/android/util/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/a/a;

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->O:Lcom/spotify/mobile/android/util/a/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;-><init>()V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    iput-boolean v1, p0, Lcom/spotify/music/MainActivity;->R:Z

    new-instance v0, Lcom/spotify/music/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/music/MainActivity$1;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->V:Lcom/spotify/mobile/android/ui/fragments/logic/g;

    new-instance v0, Lcom/spotify/music/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/spotify/music/MainActivity$4;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->W:Lcom/spotify/mobile/android/service/feature/a;

    new-instance v0, Lcom/spotify/music/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/spotify/music/MainActivity$5;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->X:Lcom/spotify/mobile/android/service/session/d;

    new-instance v0, Lcom/spotify/music/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/spotify/music/MainActivity$6;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->Y:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/spotify/music/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/spotify/music/MainActivity$7;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->Z:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/spotify/music/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/spotify/music/MainActivity$8;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->aa:Landroid/support/v4/widget/g;

    new-instance v0, Lcom/spotify/music/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/spotify/music/MainActivity$10;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->ab:Lcom/spotify/mobile/android/ui/k;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 7

    const-string v0, "Don\'t call with empty URI"

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/spotify/music/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_24

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_24
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->h()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/b/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)V

    :cond_13
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/MainActivity;->t:Lcom/spotify/mobile/android/ui/d;

    iget-object v2, p0, Lcom/spotify/music/MainActivity;->E:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/util/SpotifyLink;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v1

    if-eqz v1, :cond_35

    sget-object v2, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v0, "extra_clear_backstack"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/mobile/android/ui/fragments/e;Z)V

    :cond_34
    :goto_34
    :pswitch_34
    return-void

    :cond_35
    sget-object v1, Lcom/spotify/music/MainActivity$3;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12e

    const-string v0, "If you end up here, SpotifyLink is b0rken."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_34

    :pswitch_4a
    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->M:Lcom/spotify/mobile/android/ui/actions/d;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/Metadata$Track;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->M:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/app/Activity;)V

    goto :goto_34

    :cond_67
    iget-object v1, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ae;->b()V

    :cond_70
    new-instance v1, Lcom/spotify/mobile/android/util/ae;

    new-instance v2, Lcom/spotify/music/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/spotify/music/MainActivity$11;-><init>(Lcom/spotify/music/MainActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/spotify/mobile/android/util/ae;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/af;)V

    iput-object v1, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ae;->a()V

    goto :goto_34

    :pswitch_82
    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->M:Lcom/spotify/mobile/android/ui/actions/d;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->M:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/app/Activity;)V

    goto :goto_34

    :pswitch_9d
    const-string v1, ":"

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spotify.internal_crash"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v0, "com.spotify.mobile.android.service.action.CRASH_SERVICE"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_34

    :cond_b5
    const-string v1, "start_radio"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v3, v1}, Lcom/spotify/music/MainActivity;->b(Ljava/lang/String;ZZ)V

    goto/16 :goto_34

    :pswitch_c0
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    goto/16 :goto_34

    :pswitch_cb
    iget-object v1, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ab:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p0, v2, v3, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/activity/NotificationWebViewActivity;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_34

    :pswitch_e4
    iget-object v1, p0, Lcom/spotify/music/MainActivity;->M:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_34

    :pswitch_ef
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_34

    :pswitch_f9
    invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_34

    :pswitch_102
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Landroid/content/Context;I)V

    goto/16 :goto_34

    :pswitch_110
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://www.spotify.com/redirect/get-premium/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V

    goto/16 :goto_34

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_82
        :pswitch_9d
        :pswitch_c0
        :pswitch_cb
        :pswitch_e4
        :pswitch_ef
        :pswitch_f9
        :pswitch_34
        :pswitch_102
        :pswitch_102
        :pswitch_110
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;Z)V
    .registers 6

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start_radio"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lcom/spotify/music/MainActivity;->b(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->o:Lcom/spotify/mobile/android/ui/ActionBarManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->a()Lcom/spotify/mobile/android/ui/ActionBarTitle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    return-void
.end method

.method private a(Lcom/spotify/mobile/android/ui/fragments/e;Z)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-interface {p1}, Lcom/spotify/mobile/android/ui/fragments/e;->D()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {p1, p0}, Lcom/spotify/mobile/android/ui/fragments/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/MainActivity;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/aj;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/MainActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->B:Z

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_clear_backstack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Landroid/content/IntentFilter;
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/music/MainActivity;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v0, "onLoginDone"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->g()V

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->w:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->z:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->l()V

    invoke-virtual {p0, v5}, Lcom/spotify/music/MainActivity;->setVisible(Z)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iput-boolean v5, p0, Lcom/spotify/music/MainActivity;->w:Z

    const-string v0, "onLoginDone, adding Feature and Session fragments"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->q:Lcom/spotify/mobile/android/service/feature/c;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->W:Lcom/spotify/mobile/android/service/feature/a;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/feature/c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->X:Lcom/spotify/mobile/android/service/session/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/p;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->e:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->b:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    new-instance v1, Lcom/spotify/mobile/android/service/ao;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/service/ao;-><init>(Landroid/content/Context;)V

    const-string v2, "value"

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ao;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->d()D

    move-result-wide v0

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aj:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v3, "screen_size"

    const-string v4, "%.2f"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v1

    const-string v3, "layout_as_tablet"

    invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "true"

    :goto_a4
    invoke-virtual {v1, v3, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    goto/16 :goto_1a

    :cond_b4
    const-string v0, "false"

    goto :goto_a4
.end method

.method private b(Ljava/lang/String;ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->F:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Ljava/lang/String;ZZLjava/lang/String;)Lcom/spotify/mobile/android/spotlets/search/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/mobile/android/ui/fragments/e;Z)V

    return-void
.end method

.method static synthetic c(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/music/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->j()V

    return-void
.end method

.method static synthetic e(Lcom/spotify/music/MainActivity;)V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onFeatureFragmentLoaded"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->C:Z

    if-nez v0, :cond_24

    iput-boolean v3, p0, Lcom/spotify/music/MainActivity;->C:Z

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/a/a;->a(Landroid/support/v4/app/r;)V

    new-instance v0, Lcom/spotify/mobile/android/util/t;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/t;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->D:Lcom/spotify/mobile/android/util/t;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->D:Lcom/spotify/mobile/android/util/t;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_24
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->V:Lcom/spotify/mobile/android/ui/fragments/logic/g;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->g()V

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->z:Z

    if-eqz v0, :cond_40

    const-string v0, "onFeatureFragmentLoaded, UI fragments already loaded"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->l()V

    invoke-virtual {p0, v3}, Lcom/spotify/music/MainActivity;->setVisible(Z)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->P:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Lcom/spotify/mobile/android/util/d/e;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/d/e;->b()V

    :cond_50
    iput-boolean v3, p0, Lcom/spotify/music/MainActivity;->x:Z

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->c(Z)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->i()V

    goto :goto_3f
.end method

.method static synthetic f(Lcom/spotify/music/MainActivity;)V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onSessionFragmentLoaded"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->z:Z

    if-eqz v0, :cond_1b

    const-string v0, "onSessionFragmentLoaded, UI fragments already loaded"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->l()V

    invoke-virtual {p0, v3}, Lcom/spotify/music/MainActivity;->setVisible(Z)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iput-boolean v3, p0, Lcom/spotify/music/MainActivity;->y:Z

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->c(Z)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->i()V

    goto :goto_1a
.end method

.method static synthetic g(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    return-object v0
.end method

.method private g()V
    .registers 2

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->N:Lcom/spotify/mobile/android/service/flow/logic/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->h()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->N:Lcom/spotify/mobile/android/service/flow/logic/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->f()V

    :cond_18
    return-void
.end method

.method static synthetic h(Lcom/spotify/music/MainActivity;)Lcom/spotify/music/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->K:Lcom/spotify/music/a;

    return-object v0
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->x:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->y:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->p:Lcom/spotify/mobile/android/ui/fragments/g;

    return-object v0
.end method

.method private i()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0f00ed

    const-string v0, "loadUiFragments"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->h()Z

    move-result v0

    const-string v1, "tried to load UI fragments before ready"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/g;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/g;-><init>()V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->p:Lcom/spotify/mobile/android/ui/fragments/g;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->aa:Landroid/support/v4/widget/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/g;)V

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    const v1, 0x7f0a02fc

    iget-object v2, p0, Lcom/spotify/music/MainActivity;->p:Lcom/spotify/mobile/android/ui/fragments/g;

    const-string v3, "tag_navigation_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->T:Lcom/spotify/mobile/android/ui/view/snackbar/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/c;->a()V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->e:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_9f

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_56

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->g:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_9f

    :cond_56
    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_manual_login"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {p0, v4}, Lcom/spotify/music/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/MainActivity;->E:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/a;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/spotify/music/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :goto_75
    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a()Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "Loading UI fragments, dispatching queued Intents"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->j()V

    :cond_8e
    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->l()V

    invoke-virtual {p0, v6}, Lcom/spotify/music/MainActivity;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->x_()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b()V

    iput-boolean v6, p0, Lcom/spotify/music/MainActivity;->z:Z

    return-void

    :cond_9f
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {p0, v4}, Lcom/spotify/music/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/MainActivity;->E:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/a;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/spotify/music/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_75

    :cond_bb
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a()Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    move-result-object v1

    const v2, 0x7f0f0116

    invoke-virtual {p0, v2}, Lcom/spotify/music/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_75
.end method

.method static synthetic j(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/service/session/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    return-object v0
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    new-instance v1, Lcom/spotify/music/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/spotify/music/MainActivity$9;-><init>(Lcom/spotify/music/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a(Lcom/spotify/mobile/android/ui/activity/i;)V

    goto :goto_8
.end method

.method static synthetic k(Lcom/spotify/music/MainActivity;)I
    .registers 2

    iget v0, p0, Lcom/spotify/music/MainActivity;->A:I

    return v0
.end method

.method private k()V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->g:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/debug/a;->c()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/debug/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    :cond_13
    return-void
.end method

.method static synthetic l(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->J:Lcom/spotify/mobile/android/util/du;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->J:Lcom/spotify/mobile/android/util/du;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/du;->a()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ad:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-string v3, "time-taken"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v0, "android_application_id"

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->J:Lcom/spotify/mobile/android/util/du;

    :cond_37
    return-void
.end method

.method static synthetic m(Lcom/spotify/music/MainActivity;)Landroid/support/v4/app/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->v:Landroid/support/v4/app/a;

    return-object v0
.end method

.method static synthetic n(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/ActionBarManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->o:Lcom/spotify/mobile/android/ui/ActionBarManager;

    return-object v0
.end method

.method static synthetic o(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/util/ae;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    return-object v0
.end method


# virtual methods
.method public final A_()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-direct {v0, p0, p2}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
    .registers 6

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->e()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v0, :cond_34

    if-nez v2, :cond_34

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->f()I

    move-result v0

    iput v0, p0, Lcom/spotify/music/MainActivity;->A:I

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->K:Lcom/spotify/music/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/music/a;->sendEmptyMessage(I)Z

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->E:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->F:Ljava/lang/String;

    goto :goto_8

    :cond_34
    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/music/MainActivity;->w:Z

    if-eqz v1, :cond_43

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/music/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_43
    const-string v1, "extra_manual_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->l()V

    const-string v1, "TYPE_COLD_START_CANCEL"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v1, v2, v3}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/b;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_64
    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->finish()V

    goto :goto_8

    :cond_68
    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_64
.end method

.method public final a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/spotify/music/MainActivity;->a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/activity/o;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity;->G:Lcom/spotify/mobile/android/ui/activity/o;

    return-void
.end method

.method public final c()V
    .registers 1

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->x_()V

    return-void
.end method

.method public final d()Lcom/spotify/mobile/android/ui/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->w_()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->A_()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->G:Lcom/spotify/mobile/android/ui/activity/o;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->G:Lcom/spotify/mobile/android/ui/activity/o;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/o;->G()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_16
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->c()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->finish()V

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->v:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v3, 0x1

    const/high16 v6, -0x8000

    const/4 v7, 0x0

    sget-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->b:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    invoke-static {v0}, Lcom/spotify/mobile/android/devtools/a;->a(Lcom/spotify/mobile/android/devtools/MethodTraceScope;)V

    invoke-static {p0}, Lcom/spotify/android/paste/app/FontSupport;->a(Landroid/app/Activity;)V

    const-class v0, Lcom/spotify/mobile/android/util/dm;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/dm;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dm;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f1000af

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->setTheme(I)V

    :cond_20
    new-instance v0, Lcom/spotify/mobile/android/service/feature/c;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/feature/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->q:Lcom/spotify/mobile/android/service/feature/c;

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->c:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/support/v7/app/r;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/r;-><init>(Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_42
    new-instance v0, Lcom/spotify/mobile/android/service/session/e;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    if-nez p1, :cond_6b

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iput-boolean v3, p0, Lcom/spotify/music/MainActivity;->R:Z

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->finish()V

    :goto_5a
    return-void

    :cond_5b
    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/activity/r;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iput-boolean v3, p0, Lcom/spotify/music/MainActivity;->R:Z

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->finish()V

    goto :goto_5a

    :cond_6b
    iput-boolean v7, p0, Lcom/spotify/music/MainActivity;->R:Z

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(Landroid/content/Context;)V

    const-string v0, "onCreate"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_fc

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    new-instance v0, Lcom/spotify/mobile/android/util/du;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/du;-><init>()V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->J:Lcom/spotify/mobile/android/util/du;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "signup-v1-status"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "signup-v1-email-error"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "signup-v1-username-error"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "signup-v1-birthdate-error"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "signup-v1-other-error"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v0, v6, :cond_e8

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v5

    sget-object v6, Lcom/spotify/mobile/android/service/flow/login/t;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v5, v6, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;

    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v5, v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v5, v0, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->d:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v5, v0, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->e:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v5, v0, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    invoke-virtual {v5}, Lcom/spotify/mobile/android/util/cy;->a()V

    :cond_e8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ARG_TIMESTAMP"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "TYPE_COLD_START"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_fc
    invoke-virtual {p0, v7}, Lcom/spotify/music/MainActivity;->setVisible(Z)V

    const v0, 0x7f03008e

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->k()V

    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarManager;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/ActionBarManager;-><init>(Lcom/spotify/music/MainActivity;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->o:Lcom/spotify/mobile/android/ui/ActionBarManager;

    const v0, 0x7f0a02f7

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "Couldn\'t find R.id.drawer_layout"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    new-instance v0, Landroid/support/v4/app/a;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->v:Landroid/support/v4/app/a;

    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "Couldn\'t find R.id.content"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/MainLayout;

    new-instance v1, Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/spotify/mobile/android/ui/f;-><init>(Landroid/content/Context;Landroid/support/v4/app/r;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    new-instance v1, Lcom/spotify/mobile/android/ui/d;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/d;-><init>()V

    iput-object v1, p0, Lcom/spotify/music/MainActivity;->t:Lcom/spotify/mobile/android/ui/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/MainLayout;->a()Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->S:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/snackbar/c;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->S:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/c;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->T:Lcom/spotify/mobile/android/ui/view/snackbar/c;

    new-instance v0, Lcom/spotify/music/b;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-direct {v0, p0, v1}, Lcom/spotify/music/b;-><init>(Lcom/spotify/music/MainActivity;Lcom/spotify/mobile/android/ui/f;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->H:Lcom/spotify/music/b;

    const-class v0, Lcom/spotify/mobile/android/util/ah;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ah;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->H:Lcom/spotify/music/b;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/util/ah;->a(Lcom/spotify/mobile/android/util/ah;)V

    if-eqz p1, :cond_1d0

    const-string v0, "onCreate, restoring state"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "login_handled"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/music/MainActivity;->w:Z

    const-string v0, "ui_fragments_loaded"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/music/MainActivity;->z:Z

    const-string v0, "dialog_handler_added"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/music/MainActivity;->C:Z

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    const-string v1, "tag_navigation_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/g;

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->p:Lcom/spotify/mobile/android/ui/fragments/g;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->q:Lcom/spotify/mobile/android/service/feature/c;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->W:Lcom/spotify/mobile/android/service/feature/a;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/feature/c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->X:Lcom/spotify/mobile/android/service/session/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    const-string v1, "navigation_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->aa:Landroid/support/v4/widget/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/g;)V

    const-string v0, "intent_queue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    const-string v0, "intent_queue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    :cond_1d0
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Z:Landroid/content/BroadcastReceiver;

    const-string v1, "com.spotify.mobile.android.service.broadcast.session.SOCIAL_ERROR"

    invoke-static {v1}, Lcom/spotify/music/MainActivity;->b(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/music/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "com.spotify.mobile.android.service.broadcast.session.UPDATE_AVAILABLE"

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->b(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/spotify/music/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->O:Lcom/spotify/mobile/android/util/a/a;

    new-instance v1, Lcom/spotify/music/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/spotify/music/MainActivity$2;-><init>(Lcom/spotify/music/MainActivity;)V

    invoke-virtual {v0, v1, p0}, Lcom/spotify/mobile/android/util/a/a;->a(Lcom/spotify/mobile/android/util/a/b;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->ab:Lcom/spotify/mobile/android/ui/k;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/f;->a(Lcom/spotify/mobile/android/ui/k;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->setVolumeControlStream(I)V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/b;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->P:Lcom/spotify/mobile/android/service/connections/b;

    sget-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->b:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    invoke-static {v0}, Lcom/spotify/mobile/android/devtools/a;->b(Lcom/spotify/mobile/android/devtools/MethodTraceScope;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->S:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->bringToFront()V

    goto/16 :goto_5a
.end method

.method protected onDestroy()V
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/util/ah;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ah;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->H:Lcom/spotify/music/b;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/util/ah;->b(Lcom/spotify/mobile/android/util/ah;)V

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->e()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V

    iget-boolean v0, p0, Lcom/spotify/music/MainActivity;->R:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_25
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->V:Lcom/spotify/mobile/android/ui/fragments/logic/g;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->b(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->b()V

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->P:Lcom/spotify/mobile/android/service/connections/b;

    invoke-static {v0, p2, p0}, Lcom/spotify/mobile/android/util/y;->a(Lcom/spotify/mobile/android/service/connections/b;Landroid/view/KeyEvent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7

    const/4 v4, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->k()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.spotify.mobile.android.ui.action.anonymous_signup.SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->L:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->ar:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->B:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/spotify/music/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_manual_login"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_anonymous_signup"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->finish()V

    goto :goto_3

    :cond_44
    const-string v1, "com.spotify.mobile.android.ui.action.sdcard_alert.SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-boolean v1, p0, Lcom/spotify/music/MainActivity;->B:Z

    if-eqz v1, :cond_6f

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/service/SpotifyService;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v1, v2, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cy;->a()V

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/v;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/fragments/v;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v2

    const-string v3, "SdCardAlert"

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/ui/fragments/v;->a(Landroid/support/v4/app/r;Ljava/lang/String;)V

    :cond_6f
    invoke-virtual {p0, p1}, Lcom/spotify/music/MainActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->A_()V

    goto :goto_3

    :cond_7e
    const-string v1, "com.facebook.application.174829003346"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8f
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Intent;Z)V

    goto/16 :goto_3

    :cond_9d
    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_c8
    invoke-direct {p0, p1, v4}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Intent;Z)V

    goto/16 :goto_3

    :cond_cd
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-direct {p0, p1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_da
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-direct {p0, p1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_e7
    const-string v1, "com.spotify.mobile.android.ui.action.player.SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->M:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/app/Activity;)V

    goto/16 :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->v:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    const-string v0, "com.spotify.mobile.android.service.action.client.BACKGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a(Z)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->D:Lcom/spotify/mobile/android/util/t;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->D:Lcom/spotify/mobile/android/util/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/t;->cancel(Z)Z

    :cond_1c
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ae;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/MainActivity;->I:Lcom/spotify/mobile/android/util/ae;

    :cond_28
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->v:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->a()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->a()Lcom/spotify/mobile/android/ui/ActionBarTitle;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->o:Lcom/spotify/mobile/android/ui/ActionBarManager;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    :cond_19
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->o:Lcom/spotify/mobile/android/ui/ActionBarManager;

    new-instance v1, Lcom/spotify/mobile/android/ui/ActionBarTitle;

    const v2, 0x7f0f004a

    invoke-virtual {p0, v2}, Lcom/spotify/music/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->o:Lcom/spotify/mobile/android/ui/ActionBarManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    const-string v0, "com.spotify.mobile.android.service.action.client.FOREGROUND"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->o:Lcom/spotify/mobile/android/ui/ActionBarManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(F)V

    :cond_20
    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "login_handled"

    iget-boolean v1, p0, Lcom/spotify/music/MainActivity;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ui_fragments_loaded"

    iget-boolean v1, p0, Lcom/spotify/music/MainActivity;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dialog_handler_added"

    iget-boolean v1, p0, Lcom/spotify/music/MainActivity;->C:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "navigation_state"

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/f;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "intent_queue"

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->q:Lcom/spotify/mobile/android/service/feature/c;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/music/MainActivity;->B:Z

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->s:Lcom/spotify/mobile/android/ui/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;

    if-nez v0, :cond_18

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->B:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/j;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/activity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/j;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/music/MainActivity;->B:Z

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->P:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->q:Lcom/spotify/mobile/android/service/feature/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/feature/c;->a()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->a()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/debug/a;->b()V

    :cond_2a
    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->P:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->P:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V

    :cond_10
    invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/j;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/activity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/j;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/music/MainActivity;->B:Z

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/session/e;->b(Lcom/spotify/mobile/android/service/session/d;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->q:Lcom/spotify/mobile/android/service/feature/c;

    iget-object v1, p0, Lcom/spotify/music/MainActivity;->W:Lcom/spotify/mobile/android/service/feature/a;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/feature/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->q:Lcom/spotify/mobile/android/service/feature/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/feature/c;->b()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->U:Lcom/spotify/mobile/android/util/tracking/debug/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/debug/a;->c()V

    :cond_34
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onUserLeaveHint()V

    invoke-virtual {p0}, Lcom/spotify/music/MainActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    const v1, 0x7f0a0370

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/r;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->c()V

    :cond_15
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, "Don\'t call setTitle() directly, use setTitleForFragment() instead."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final t_()V
    .registers 3

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->t_()V

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->Q:Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Resuming fragments, dispatching queued Intents"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/music/MainActivity;->j()V

    :cond_16
    return-void
.end method

.method public final w_()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->u:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)Z

    move-result v0

    return v0
.end method

.method public final z_()Lcom/spotify/mobile/android/service/session/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/MainActivity;->r:Lcom/spotify/mobile/android/service/session/e;

    return-object v0
.end method
