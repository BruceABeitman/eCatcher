.class public Lcom/bbm/BbmService;
.super Landroid/app/Service;
.source "BbmService.java"

# interfaces
.implements Lcom/bbm/a/b;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/bbm/m/a;

.field private final d:Lcom/bbm/f/c;

.field private final e:Lcom/bbm/f/c;

.field private final f:Lcom/bbm/f/c;

.field private g:Ljava/lang/String;

.field private final h:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/f/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/f/ag;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/bbm/f/ad;

.field private k:Lcom/bbm/k/a;

.field private l:Lcom/bbm/ui/widget/k;

.field private final m:Lcom/bbm/j/k;

.field private final n:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/BbmService;->a:Z

    iput-boolean v0, p0, Lcom/bbm/BbmService;->b:Z

    new-instance v0, Lcom/bbm/f/c;

    invoke-direct {v0}, Lcom/bbm/f/c;-><init>()V

    iput-object v0, p0, Lcom/bbm/BbmService;->d:Lcom/bbm/f/c;

    new-instance v0, Lcom/bbm/f/c;

    invoke-direct {v0}, Lcom/bbm/f/c;-><init>()V

    iput-object v0, p0, Lcom/bbm/BbmService;->e:Lcom/bbm/f/c;

    new-instance v0, Lcom/bbm/f/c;

    invoke-direct {v0}, Lcom/bbm/f/c;-><init>()V

    iput-object v0, p0, Lcom/bbm/BbmService;->f:Lcom/bbm/f/c;

    new-instance v0, Lcom/bbm/f;

    invoke-direct {v0, p0}, Lcom/bbm/f;-><init>(Lcom/bbm/BbmService;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->h:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/g;

    invoke-direct {v0, p0}, Lcom/bbm/g;-><init>(Lcom/bbm/BbmService;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->i:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/f/f;

    invoke-direct {v0}, Lcom/bbm/f/f;-><init>()V

    iput-object v0, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    new-instance v0, Lcom/bbm/h;

    invoke-direct {v0, p0}, Lcom/bbm/h;-><init>(Lcom/bbm/BbmService;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->m:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/i;

    invoke-direct {v0, p0}, Lcom/bbm/i;-><init>(Lcom/bbm/BbmService;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->n:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/bbm/BbmService;)Lcom/bbm/f/ad;
    .registers 2

    iget-object v0, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    instance-of v0, v0, Lcom/bbm/f/f;

    if-eqz v0, :cond_c1

    const-string v0, "BBMService service is %s"

    new-array v1, v1, [Ljava/lang/Object;

    const-class v3, Lcom/bbm/f/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    if-nez p1, :cond_1e

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :cond_1e
    const-string v0, "com.bbm.BBMService.mock_service"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/bbm/Alaska;->a:Z

    if-nez v0, :cond_b1

    if-nez v1, :cond_b1

    const-string v0, "com.bbm.ShuntProperties"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ahn;

    if-nez v0, :cond_84

    move v1, v2

    :goto_35
    if-eqz v1, :cond_91

    if-eqz v0, :cond_91

    iget-object v1, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    instance-of v1, v1, Lcom/bbm/f/ar;

    if-nez v1, :cond_62

    const-string v1, "BBMService ShuntServiceLayer set"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v1, Lcom/bbm/f/ar;

    iget-object v2, v0, Lcom/bbm/ui/activities/ahn;->a:Ljava/util/Properties;

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ahn;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ahn;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ahn;->c()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/bbm/f/ar;-><init>(Ljava/lang/String;III)V

    invoke-direct {p0, v1}, Lcom/bbm/BbmService;->a(Lcom/bbm/f/ad;)V

    :cond_62
    :goto_62
    invoke-virtual {p0}, Lcom/bbm/BbmService;->a()V

    invoke-direct {p0}, Lcom/bbm/BbmService;->c()V

    iget-object v0, p0, Lcom/bbm/BbmService;->h:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ae;

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_83

    invoke-direct {p0}, Lcom/bbm/BbmService;->b()V

    invoke-direct {p0}, Lcom/bbm/BbmService;->e()V

    iget-object v0, p0, Lcom/bbm/BbmService;->c:Lcom/bbm/m/a;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/bbm/BbmService;->c:Lcom/bbm/m/a;

    invoke-virtual {v0}, Lcom/bbm/m/a;->a()V

    :cond_83
    return-void

    :cond_84
    iget-object v1, v0, Lcom/bbm/ui/activities/ahn;->a:Ljava/util/Properties;

    const-string v3, "shunt"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_35

    :cond_91
    iget-object v0, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    instance-of v0, v0, Lcom/bbm/f/j;

    if-nez v0, :cond_62

    const-string v0, "BBMService NativeServiceLayer set"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Lcom/bbm/f/j;

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-class v3, Lcom/bbm/BbmService;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/f/j;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/content/res/AssetManager;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/bbm/BbmService;->a(Lcom/bbm/f/ad;)V

    goto :goto_62

    :cond_b1
    const-string v0, "BBMService mocking the ServiceLayer. Was this intended?"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Lcom/bbm/f/g;

    invoke-direct {v0}, Lcom/bbm/f/g;-><init>()V

    invoke-direct {p0, v0}, Lcom/bbm/BbmService;->a(Lcom/bbm/f/ad;)V

    goto :goto_62

    :cond_c1
    const-string v0, "BBMService service is %s, calling service start."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    invoke-interface {v0}, Lcom/bbm/f/ad;->a()V

    goto :goto_62
.end method

.method private a(Lcom/bbm/f/ad;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    invoke-interface {v0}, Lcom/bbm/f/ad;->b()V

    iput-object p1, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    invoke-interface {p1}, Lcom/bbm/f/ad;->a()V

    iget-object v0, p0, Lcom/bbm/BbmService;->e:Lcom/bbm/f/c;

    invoke-interface {p1}, Lcom/bbm/f/ad;->c()Lcom/bbm/f/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/f/c;->a(Lcom/google/b/a/l;)V

    iget-object v0, p0, Lcom/bbm/BbmService;->f:Lcom/bbm/f/c;

    invoke-interface {p1}, Lcom/bbm/f/ad;->e()Lcom/bbm/f/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/f/c;->a(Lcom/google/b/a/l;)V

    iget-object v0, p0, Lcom/bbm/BbmService;->d:Lcom/bbm/f/c;

    invoke-interface {p1}, Lcom/bbm/f/ad;->d()Lcom/bbm/f/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/f/c;->a(Lcom/google/b/a/l;)V

    iget-object v0, p0, Lcom/bbm/BbmService;->h:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    return-void
.end method

.method private b()V
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/bbm/BbmService;->b:Z

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/bbm/BbmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "mixpanel_last_upload"

    invoke-interface {v0, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/bbm/BbmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/bbm/receiver/MixPanelUpdates;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x800

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v2, v7

    cmp-long v7, v4, v10

    if-eqz v7, :cond_59

    new-instance v7, Ljava/util/Date;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x18

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_59
    const-string v4, "MixPanel updates scheduled"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/BbmService;->b:Z

    goto :goto_7
.end method

.method static synthetic b(Lcom/bbm/BbmService;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/BbmService;->c()V

    return-void
.end method

.method static synthetic c(Lcom/bbm/BbmService;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/BbmService;->h:Lcom/bbm/j/a;

    return-object v0
.end method

.method private c()V
    .registers 9

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    invoke-interface {v0}, Lcom/bbm/f/ad;->h()Lcom/bbm/f/af;

    move-result-object v0

    sget-object v1, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;

    if-ne v0, v1, :cond_4d

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/bbm/receiver/LocationTimeZoneChangedReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/bbm/receiver/NetworkChangeMonitor;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/bbm/receiver/ConnectivityChangeReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/bbm/receiver/BootCompletedReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbm/Alaska;->A()Lcom/bbm/f/af;

    move-result-object v5

    sget-object v6, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;

    if-ne v5, v6, :cond_4c

    const-string v5, "AppKillingBroadcastReceiver Registering broadcast receivers"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {v4, v1, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {v4, v2, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v0, 0x2

    invoke-virtual {v4, v3, v0, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    invoke-static {p0}, Lcom/bbm/receiver/a;->a(Landroid/content/Context;)V

    goto :goto_4c
.end method

.method private final d()Landroid/app/PendingIntent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/BbmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.bbm.BBMService.HealthCheck"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8a6

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/BbmService;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/BbmService;->b()V

    return-void
.end method

.method private e()V
    .registers 7

    iget-boolean v0, p0, Lcom/bbm/BbmService;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/bbm/BbmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/bbm/BbmService;->d()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "HealthCheck updates scheduled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/BbmService;->a:Z

    goto :goto_4
.end method

.method static synthetic e(Lcom/bbm/BbmService;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/BbmService;->e()V

    return-void
.end method

.method static synthetic f(Lcom/bbm/BbmService;)Lcom/bbm/m/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/BbmService;->c:Lcom/bbm/m/a;

    return-object v0
.end method

.method private f()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/bbm/BbmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/bbm/BbmService;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "HealthCheck updates removed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/bbm/BbmService;->a:Z

    return-void
.end method

.method static synthetic g(Lcom/bbm/BbmService;)V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/bbm/BbmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bbm/receiver/MixPanelUpdates;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x800

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "MixPanel updates cancelled"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/bbm/BbmService;->b:Z

    return-void
.end method

.method static synthetic h(Lcom/bbm/BbmService;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/BbmService;->f()V

    return-void
.end method

.method static synthetic i(Lcom/bbm/BbmService;)Lcom/bbm/f/c;
    .registers 2

    iget-object v0, p0, Lcom/bbm/BbmService;->e:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/BbmService;)Lcom/bbm/f/c;
    .registers 2

    iget-object v0, p0, Lcom/bbm/BbmService;->f:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/BbmService;)Lcom/bbm/f/c;
    .registers 2

    iget-object v0, p0, Lcom/bbm/BbmService;->d:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/BbmService;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/BbmService;->i:Lcom/bbm/j/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    const-string v1, "sticky_notification"

    invoke-virtual {v0, v1, v3}, Lcom/bbm/af;->a(Ljava/lang/String;Z)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;

    iget-object v2, p0, Lcom/bbm/BbmService;->j:Lcom/bbm/f/ad;

    invoke-interface {v2}, Lcom/bbm/f/ad;->h()Lcom/bbm/f/af;

    move-result-object v2

    if-eq v1, v2, :cond_2b

    const-string v0, "Foreground Notification toggle blocked no credentials on device"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/bbm/BbmService;->stopForeground(Z)V

    :goto_2a
    return-void

    :cond_2b
    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bbm/BbmService;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ag;

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bbm/ui/f/a;->a(Landroid/content/Context;Lcom/bbm/f/ag;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/bbm/BbmService;->startForeground(ILandroid/app/Notification;)V

    const-string v1, "toggleForegroundNotification ON, status %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_2a

    :cond_4e
    const-string v0, "toggleForegroundNotification OFF"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/bbm/BbmService;->stopForeground(Z)V

    goto :goto_2a
.end method

.method public final a(Landroid/accounts/Account;)V
    .registers 4

    new-instance v0, Lcom/bbm/k/a;

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bbm/k/a;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->k:Lcom/bbm/k/a;

    return-void
.end method

.method public final a(Landroid/accounts/Account;Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error trying to add account: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/u;->a:Lcom/bbm/c/u;

    invoke-virtual {v1}, Lcom/bbm/c/u;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/c/c;->aF:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lcom/bbm/c/c;->aF:Ljava/util/Map;

    iget-object v0, v0, Lcom/bbm/c/c;->aF:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, v0, Lcom/bbm/c/c;->aF:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "onBind"

    const-class v1, Lcom/bbm/BbmService;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/BbmService;->n:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/bbm/BbmService;->g:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/BbmService;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/BbmService;->a()V

    :cond_1c
    return-void
.end method

.method public onCreate()V
    .registers 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/util/cw;->a(Ljava/lang/String;)V

    const-string v1, "onCreate"

    const-class v3, Lcom/bbm/BbmService;

    invoke-static {v1, v3}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const v1, 0x7f0e0124

    invoke-virtual {p0, v1}, Lcom/bbm/BbmService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bbm/a/a;

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/bbm/a/a;-><init>(Landroid/content/Context;)V

    iget-object v1, v5, Lcom/bbm/a/a;->a:Landroid/accounts/AccountManager;

    const-string v3, "com.bbm.account"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    array-length v7, v6

    move v3, v0

    :goto_2d
    if-ge v3, v7, :cond_c1

    aget-object v1, v6, v3

    iget-object v8, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    :goto_39
    if-nez v1, :cond_c9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Using account manager "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lcom/bbm/a/a;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, v5, Lcom/bbm/a/a;->a:Landroid/accounts/AccountManager;

    const-string v3, "com.bbm.account"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_5d

    const/4 v0, 0x1

    :cond_5d
    if-nez v0, :cond_73

    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.bbm.account"

    invoke-direct {v1, v4, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_66
    iget-object v0, v5, Lcom/bbm/a/a;->a:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {p0, v1}, Lcom/bbm/a/b;->a(Landroid/accounts/Account;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_73} :catch_c4

    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/bbm/BbmService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/BbmService;->g:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/widget/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->l:Lcom/bbm/ui/widget/k;

    iget-object v0, p0, Lcom/bbm/BbmService;->l:Lcom/bbm/ui/widget/k;

    invoke-virtual {v0}, Lcom/bbm/ui/widget/k;->a()V

    new-instance v1, Lcom/bbm/ui/widget/n;

    invoke-direct {v1, v0}, Lcom/bbm/ui/widget/n;-><init>(Lcom/bbm/ui/widget/k;)V

    iput-object v1, v0, Lcom/bbm/ui/widget/k;->b:Lcom/bbm/j/k;

    iget-object v1, v0, Lcom/bbm/ui/widget/k;->b:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.bbm.action.UPDATE_WIDGET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/bbm/ui/widget/k;->d:Landroid/content/Context;

    iget-object v0, v0, Lcom/bbm/ui/widget/k;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/BbmService;->m:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    new-instance v0, Lcom/bbm/m/a;

    invoke-direct {v0, p0}, Lcom/bbm/m/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->c:Lcom/bbm/m/a;

    invoke-direct {p0, v2}, Lcom/bbm/BbmService;->a(Landroid/content/Intent;)V

    return-void

    :cond_bc
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2d

    :cond_c1
    move-object v1, v2

    goto/16 :goto_39

    :catch_c4
    move-exception v0

    invoke-interface {p0, v1, v0}, Lcom/bbm/a/b;->a(Landroid/accounts/Account;Ljava/lang/Throwable;)V

    goto :goto_73

    :cond_c9
    new-instance v0, Lcom/bbm/k/a;

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/bbm/k/a;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    iput-object v0, p0, Lcom/bbm/BbmService;->k:Lcom/bbm/k/a;

    goto :goto_73
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    const-class v1, Lcom/bbm/BbmService;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/BbmService;->l:Lcom/bbm/ui/widget/k;

    iget-object v1, v0, Lcom/bbm/ui/widget/k;->d:Landroid/content/Context;

    iget-object v2, v0, Lcom/bbm/ui/widget/k;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v0}, Lcom/bbm/ui/widget/k;->a()V

    iget-object v0, p0, Lcom/bbm/BbmService;->m:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/BbmService;->c:Lcom/bbm/m/a;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bbm/BbmService;->c:Lcom/bbm/m/a;

    invoke-virtual {v0}, Lcom/bbm/m/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/BbmService;->c:Lcom/bbm/m/a;

    :cond_27
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    const-string v0, "onLowMemory"

    const-class v1, Lcom/bbm/BbmService;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "onStartCommand"

    const-class v3, Lcom/bbm/BbmService;

    invoke-static {v0, v3}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lcom/bbm/BbmService;->a(Landroid/content/Intent;)V

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v3, "com.bbm.BBMService.HealthCheck"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/bbm/BbmService;->f()V

    iget-object v0, p0, Lcom/bbm/BbmService;->h:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ae;

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/bbm/BbmService;->e()V

    :cond_30
    iget-object v0, p0, Lcom/bbm/BbmService;->h:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ae;

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_4b

    const-string v0, "Starting BBMService START_REDELIVER_INTENT %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    :goto_4a
    return v0

    :cond_4b
    const-string v0, "Starting BBMService START_NOT_STICKY %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_4a
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const-string v0, "onTaskRemoved"

    const-class v1, Lcom/bbm/BbmService;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/BbmService;->h:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ae;

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_61

    if-eqz v1, :cond_61

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/bbm/BbmService;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/bbm/BbmService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/bbm/util/fb;->f()Z

    move-result v0

    if-eqz v0, :cond_46

    :try_start_32
    const-string v0, "android.content.Intent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "FLAG_RECEIVER_FOREGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_46
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32 .. :try_end_46} :catch_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_46} :catch_6d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_46} :catch_78

    :cond_46
    :goto_46
    const/16 v0, 0x8a6

    const/high16 v3, 0x4000

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_61
    return-void

    :catch_62
    move-exception v0

    const-string v3, "BbmService"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_46

    :catch_6d
    move-exception v0

    const-string v3, "BbmService"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_46

    :catch_78
    move-exception v0

    const-string v3, "BbmService"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_46
.end method

.method public onTrimMemory(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    const-string v0, "onTrimMemory"

    const-class v1, Lcom/bbm/BbmService;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
