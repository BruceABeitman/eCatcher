.class public Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final n:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "last-display-uninstall"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->n:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.spotify.mobile.android.ui"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_28

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_24

    aget-object v4, v2, v1

    const-string v5, "30820248308201b102044a92cdd3300d06092a864886f70d0101040500306b310b3009060355040613025345310f300d0603550408130653776564656e311230100603550407130953746f636b686f6c6d3110300e060355040a130753706f74696679310f300d060355040b13064d6f62696c65311430120603550403130b416e6465727320426f6e64301e170d3039303832343137323835315a170d3337303130393137323835315a306b310b3009060355040613025345310f300d0603550408130653776564656e311230100603550407130953746f636b686f6c6d3110300e060355040a130753706f74696679310f300d060355040b13064d6f62696c65311430120603550403130b416e6465727320426f6e6430819f300d06092a864886f70d010101050003818d0030818902818100b7fe42eec33e6c400af045b69166f94ee2457f97db0d5962b5db46fc76a27ae2912d23d4a54c5edf82d63604f2e4465a7523ccc07ce31753996a7c0257ad5cfa6669fec51bf52c126ecb21c5eca5bc936d5197c72aed65d086699360fe2eb904aaa8c37c42cb93e76bb708e41b54c62191d2c91f1f6a11fc19d117c5187ffd130203010001300d06092a864886f70d0101040500038181003eb6a024debedd40765acba2e267a5f9bff8b0da9224f8ed3add6720b9d07348a18620f0d11ed532ff18c287c0ac99ad240aaa12138fd0fef10e21de19f7e5a687f68e16095f51100db9f7320c55ce51e886c78e0be4e50df9257da10b70ed40f967ab01c2dc926a0990585368841c557e85ba8c51e2be0f5c66cc9107bf70e3"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v0, 0x1

    :cond_24
    :goto_24
    return v0

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_28
    move-exception v1

    goto :goto_24
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 9

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->n:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v3, v4, v5, v6}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;J)J

    move-result-wide v3

    cmp-long v5, v3, v5

    if-eqz v5, :cond_24

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-gez v1, :cond_9

    :cond_24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    :try_start_8
    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->g()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_b} :catch_3e

    move-result-object v0

    :goto_c
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->p:Landroid/widget/Button;

    if-ne p1, v1, :cond_42

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package:com.spotify.mobile.android.ui"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->S:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aQ:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v2, "installation-id"

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    const-string v0, "unknown"

    goto :goto_c

    :cond_42
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->q:Landroid/widget/Button;

    if-ne p1, v1, :cond_3d

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->S:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aR:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v2, "installation-id"

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->a()V

    goto :goto_3d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->setContentView(I)V

    const v0, 0x7f0a023f

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a023e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onResume()V

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->n:Lcom/spotify/mobile/android/util/cz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->setResult(ILandroid/content/Intent;)V

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->S:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aO:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    :try_start_2e
    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->g()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_31} :catch_44

    move-result-object v0

    :goto_32
    const-string v2, "installation-id"

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void

    :catch_44
    move-exception v0

    const-string v0, "unknown"

    goto :goto_32
.end method
