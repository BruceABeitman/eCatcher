.class public Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected c:Lcom/spotify/mobile/android/d/a;

.field private d:Lcom/spotify/mobile/android/util/cx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "install_referrer"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "account_creation_source"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->b:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    iget-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_9

    const-string v0, "Intent should not be null here."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :try_start_d
    new-instance v0, Lcom/spotify/mobile/android/d/a;

    invoke-direct {v0}, Lcom/spotify/mobile/android/d/a;-><init>()V

    iput-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->c:Lcom/spotify/mobile/android/d/a;

    iget-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->c:Lcom/spotify/mobile/android/d/a;

    const-string v0, "We need a context for the MobileAppTracker SDK."

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "3672"

    const-string v3, "bdc82f3d1e0cfe058f2fd9ffa24c977f"

    invoke-static {p0, v0, v3}, Lcom/mobileapptracker/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mobileapptracker/g;->a()Lcom/mobileapptracker/g;

    move-result-object v3

    const-string v0, "59118"

    invoke-virtual {v3, v0}, Lcom/mobileapptracker/g;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mobileapptracker/g;->f()V

    const-string v0, "com.spotify.music"

    invoke-virtual {v3, v0}, Lcom/mobileapptracker/g;->c(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_55

    const/4 v0, 0x3

    :goto_34
    if-lez v0, :cond_70

    :try_start_36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/ads/a/b;->b()Z

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/mobileapptracker/g;->a(Ljava/lang/String;Z)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_49} :catch_4b
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_36 .. :try_end_49} :catch_5a
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_36 .. :try_end_49} :catch_64
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_49} :catch_55

    :goto_49
    move v0, v1

    goto :goto_34

    :catch_4b
    move-exception v0

    :try_start_4c
    const-string v0, "Error connecting to Google Play services (e.g.the old version of the service doesn\'t support getting AdvertisingId)."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_55

    goto :goto_49

    :catch_55
    move-exception v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :catch_5a
    move-exception v0

    :try_start_5b
    const-string v0, "Google Play services is not available entirely."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_49

    :catch_64
    move-exception v4

    const-string v4, "Encountered a recoverable error connecting to Google Play services."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_70
    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobileapptracker/g;->e(Ljava/lang/String;)V

    const-string v0, "com.spotify.mobile.android.service.mat.application.init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "installation_id_new"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->c:Lcom/spotify/mobile/android/d/a;

    invoke-static {}, Lcom/mobileapptracker/g;->a()Lcom/mobileapptracker/g;

    move-result-object v1

    if-nez v0, :cond_9a

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mobileapptracker/g;->a(Z)V

    :cond_9a
    invoke-virtual {v1}, Lcom/mobileapptracker/g;->c()V

    goto/16 :goto_8

    :cond_9f
    const-string v0, "com.spotify.mobile.android.service.mat.existing.user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->c:Lcom/spotify/mobile/android/d/a;

    invoke-static {}, Lcom/mobileapptracker/g;->a()Lcom/mobileapptracker/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/g;->a(Z)V

    goto/16 :goto_8

    :cond_b3
    const-string v0, "com.spotify.mobile.android.service.mat.user.created"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    const-string v0, "Handle new user created"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    iget-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->b:Lcom/spotify/mobile/android/util/cz;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->c:Lcom/spotify/mobile/android/d/a;

    invoke-static {}, Lcom/mobileapptracker/g;->a()Lcom/mobileapptracker/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobileapptracker/g;->a(Z)V

    iget-object v2, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v3, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a:Lcom/spotify/mobile/android/util/cz;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobileapptracker/g;->b(Ljava/lang/String;)V

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    const-string v0, "932883162"

    :goto_fa
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_121

    const-string v0, "Expected a non-empty event string for tracking"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    :goto_105
    iget-object v0, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->d(Lcom/spotify/mobile/android/util/cz;)V

    goto/16 :goto_8

    :cond_10e
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    const-string v0, "932883154"

    goto :goto_fa

    :cond_119
    const-string v0, "Expected one of ACCOUNT_CREATION_SOURCE_FB or ACCOUNT_CREATION_SOURCE_EMAIL. Is the ACCOUNT_CREATION_SOURCE_PREF not set properly?"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_fa

    :cond_121
    iget-object v1, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->c:Lcom/spotify/mobile/android/d/a;

    invoke-static {}, Lcom/mobileapptracker/g;->a()Lcom/mobileapptracker/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobileapptracker/g;->a(Ljava/lang/String;)V

    goto :goto_105

    :cond_12b
    const-string v0, "com.spotify.mobile.android.service.mat.facebook"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    const-string v0, "fb"

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_13a
    const-string v0, "com.spotify.mobile.android.service.mat.email"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    const-string v0, "email"

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_149
    const-string v0, "com.spotify.mobile.android.service.mat.install.referrer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    const-string v0, "Handle install referrer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_166

    const-string v0, "Intent\'s extras is null"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_166
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_175

    const-string v0, "Intent has no referrer extra"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_175
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    iget-object v1, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v2, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://r.spotify.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v2, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->h()Z

    move-result v2

    if-eqz v2, :cond_1b6

    invoke-static {p0, v1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    :cond_1b6
    iget-object v1, p0, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->c:Lcom/spotify/mobile/android/d/a;

    invoke-static {}, Lcom/mobileapptracker/g;->a()Lcom/mobileapptracker/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobileapptracker/g;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobileapptracker/g;->c()V

    goto/16 :goto_8

    :cond_1c4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_1d6} :catch_55

    goto/16 :goto_8
.end method
