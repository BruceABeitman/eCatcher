.class public Lcom/spotify/mobile/android/service/SpotifyService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/os/Handler;

.field private C:Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;

.field private D:J

.field private E:Lcom/spotify/mobile/android/util/tracking/g;

.field private F:Lcom/spotify/music/spotlets/situationalcontent/b/a;

.field private G:Lcom/spotify/mobile/android/util/cb;

.field private H:Lcom/spotify/mobile/android/util/cb;

.field private I:Landroid/content/BroadcastReceiver;

.field private final J:Lcom/spotify/mobile/android/service/an;

.field private K:Ljava/util/Locale;

.field private L:Lcom/spotify/mobile/android/ui/activity/upsell/i;

.field private M:Lcom/spotify/mobile/android/ui/activity/upsell/r;

.field private N:Lcom/spotify/mobile/android/orbit/OrbitFactory;

.field private O:Lcom/spotify/mobile/android/service/as;

.field private P:Lcom/spotify/mobile/android/service/ah;

.field private Q:Ljava/util/concurrent/CountDownLatch;

.field private R:Ljava/util/concurrent/CountDownLatch;

.field private S:Ljava/util/concurrent/CountDownLatch;

.field private T:Ljava/util/concurrent/CountDownLatch;

.field private U:Ljava/util/concurrent/CountDownLatch;

.field private V:Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;

.field private d:Z

.field private e:Lcom/spotify/mobile/android/service/am;

.field private f:Z

.field private g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

.field private h:Lcom/spotify/mobile/android/service/managers/e;

.field private i:Lcom/spotify/mobile/android/service/managers/c;

.field private j:Lcom/spotify/mobile/android/service/managers/d;

.field private k:Lcom/spotify/mobile/android/service/managers/ConnectManager;

.field private l:Landroid/os/HandlerThread;

.field private m:Lcom/spotify/cosmos/android/RemoteNativeRouter;

.field private n:Lcom/spotify/mobile/android/util/b;

.field private o:Lcom/spotify/mobile/android/service/ai;

.field private p:Lcom/spotify/mobile/android/service/aq;

.field private q:Lcom/spotify/mobile/android/service/aj;

.field private r:Lcom/spotify/mobile/android/util/PlaybackListener;

.field private s:Lcom/spotify/mobile/android/util/bw;

.field private t:Lcom/spotify/mobile/android/service/managers/f;

.field private u:Lcom/spotify/mobile/android/service/managers/a;

.field private v:Landroid/os/Handler;

.field private w:Lcom/spotify/mobile/android/e/p;

.field private x:Lcom/spotify/mobile/android/e/n;

.field private y:Lcom/spotify/mobile/android/service/b;

.field private z:Lcom/spotify/mobile/android/service/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "delete_cache_flag"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/SpotifyService;->a:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "service_crash_count"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/SpotifyService;->b:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "missing_sdcard_intent_sent"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/SpotifyService;->c:Lcom/spotify/mobile/android/util/cz;

    const-class v0, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v1, Lcom/spotify/mobile/android/orbit/OrbitFactory;

    new-instance v2, Lcom/spotify/mobile/android/orbit/NativeOrbitFactory;

    invoke-direct {v2}, Lcom/spotify/mobile/android/orbit/NativeOrbitFactory;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V

    const-class v0, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v1, Lcom/spotify/mobile/android/service/am;

    new-instance v2, Lcom/spotify/mobile/android/service/am;

    invoke-direct {v2}, Lcom/spotify/mobile/android/service/am;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V

    const-class v0, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v1, Lcom/spotify/mobile/android/service/as;

    new-instance v2, Lcom/spotify/mobile/android/service/as;

    invoke-direct {v2}, Lcom/spotify/mobile/android/service/as;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V

    const-class v0, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v1, Lcom/spotify/mobile/android/service/ah;

    new-instance v2, Lcom/spotify/mobile/android/service/ah;

    invoke-direct {v2}, Lcom/spotify/mobile/android/service/ah;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->d:Z

    const-class v0, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v1, Lcom/spotify/mobile/android/service/am;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/am;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    new-instance v0, Lcom/spotify/mobile/android/util/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/b;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->n:Lcom/spotify/mobile/android/util/b;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->v:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->D:J

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyService$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/SpotifyService$1;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->G:Lcom/spotify/mobile/android/util/cb;

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyService$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/SpotifyService$4;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->H:Lcom/spotify/mobile/android/util/cb;

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyService$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/SpotifyService$5;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->I:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/spotify/mobile/android/service/an;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/an;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->J:Lcom/spotify/mobile/android/service/an;

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyService$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/SpotifyService$3;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->V:Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/mobile/android/ui/activity/upsell/r;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->M:Lcom/spotify/mobile/android/ui/activity/upsell/r;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "force_previous"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/service/managers/d;->b(Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 12

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string v2, "Users"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_f

    :try_start_16
    array-length v4, v3

    move v2, v1

    :goto_18
    if-ge v2, v4, :cond_f

    aget-object v0, v3, v2

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_95

    const-string v5, "SpotifyService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Deleting state files in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/bo;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Deleting state files in %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_5c
    if-ge v0, v7, :cond_82

    aget-object v8, v6, v0

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7f

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_7f

    const-string v9, "Deleted "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "SpotifyService"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/util/bo;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_95} :catch_99

    :cond_95
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    :catch_99
    move-exception v0

    const-string v2, "Failed when cleaning state files!"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f
