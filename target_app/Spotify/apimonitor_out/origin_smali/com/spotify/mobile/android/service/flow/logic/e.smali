.class final Lcom/spotify/mobile/android/service/flow/logic/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;

.field private final b:Lcom/spotify/mobile/android/ui/actions/c;

.field private final c:Lcom/spotify/mobile/android/util/b/a;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/Intent;

.field private final f:Lcom/spotify/mobile/android/util/tracking/g;

.field private g:Lcom/spotify/mobile/android/ui/actions/b;

.field private h:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->a:Lcom/spotify/mobile/android/ui/actions/a;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->b:Lcom/spotify/mobile/android/ui/actions/c;

    const-class v0, Lcom/spotify/mobile/android/util/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/b/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->c:Lcom/spotify/mobile/android/util/b/a;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    new-instance v0, Lcom/spotify/mobile/android/ui/actions/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/actions/b;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->g:Lcom/spotify/mobile/android/ui/actions/b;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->e:Landroid/content/Intent;

    new-instance v0, Lcom/spotify/mobile/android/util/tracking/g;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/tracking/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->f:Lcom/spotify/mobile/android/util/tracking/g;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/logic/e;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Lcom/spotify/mobile/android/util/ClientEvent;I)V
    .registers 4

    packed-switch p1, :pswitch_data_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported account type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_15
    return-void

    :pswitch_16
    const-string v0, "account-type"

    const-string v1, "facebook"

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    goto :goto_15

    :pswitch_1e
    const-string v0, "account-type"

    const-string v1, "spotify"

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    goto :goto_15

    :pswitch_26
    const-string v0, "account-type"

    const-string v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    goto :goto_15

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_26
        :pswitch_1e
        :pswitch_16
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    const-string v0, "referralCode must be set"

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "created_by_partner"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string v1, "referral"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/flow/logic/e;)Lcom/spotify/mobile/android/ui/actions/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->g:Lcom/spotify/mobile/android/ui/actions/b;

    return-object v0
.end method


# virtual methods
.method final a()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    const-string v2, ""

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/util/cg;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/cg;-><init>()V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cg;->c()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aq:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->h:I

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(Lcom/spotify/mobile/android/util/ClientEvent;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->b:Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/service/flow/logic/e$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/e$1;-><init>(Lcom/spotify/mobile/android/service/flow/logic/e;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_54
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    const-string v1, "com.spotify.mobile.android.service.mat.user.created"

    invoke-static {v0, v1}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->e:Landroid/content/Intent;

    if-eqz v0, :cond_7c

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->al:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aX:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->h:I

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(Lcom/spotify/mobile/android/util/ClientEvent;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->c:Lcom/spotify/mobile/android/util/b/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->e:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v0}, Lcom/spotify/mobile/android/util/b/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_7c
    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method final a(I)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    const-string v2, ""

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/util/cg;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/cg;-><init>()V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cg;->c()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cg;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "referralCode must be set"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    const-string v1, "com.spotify.mobile.android.service.mat.existing.user"

    invoke-static {v0, v1}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->e:Landroid/content/Intent;

    if-eqz v0, :cond_53

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->al:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aW:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/flow/logic/e;->a(Lcom/spotify/mobile/android/util/ClientEvent;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->c:Lcom/spotify/mobile/android/util/b/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->e:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v0}, Lcom/spotify/mobile/android/util/b/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_53
    return-void
.end method

.method final b(I)V
    .registers 4

    iput p1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    const-string v0, "com.spotify.mobile.android.service.mat.facebook"

    :cond_8
    :goto_8
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/e;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_15
    return-void

    :cond_16
    if-nez p1, :cond_8

    const-string v0, "com.spotify.mobile.android.service.mat.email"

    goto :goto_8
.end method