.end method

.method private a(Z)V
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {p0, p1}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.spotify.mobile.android.service.action.START_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "Bind to SpotifyService: %b"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/SpotifyService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->I:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/service/SpotifyService;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->Q:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/managers/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->i:Lcom/spotify/mobile/android/service/managers/c;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->S:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/managers/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->t:Lcom/spotify/mobile/android/service/managers/f;

    return-object v0
.end method

.method private g()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/bm;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/c/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->U:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/managers/ConnectManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->k:Lcom/spotify/mobile/android/service/managers/ConnectManager;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->R:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/managers/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->T:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/cosmos/android/RemoteNativeRouter;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->m:Lcom/spotify/cosmos/android/RemoteNativeRouter;

    return-object v0
.end method

.method static synthetic n(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/am;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    return-object v0
.end method

.method static synthetic o(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/as;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->O:Lcom/spotify/mobile/android/service/as;

    return-object v0
.end method

.method static synthetic p(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/ui/activity/upsell/r;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->M:Lcom/spotify/mobile/android/ui/activity/upsell/r;

    return-object v0
.end method

.method static synthetic q(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    return-object v0
.end method

.method static synthetic r(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/ah;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->P:Lcom/spotify/mobile/android/service/ah;

    return-object v0
.end method

.method static synthetic s(Lcom/spotify/mobile/android/service/SpotifyService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/ai;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->o:Lcom/spotify/mobile/android/service/ai;

    return-object v0
.end method

.method static synthetic u(Lcom/spotify/mobile/android/service/SpotifyService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic v(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/util/bw;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->s:Lcom/spotify/mobile/android/util/bw;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 15

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/bm;->a()I

    move-result v0

    if-ne v0, v5, :cond_2b

    move v0, v5

    :goto_16
    if-nez v0, :cond_2d

    const-string v0, "Service already started: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    :goto_2a
    return-void

    :cond_2b
    move v0, v4

    goto :goto_16

    :cond_2d
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->c()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyService$7;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/SpotifyService$7;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->A:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_43

    goto :goto_2a

    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_46
    :try_start_46
    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->f:Z

    if-nez v0, :cond_4c

    monitor-exit v1

    goto :goto_2a

    :cond_4c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/bm;->a(I)V

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_43

    const-string v0, "Starting service..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/spotify/mobile/android/service/ao;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/ao;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/ao;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "The cache location is a directory? %b"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "The cache location is writable? %b"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_f2

    move v0, v5

    :goto_a0
    if-nez v0, :cond_f4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->e()Z

    move-result v0

    if-nez v0, :cond_d4

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/SpotifyService;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    if-nez v0, :cond_ca

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/music/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.spotify.mobile.android.ui.action.sdcard_alert.SHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->startActivity(Landroid/content/Intent;)V

    :cond_ca
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->d()V

    :cond_d4
    const-string v0, "There is no cache location, giving up starting Core"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v1

    monitor-enter v1

    :try_start_e2
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/bm;->a(I)V

    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_e2 .. :try_end_ed} :catchall_ef

    goto/16 :goto_2a

    :catchall_ef
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_f2
    move v0, v4

    goto :goto_a0

    :cond_f4
    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/SpotifyService;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    const-string v0, "The cache location seems ok"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/SpotifyService;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I

    move-result v0

    const-string v1, "Current crash count is %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    if-lt v0, v1, :cond_12d

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Ljava/lang/String;)V

    :cond_12d
    invoke-direct {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/spotify/cosmos/android/RemoteNativeRouter;

    invoke-direct {v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->m:Lcom/spotify/cosmos/android/RemoteNativeRouter;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->T:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->V:Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->setObserver(Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;)V

    const-string v0, "Starting Orbit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->m:Lcom/spotify/cosmos/android/RemoteNativeRouter;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->getNativeRouter()Lcom/spotify/cosmos/router/Router;

    move-result-object v6

    check-cast v6, Lcom/spotify/cosmos/router/NativeRouter;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/ao;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/ao;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v0 .. v6}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/spotify/cosmos/router/NativeRouter;)V

    const-string v0, "Orbit started"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/mobile/android/service/managers/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    invoke-interface {v1}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->getOrbitSession()Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/managers/e;-><init>(Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->R:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    new-instance v0, Lcom/spotify/mobile/android/service/managers/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    invoke-interface {v1}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->getOrbitPlayer()Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/managers/d;-><init>(Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    new-instance v0, Lcom/spotify/mobile/android/service/managers/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    invoke-interface {v1}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->getOrbitProvider()Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/managers/c;-><init>(Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->i:Lcom/spotify/mobile/android/service/managers/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->Q:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    new-instance v0, Lcom/spotify/mobile/android/service/b;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->y:Lcom/spotify/mobile/android/service/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->y:Lcom/spotify/mobile/android/service/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b;->a()V

    new-instance v0, Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/PlaybackListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->G:Lcom/spotify/mobile/android/util/cb;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Lcom/spotify/mobile/android/util/cb;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->H:Lcom/spotify/mobile/android/util/cb;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Lcom/spotify/mobile/android/util/cb;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->a()V

    new-instance v0, Lcom/spotify/mobile/android/util/bw;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->s:Lcom/spotify/mobile/android/util/bw;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "backgroundUpdater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->l:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->U:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->A:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/service/SpotifyService$8;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/SpotifyService$8;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/spotify/mobile/android/service/ai;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->s:Lcom/spotify/mobile/android/util/bw;

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/service/ai;-><init>(Landroid/app/Service;Lcom/spotify/mobile/android/util/bw;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->o:Lcom/spotify/mobile/android/service/ai;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->o:Lcom/spotify/mobile/android/service/ai;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ai;->a()V

    new-instance v0, Lcom/spotify/mobile/android/service/aq;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->l:Landroid/os/HandlerThread;

    new-instance v3, Lcom/spotify/mobile/android/ui/d/b;

    invoke-direct {v3}, Lcom/spotify/mobile/android/ui/d/b;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/spotify/mobile/android/service/aq;-><init>(Landroid/app/Service;Lcom/spotify/mobile/android/util/PlaybackListener;Landroid/os/HandlerThread;Lcom/spotify/mobile/android/ui/d/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->p:Lcom/spotify/mobile/android/service/aq;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->p:Lcom/spotify/mobile/android/service/aq;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/aq;->a()V

    new-instance v0, Lcom/spotify/mobile/android/service/managers/ConnectManager;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->k:Lcom/spotify/mobile/android/service/managers/ConnectManager;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->k:Lcom/spotify/mobile/android/service/managers/ConnectManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->k()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->S:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    new-instance v0, Lcom/spotify/mobile/android/util/tracking/g;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/tracking/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->E:Lcom/spotify/mobile/android/util/tracking/g;

    new-instance v0, Lcom/spotify/mobile/android/e/m;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/m;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/spotify/mobile/android/e/p;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/e/p;-><init>(Lcom/spotify/mobile/android/e/m;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    sget-object v1, Lcom/spotify/mobile/android/ui/page/DebugFlag;->b:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    new-instance v5, Lcom/spotify/mobile/android/service/aj;

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v7

    iget-object v8, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    iget-object v9, p0, Lcom/spotify/mobile/android/service/SpotifyService;->l:Landroid/os/HandlerThread;

    iget-object v10, p0, Lcom/spotify/mobile/android/service/SpotifyService;->t:Lcom/spotify/mobile/android/service/managers/f;

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/spotify/mobile/android/service/aj;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/PlaybackListener;Landroid/os/HandlerThread;Lcom/spotify/mobile/android/service/managers/f;)V

    iput-object v5, p0, Lcom/spotify/mobile/android/service/SpotifyService;->q:Lcom/spotify/mobile/android/service/aj;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->q:Lcom/spotify/mobile/android/service/aj;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/aj;->a()V

    new-instance v5, Lcom/spotify/mobile/android/e/n;

    iget-object v7, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    iget-object v8, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    iget-object v10, p0, Lcom/spotify/mobile/android/service/SpotifyService;->q:Lcom/spotify/mobile/android/service/aj;

    iget-object v11, p0, Lcom/spotify/mobile/android/service/SpotifyService;->o:Lcom/spotify/mobile/android/service/ai;

    iget-object v12, p0, Lcom/spotify/mobile/android/service/SpotifyService;->k:Lcom/spotify/mobile/android/service/managers/ConnectManager;

    iget-object v13, p0, Lcom/spotify/mobile/android/service/SpotifyService;->t:Lcom/spotify/mobile/android/service/managers/f;

    move-object v6, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v13}, Lcom/spotify/mobile/android/e/n;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/service/managers/d;Lcom/spotify/mobile/android/e/p;Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/service/aj;Lcom/spotify/mobile/android/service/ai;Lcom/spotify/mobile/android/service/managers/ConnectManager;Lcom/spotify/mobile/android/service/managers/f;)V

    iput-object v5, p0, Lcom/spotify/mobile/android/service/SpotifyService;->x:Lcom/spotify/mobile/android/e/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/bm;->a(I)V

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;-><init>(Lcom/spotify/mobile/android/service/managers/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->C:Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->C:Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;

    invoke-static {}, Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->a:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->a(Landroid/content/Context;)V

    const-string v0, "Service fully started"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2a
.end method

.method public final b()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p0, Lcom/spotify/mobile/android/service/SpotifyService;->d:Z

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aj:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ap:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "deviceNameInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[,:]"

    const-string v4, ";"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "deviceCpuInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "androidVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-class v1, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v0, Lcom/spotify/mobile/android/service/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    invoke-interface {v1}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->getOrbitPushNotifications()Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/service/a/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->z:Lcom/spotify/mobile/android/service/a/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->z:Lcom/spotify/mobile/android/service/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/a/a;->a()V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/i;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->L:Lcom/spotify/mobile/android/ui/activity/upsell/i;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->L:Lcom/spotify/mobile/android/ui/activity/upsell/i;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/i;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/music/internal/service/DeleteOldCacheLocationsService;->a(Landroid/content/Context;)V

    :try_start_da
    const-string v0, "OldAppTracker starting..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.spotify.mobile.android.ui"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_15d

    const-string v1, "Found package matching old app!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "30820248308201b102044a92cdd3300d06092a864886f70d0101040500306b310b3009060355040613025345310f300d0603550408130653776564656e311230100603550407130953746f636b686f6c6d3110300e060355040a130753706f74696679310f300d060355040b13064d6f62696c65311430120603550403130b416e6465727320426f6e64301e170d3039303832343137323835315a170d3337303130393137323835315a306b310b3009060355040613025345310f300d0603550408130653776564656e311230100603550407130953746f636b686f6c6d3110300e060355040a130753706f74696679310f300d060355040b13064d6f62696c65311430120603550403130b416e6465727320426f6e6430819f300d06092a864886f70d010101050003818d0030818902818100b7fe42eec33e6c400af045b69166f94ee2457f97db0d5962b5db46fc76a27ae2912d23d4a54c5edf82d63604f2e4465a7523ccc07ce31753996a7c0257ad5cfa6669fec51bf52c126ecb21c5eca5bc936d5197c72aed65d086699360fe2eb904aaa8c37c42cb93e76bb708e41b54c62191d2c91f1f6a11fc19d117c5187ffd130203010001300d06092a864886f70d0101040500038181003eb6a024debedd40765acba2e267a5f9bff8b0da9224f8ed3add6720b9d07348a18620f0d11ed532ff18c287c0ac99ad240aaa12138fd0fef10e21de19f7e5a687f68e16095f51100db9f7320c55ce51e886c78e0be4e50df9257da10b70ed40f967ab01c2dc926a0990585368841c557e85ba8c51e2be0f5c66cc9107bf70e3"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ar:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bM:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "App with old packageName installed, logging: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_121
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_da .. :try_end_121} :catch_145

    :goto_121
    const-class v1, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->bd:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void

    :cond_12c
    :try_start_12c
    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ar:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bO:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "App with old packageName but wrong signature, logging: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_144
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12c .. :try_end_144} :catch_145

    goto :goto_121

    :catch_145
    move-exception v0

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ar:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bN:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "Old app not installed: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_121

    :cond_15d
    :try_start_15d
    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ar:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bN:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "Old app not installed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_175
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15d .. :try_end_175} :catch_145

    goto :goto_121
.end method

.method public final c()V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    invoke-direct {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->g()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "Service can\'t shut down unless started first: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/bm;->a(I)V

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_c0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->b()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->d:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->z:Lcom/spotify/mobile/android/service/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/a/a;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->L:Lcom/spotify/mobile/android/ui/activity/upsell/i;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b()V

    :cond_3f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->y:Lcom/spotify/mobile/android/service/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b;->b()V

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->o:Lcom/spotify/mobile/android/service/ai;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ai;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->p:Lcom/spotify/mobile/android/service/aq;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/aq;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->q:Lcom/spotify/mobile/android/service/aj;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/aj;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->x:Lcom/spotify/mobile/android/e/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/n;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->i:Lcom/spotify/mobile/android/service/managers/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/c;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->N:Lcom/spotify/mobile/android/orbit/OrbitFactory;

    invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitFactory;->getConnectivityListener()Lcom/spotify/mobile/android/core/internal/ConnectivityListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->unregister()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->C:Lcom/spotify/mobile/android/service/SpotifyBatteryReceiver;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->u:Lcom/spotify/mobile/android/service/managers/a;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->u:Lcom/spotify/mobile/android/service/managers/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/a;->a()V

    :cond_81
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->k:Lcom/spotify/mobile/android/service/managers/ConnectManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->l()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->M:Lcom/spotify/mobile/android/ui/activity/upsell/r;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->M:Lcom/spotify/mobile/android/ui/activity/upsell/r;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->b()V

    iput-object v3, p0, Lcom/spotify/mobile/android/service/SpotifyService;->M:Lcom/spotify/mobile/android/ui/activity/upsell/r;

    :cond_91
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->E:Lcom/spotify/mobile/android/util/tracking/g;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->E:Lcom/spotify/mobile/android/util/tracking/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/g;->a()V

    iput-object v3, p0, Lcom/spotify/mobile/android/service/SpotifyService;->E:Lcom/spotify/mobile/android/util/tracking/g;

    :cond_9c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->F:Lcom/spotify/music/spotlets/situationalcontent/b/a;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->F:Lcom/spotify/music/spotlets/situationalcontent/b/a;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/situationalcontent/b/a;->a()V

    iput-object v3, p0, Lcom/spotify/mobile/android/service/SpotifyService;->F:Lcom/spotify/music/spotlets/situationalcontent/b/a;

    :cond_a7
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->stop()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->P:Lcom/spotify/mobile/android/service/ah;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->A:Landroid/os/Handler;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->O:Lcom/spotify/mobile/android/service/as;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/ah;->a(Landroid/os/Handler;Lcom/spotify/mobile/android/service/as;)V

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto/16 :goto_20

    :catchall_c0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_c3
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_20
.end method

.method public final d()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->B:Landroid/os/Handler;

    return-object v0
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->y:Lcom/spotify/mobile/android/service/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b;->d()V

    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->y:Lcom/spotify/mobile/android/service/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b;->e()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->J:Lcom/spotify/mobile/android/service/an;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_9

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    :cond_9
    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->K:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->g()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting core language to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/service/managers/e;->b(Ljava/lang/String;)V

    :cond_2b
    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->K:Ljava/util/Locale;

    return-void
.end method

.method public onCreate()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Creating service"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/mobile/android/service/z;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/z;->a()V

    const v0, 0x7f1000aa

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->setTheme(I)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->Q:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->R:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->S:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->T:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->U:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->A:Landroid/os/Handler;

    const-class v0, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v1, Lcom/spotify/mobile/android/service/as;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/as;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->O:Lcom/spotify/mobile/android/service/as;

    const-class v0, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v1, Lcom/spotify/mobile/android/service/ah;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/ah;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->P:Lcom/spotify/mobile/android/service/ah;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->c()Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_61
    :goto_61
    return-void

    :cond_62
    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    const-class v1, Lcom/spotify/mobile/android/service/SpotifyService;

    const-class v2, Lcom/spotify/mobile/android/orbit/OrbitFactory;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/orbit/OrbitFactory;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->N:Lcom/spotify/mobile/android/orbit/OrbitFactory;

    :try_start_76
    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->N:Lcom/spotify/mobile/android/orbit/OrbitFactory;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v2, v0}, Lcom/spotify/mobile/android/orbit/OrbitFactory;->createService(Landroid/app/Service;ILjava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_86} :catch_f1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_76 .. :try_end_86} :catch_fe

    iput-boolean v3, p0, Lcom/spotify/mobile/android/service/SpotifyService;->f:Z

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/SpotifyService;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/SpotifyService;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    iput-boolean v4, p0, Lcom/spotify/mobile/android/service/SpotifyService;->f:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->I:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.spotify.mobile.android.service.BROADCAST_DELETE_CACHE_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/music/internal/service/DeleteCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_b9
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->K:Ljava/util/Locale;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d9

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyService$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/SpotifyService$6;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_d9
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/applink/service/AppLinkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_61

    :catch_f1
    move-exception v0

    const-string v1, "Failed to start orbit due to RuntimeException"

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->b()V

    goto/16 :goto_61

    :catch_fe
    move-exception v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x3feccccccccccccdL

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_111

    const-string v1, "Failed to start orbit due to UnsatisfiedLinkError (throttled 90%)"

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_111
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->b()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->F(Landroid/content/Context;)V

    goto/16 :goto_61
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "Destroying service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->m:Lcom/spotify/cosmos/android/RemoteNativeRouter;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->m:Lcom/spotify/cosmos/android/RemoteNativeRouter;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->c()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/applink/service/AppLinkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->stopService(Landroid/content/Intent;)Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 16

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->a()V

    if-nez p1, :cond_c

    :cond_b
    :goto_b
    return v11

    :cond_c
    invoke-direct {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->g()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "Service not started - ignoring command: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->e:Lcom/spotify/mobile/android/service/am;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_22
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.spotify.mobile.android.service.action.session.LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/service/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    :cond_43
    const-string v1, "com.spotify.mobile.android.service.action.session.LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/e;->b()V

    goto :goto_b

    :cond_51
    const-string v1, "com.spotify.mobile.android.service.action.request.update.WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->p:Lcom/spotify/mobile/android/service/aq;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->p:Lcom/spotify/mobile/android/service/aq;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/aq;->c()V

    goto :goto_b

    :cond_63
    const-string v1, "com.spotify.mobile.android.service.action.session.ERASE_OFFLINE_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/e;->c()V

    goto :goto_b

    :cond_71
    const-string v1, "com.spotify.mobile.android.service.action.session.SEND_TO_INBOX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v3, v0, v1, v2}, Lcom/spotify/mobile/android/service/managers/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_90
    const-string v1, "com.spotify.mobile.android.service.action.session.LOG_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Log event requires an uri. intent.getStringExtra(EXTRA_LOG_EVENT_SOURCE_URI) cannot be null."

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "event"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "event_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "test_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "json_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "Logging event for view %s with context %s: Event %s version %s. Test version: %s, data: %s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v10

    aput-object v2, v7, v8

    aput-object v3, v7, v11

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v8, 0x4

    aput-object v5, v7, v8

    const/4 v8, 0x5

    aput-object v6, v7, v8

    invoke-static {v0, v7}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/service/managers/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->E:Lcom/spotify/mobile/android/util/tracking/g;

    invoke-virtual {v0, v3, v4, v6}, Lcom/spotify/mobile/android/util/tracking/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_e4
    const-string v1, "com.spotify.mobile.android.service.action.session.VIEW_LOAD_TIMER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-static {p1}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;

    move-result-object v0

    const-string v1, "ViewLoadTimerMessage must not be null for this service call!"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/managers/e;->a(Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;)V

    goto/16 :goto_b

    :cond_fc
    const-string v1, "com.spotify.mobile.android.service.action.session.APP_STARTUP_TIMER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-static {p1}, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->a(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;

    move-result-object v0

    const-string v1, "AppStartupTimerMessage must not be null for this service call!"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/managers/e;->a(Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;)V

    goto/16 :goto_b

    :cond_114
    const-string v1, "com.spotify.mobile.android.service.action.session.LOG_VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Log view requires an uri. intent.getStringExtra(EXTRA_LOG_VIEW_URI) cannot be null."

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "duration"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "Logging view %s at duration %d"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v3, v0, v1, v2}, Lcom/spotify/mobile/android/service/managers/e;->a(Ljava/lang/String;J)V

    goto/16 :goto_b

    :cond_143
    const-string v1, "com.spotify.mobile.android.service.action.player.PLAY_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c7

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content URI missing from intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No authority part set for the content uri "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    const-string v2, "com.spotify.music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content URI path missing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "row_id"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "shuffle"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "referer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "event_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    long-to-int v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/spotify/mobile/android/service/managers/d;->a(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1c7
    const-string v1, "com.spotify.mobile.android.service.action.player.CLEAR_QUEUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->a()V

    goto/16 :goto_b

    :cond_1d6
    const-string v1, "com.spotify.mobile.android.service.action.player.TOGGLE_PAUSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->b()V

    goto/16 :goto_b

    :cond_1e5
    const-string v1, "com.spotify.mobile.android.service.action.player.PREVIOUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Intent;)V

    goto/16 :goto_b

    :cond_1f2
    const-string v1, "com.spotify.mobile.android.service.action.player.NEXT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_201

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->c()V

    goto/16 :goto_b

    :cond_201
    const-string v1, "com.spotify.mobile.android.service.action.player.SEEK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_216

    const-string v0, "position"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/managers/d;->a(I)V

    goto/16 :goto_b

    :cond_216
    const-string v1, "com.spotify.mobile.android.service.action.player.THUMB_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_223

    invoke-direct {p0, v8}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Z)V

    goto/16 :goto_b

    :cond_223
    const-string v1, "com.spotify.mobile.android.service.action.player.THUMB_DOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_230

    invoke-direct {p0, v10}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Z)V

    goto/16 :goto_b

    :cond_230
    const-string v1, "com.spotify.mobile.android.service.action.player.NOTIFICATION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_254

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z

    move-result v0

    if-eqz v0, :cond_249

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0, v8}, Lcom/spotify/mobile/android/service/managers/d;->a(Z)V

    :cond_249
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->l()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->c()V

    goto/16 :goto_b

    :cond_254
    const-string v1, "com.spotify.mobile.android.service.action.player.NOTIFICATION_ADD_TO_COLLECTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28f

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aX:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const-string v2, "notification"

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->V:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v2, v3, v4, v4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v1, Lcom/spotify/mobile/android/util/cs;

    new-instance v2, Lcom/spotify/mobile/android/service/SpotifyService$9;

    invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService$9;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    sget-object v0, Lcom/spotify/mobile/android/provider/q;->a:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v10

    const-string v3, "value"

    aput-object v3, v2, v8

    invoke-virtual {v1, v0, v2, v4}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_28f
    const-string v1, "com.spotify.mobile.android.service.action.player.SKIP_N_TRACKS_BACKWARDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a4

    const-string v0, "n_tracks_to_skip"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/managers/d;->b(I)V

    goto/16 :goto_b

    :cond_2a4
    const-string v1, "com.spotify.mobile.android.service.action.player.SKIP_N_TRACKS_FORWARDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b9

    const-string v0, "n_tracks_to_skip"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/managers/d;->c(I)V

    goto/16 :goto_b

    :cond_2b9
    const-string v1, "com.spotify.mobile.android.service.action.player.PLAY_PREVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d0

    const-string v0, "preview_track_uris"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/managers/d;->a([Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_2d0
    const-string v1, "com.spotify.mobile.android.service.action.player.STOP_PREVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2df

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->d()V

    goto/16 :goto_b

    :cond_2df
    const-string v1, ".action.player.ADD_PLAY_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".action.player.RESET_SKIP_COUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "com.spotify.mobile.android.service.action.media_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a1

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_b

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/e/p;->m()Lcom/spotify/mobile/android/e/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v1

    if-eqz v1, :cond_323

    const-string v1, "com.spotify.music.service.video.action.media_button"

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_b

    :cond_323
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_4cc

    goto/16 :goto_b

    :sswitch_32c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->D:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_39b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->c()V

    :goto_348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->D:J

    goto/16 :goto_b

    :sswitch_350
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0, v10}, Lcom/spotify/mobile/android/service/managers/d;->a(Z)V

    goto/16 :goto_b

    :sswitch_357
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0, v8}, Lcom/spotify/mobile/android/service/managers/d;->a(Z)V

    goto/16 :goto_b

    :sswitch_35e
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->b()V

    goto/16 :goto_b

    :sswitch_365
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->p()Z

    move-result v0

    if-eqz v0, :cond_37a

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->n:Lcom/spotify/mobile/android/util/b;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aZ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/spotify/mobile/android/util/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    :cond_37a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->c()V

    goto/16 :goto_b

    :sswitch_381
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->p()Z

    move-result v0

    if-eqz v0, :cond_396

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->n:Lcom/spotify/mobile/android/util/b;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aZ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->r:Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/spotify/mobile/android/util/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    :cond_396
    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Intent;)V

    goto/16 :goto_b

    :cond_39b
    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->j:Lcom/spotify/mobile/android/service/managers/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/d;->b()V

    goto :goto_348

    :cond_3a1
    const-string v1, "com.spotify.mobile.android.service.action.player.REQUEST_AUDIO_SESSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c8

    const-string v0, "callback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "audio_session_id"

    iget-object v3, p0, Lcom/spotify/mobile/android/service/SpotifyService;->y:Lcom/spotify/mobile/android/service/b;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/service/b;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v10, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_b

    :cond_3c8
    const-string v1, "com.spotify.mobile.android.service.action.session.REPORT_AD_URL_CLICKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d7

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/e;->d()V

    goto/16 :goto_b

    :cond_3d7
    const-string v1, "com.spotify.mobile.android.service.action.client.FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ea

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->b()V

    goto/16 :goto_b

    :cond_3ea
    const-string v1, "com.spotify.mobile.android.service.action.client.BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3fd

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->w:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->c()V

    goto/16 :goto_b

    :cond_3fd
    const-string v1, "com.spotify.mobile.android.service.action.client.KILL_TO_DELETE_CACHE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->O:Lcom/spotify/mobile/android/service/as;

    invoke-static {}, Lcom/spotify/mobile/android/service/as;->a()V

    goto/16 :goto_b

    :cond_40c
    const-string v1, "com.spotify.mobile.android.service.action.log.REFERRAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_437

    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Log referral requires an referrer. intent.getStringExtra(EXTRA_LOG_REFERRER) cannot be null."

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Logging install referral: %s for device: %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v2, v0, v1}, Lcom/spotify/mobile/android/service/managers/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_437
    const-string v1, "com.spotify.mobile.android.service.action.push_notification.OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44e

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/service/a/d;->a(Landroid/app/Service;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_44e
    const-string v1, "com.spotify.mobile.android.service.action.googleiab.REGISTER_PURCHASES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_461

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->L:Lcom/spotify/mobile/android/ui/activity/upsell/i;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->L:Lcom/spotify/mobile/android/ui/activity/upsell/i;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/i;->e()V

    goto/16 :goto_b

    :cond_461
    const-string v1, "com.spotify.mobile.android.service.action.optintrial.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_479

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->M:Lcom/spotify/mobile/android/ui/activity/upsell/r;

    if-nez v0, :cond_b

    new-instance v0, Lcom/spotify/mobile/android/service/SpotifyService$10;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/SpotifyService$10;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_479
    const-string v1, "com.spotify.mobile.android.service.action.RESTART_APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->B:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/service/SpotifyService$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/SpotifyService$2;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_48d
    const-string v1, "com.spotify.mobile.android.service.action.START_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49e

    const-string v0, "Start service action received."

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_49e
    const-string v1, "com.spotify.mobile.android.service.action.CRASH_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4ad

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService;->g:Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;

    invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;->crash()V

    goto/16 :goto_b

    :cond_4ad
    const-string v1, "com.spotify.mobile.android.service.action.log.ACCEPT_USER_TERMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c4

    const-string v0, "accept_user_terms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService;->h:Lcom/spotify/mobile/android/service/managers/e;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/managers/e;->a(Lcom/spotify/mobile/android/model/TermsAndConditionsModel;)V

    goto/16 :goto_b

    :cond_4c4
    const-string v1, "com.spotify.mobile.android.service.action.SET_SERVICE_IDLE_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_b

    nop

    :sswitch_data_4cc
    .sparse-switch
        0x4f -> :sswitch_32c
        0x55 -> :sswitch_35e
        0x56 -> :sswitch_357
        0x57 -> :sswitch_365
        0x58 -> :sswitch_381
        0x7e -> :sswitch_350
        0x7f -> :sswitch_357
    .end sparse-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const-string v0, "Shutting down client since the task was removed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/SpotifyService;->c()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    const/4 v2, 0x0

    const-string v0, "Last client disconnected!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
