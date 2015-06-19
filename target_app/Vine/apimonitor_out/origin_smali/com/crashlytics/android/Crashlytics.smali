.class public final Lcom/crashlytics/android/Crashlytics;
.super Lcom/crashlytics/android/internal/u;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "Crashlytics"

.field private static j:Landroid/content/ContextWrapper;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Z

.field private static s:Lcom/crashlytics/android/PinningInfoProvider;

.field private static t:Lcom/crashlytics/android/internal/av;

.field private static u:F

.field private static v:Lcom/crashlytics/android/Crashlytics;


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/crashlytics/android/CrashlyticsListener;

.field private d:Lcom/crashlytics/android/v;

.field private e:Lcom/crashlytics/android/internal/ao;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/crashlytics/android/Crashlytics;->r:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->s:Lcom/crashlytics/android/PinningInfoProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/crashlytics/android/internal/u;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/internal/ao;

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/Crashlytics;->a:J

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;FI)I
    .registers 4

    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private a(Lcom/crashlytics/android/Y;)Lcom/crashlytics/android/b;
    .registers 13

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/internal/ai;->a(Ljava/lang/String;)Lcom/crashlytics/android/internal/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ai;->a()I

    move-result v7

    new-instance v0, Lcom/crashlytics/android/b;

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->p:Ljava/lang/String;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    sget-object v4, Lcom/crashlytics/android/Crashlytics;->n:Ljava/lang/String;

    sget-object v6, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    sget-object v8, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/Y;)V

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/v;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    if-nez v1, :cond_19

    :cond_a
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging messages."

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/crashlytics/android/Crashlytics;->a:J

    sub-long/2addr v1, v3

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/crashlytics/android/internal/ab;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/v;->a(JLjava/lang/String;)V

    goto :goto_18
.end method

.method static a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    const-class v1, Lcom/crashlytics/android/internal/D;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/v;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/u;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/D;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/crashlytics/android/internal/ag;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/internal/ag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/D;->a(Lcom/crashlytics/android/internal/ag;)V

    :cond_16
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/Context;F)V
    .registers 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Crashlytics already started, ignoring re-initialization attempt."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17f

    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    sput-object p1, Lcom/crashlytics/android/Crashlytics;->p:Ljava/lang/String;

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    new-instance v0, Lcom/crashlytics/android/internal/av;

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/crashlytics/android/internal/av;-><init>(Lcom/crashlytics/android/internal/q;)V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initializing Crashlytics "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getCrashlyticsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_17 .. :try_end_53} :catchall_17f

    :try_start_53
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Installer package name is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/crashlytics/android/Crashlytics;->n:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_182

    const-string v0, "0.0"

    :goto_9c
    sput-object v0, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    invoke-static {p2}, Lcom/crashlytics/android/internal/ab;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Ljava/lang/String;
    :try_end_c2
    .catchall {:try_start_53 .. :try_end_c2} :catchall_17f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_c2} :catch_186

    :goto_c2
    :try_start_c2
    new-instance v0, Lcom/crashlytics/android/internal/ao;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/internal/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/internal/ao;

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->h()Ljava/lang/String;

    new-instance v0, Lcom/crashlytics/android/c;

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->i:Ljava/lang/String;

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    const-string v4, "com.crashlytics.RequireBuildId"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/c;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/crashlytics/android/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_c2 .. :try_end_e5} :catchall_17f

    :try_start_e5
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "Installing exception handler..."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/crashlytics/android/v;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/CrashlyticsListener;

    iget-object v4, p0, Lcom/crashlytics/android/Crashlytics;->i:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/crashlytics/android/v;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    invoke-virtual {v0}, Lcom/crashlytics/android/v;->f()Z

    move-result v1

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    invoke-virtual {v0}, Lcom/crashlytics/android/v;->d()V

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    invoke-virtual {v0}, Lcom/crashlytics/android/v;->c()V

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    invoke-virtual {v0}, Lcom/crashlytics/android/v;->h()V

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    const-string v3, "Successfully installed exception handler."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_e5 .. :try_end_12c} :catchall_17f
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_12c} :catch_198

    :goto_12c
    :try_start_12c
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/crashlytics/android/t;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/crashlytics/android/t;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;FLjava/util/concurrent/CountDownLatch;)V

    const-string v4, "Crashlytics Initializer"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_12c .. :try_end_152} :catchall_17f

    const-wide/16 v1, 0xfa0

    :try_start_154
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Crashlytics initialization was not completed in the allotted time."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catchall {:try_start_154 .. :try_end_16b} :catchall_17f
    .catch Ljava/lang/InterruptedException; {:try_start_154 .. :try_end_16b} :catch_16d

    goto/16 :goto_15

    :catch_16d
    move-exception v0

    :try_start_16e
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17d
    .catchall {:try_start_16e .. :try_end_17d} :catchall_17f

    goto/16 :goto_15

    :catchall_17f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_182
    :try_start_182
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_184
    .catchall {:try_start_182 .. :try_end_184} :catchall_17f
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_184} :catch_186

    goto/16 :goto_9c

    :catch_186
    move-exception v0

    :try_start_187
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Error setting up app properties"

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c2

    :catch_198
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "There was a problem installing the exception handler."

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a8
    .catchall {:try_start_187 .. :try_end_1a8} :catchall_17f

    goto :goto_12c
.end method

.method static a(Z)V
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/internal/ab;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/content/Context;F)Z
    .registers 13

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :try_start_b
    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->n:Ljava/lang/String;

    sget-object v4, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/crashlytics/android/internal/aS;->a(Landroid/content/Context;Lcom/crashlytics/android/internal/av;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aS;->c()Z

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aS;->b()Lcom/crashlytics/android/internal/aX;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_90

    move-result-object v0

    move-object v2, v0

    :goto_2a
    if-eqz v2, :cond_134

    :try_start_2c
    iget-object v0, v2, Lcom/crashlytics/android/internal/aX;->a:Lcom/crashlytics/android/internal/aM;

    const-string v1, "new"

    iget-object v3, v0, Lcom/crashlytics/android/internal/aM;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/crashlytics/android/Y;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/crashlytics/android/Y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Y;)Lcom/crashlytics/android/b;

    move-result-object v1

    new-instance v3, Lcom/crashlytics/android/T;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/crashlytics/android/internal/aM;->b:Ljava/lang/String;

    sget-object v5, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    invoke-direct {v3, v4, v0, v5}, Lcom/crashlytics/android/T;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;)V

    invoke-virtual {v3, v1}, Lcom/crashlytics/android/T;->a(Lcom/crashlytics/android/b;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aS;->d()Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5e} :catch_f9

    move-result v0

    :goto_5f
    move v1, v0

    :goto_60
    :try_start_60
    iget-object v0, v2, Lcom/crashlytics/android/internal/aX;->d:Lcom/crashlytics/android/internal/aP;

    iget-boolean v0, v0, Lcom/crashlytics/android/internal/aP;->b:Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_10c

    :goto_64
    if-eqz v1, :cond_131

    if-eqz v0, :cond_131

    :try_start_68
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    invoke-virtual {v0}, Lcom/crashlytics/android/v;->b()Z

    move-result v0

    and-int/lit8 v7, v0, 0x1

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->q()Lcom/crashlytics/android/V;

    move-result-object v0

    if-eqz v0, :cond_7e

    new-instance v1, Lcom/crashlytics/android/aa;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/aa;-><init>(Lcom/crashlytics/android/V;)V

    invoke-virtual {v1, p2}, Lcom/crashlytics/android/aa;->a(F)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7e} :catch_11f

    :cond_7e
    :goto_7e
    if-eqz v6, :cond_8f

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Crash reporting disabled."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    return v7

    :catch_90
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v8

    goto :goto_2a

    :cond_a2
    :try_start_a2
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v3, "Failed to create app with Crashlytics service."

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_5f

    :cond_b4
    const-string v1, "configured"

    iget-object v3, v0, Lcom/crashlytics/android/internal/aM;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aS;->d()Z

    move-result v0

    goto :goto_5f

    :cond_c7
    iget-boolean v1, v0, Lcom/crashlytics/android/internal/aM;->d:Z

    if-eqz v1, :cond_f6

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v3, "Crashlytics"

    const-string v4, "Server says an update is required - forcing a full App update."

    invoke-interface {v1, v3, v4}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/crashlytics/android/Y;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/crashlytics/android/Y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Y;)Lcom/crashlytics/android/b;

    move-result-object v1

    new-instance v3, Lcom/crashlytics/android/ad;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/crashlytics/android/internal/aM;->b:Ljava/lang/String;

    sget-object v5, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    invoke-direct {v3, v4, v0, v5}, Lcom/crashlytics/android/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;)V

    invoke-virtual {v3, v1}, Lcom/crashlytics/android/ad;->a(Lcom/crashlytics/android/b;)Z
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_f6} :catch_f9

    :cond_f6
    move v0, v7

    goto/16 :goto_5f

    :catch_f9
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v3, "Crashlytics"

    const-string v4, "Error performing auto configuration."

    invoke-interface {v1, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v6

    goto/16 :goto_60

    :catch_10c
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Error getting collect reports setting."

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto/16 :goto_64

    :catch_11f
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Error sending crash report"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7e

    :cond_131
    move v6, v7

    goto/16 :goto_7e

    :cond_134
    move v0, v6

    move v1, v6

    goto/16 :goto_64
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/internal/aQ;)Z
    .registers 9

    new-instance v4, Lcom/crashlytics/android/X;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/X;-><init>(Landroid/content/Context;Lcom/crashlytics/android/internal/aQ;)V

    new-instance v3, Lcom/crashlytics/android/u;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/crashlytics/android/u;-><init>(Lcom/crashlytics/android/Crashlytics;B)V

    new-instance v0, Lcom/crashlytics/android/p;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/p;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/u;Lcom/crashlytics/android/X;Lcom/crashlytics/android/internal/aQ;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Waiting for user opt-in."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/crashlytics/android/u;->b()V

    invoke-virtual {v3}, Lcom/crashlytics/android/u;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;F)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->a(Landroid/content/Context;F)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    const-class v1, Lcom/crashlytics/android/internal/D;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/v;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/u;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/D;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/crashlytics/android/internal/af;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/internal/af;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/D;->a(Lcom/crashlytics/android/internal/af;)V

    :cond_16
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v1, 0x400

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    return-object v0
.end method

.method static g()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static getCrashlyticsVersion()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/crashlytics/android/Crashlytics;
    .registers 3

    const-class v1, Lcom/crashlytics/android/Crashlytics;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    const-class v2, Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/internal/v;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/u;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Crashlytics;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_21

    if-eqz v0, :cond_13

    :goto_11
    monitor-exit v1

    return-object v0

    :cond_13
    :try_start_13
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->v:Lcom/crashlytics/android/Crashlytics;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v0}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->v:Lcom/crashlytics/android/Crashlytics;

    :cond_1e
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->v:Lcom/crashlytics/android/Crashlytics;
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_21

    goto :goto_11

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPinningInfoProvider()Lcom/crashlytics/android/PinningInfoProvider;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->s:Lcom/crashlytics/android/PinningInfoProvider;

    return-object v0
.end method

.method static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    return-object v0
.end method

.method static i()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lcom/crashlytics/android/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k()Z
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/internal/ab;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/crashlytics/android/internal/q;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    const-string v1, "Crashlytics"

    invoke-static {v0, v1, p0}, Lcom/crashlytics/android/Crashlytics;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    if-nez v1, :cond_1b

    :cond_a
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging exceptions."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-void

    :cond_1b
    if-nez p0, :cond_2e

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "Crashlytics"

    const-string v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lcom/crashlytics/android/internal/q;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_2e
    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/crashlytics/android/v;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method static synthetic s()Lcom/crashlytics/android/internal/av;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    return-object v0
.end method

.method public static setApplicationInstallationIdentifier(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPinningInfoProvider(Lcom/crashlytics/android/PinningInfoProvider;)V
    .registers 3

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->s:Lcom/crashlytics/android/PinningInfoProvider;

    if-eq v0, p0, :cond_12

    sput-object p0, Lcom/crashlytics/android/Crashlytics;->s:Lcom/crashlytics/android/PinningInfoProvider;

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    if-eqz v0, :cond_12

    if-nez p0, :cond_13

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/av;->a(Lcom/crashlytics/android/internal/aG;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    new-instance v1, Lcom/crashlytics/android/k;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/k;-><init>(Lcom/crashlytics/android/PinningInfoProvider;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/av;->a(Lcom/crashlytics/android/internal/aG;)V

    goto :goto_12
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p0, :cond_27

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->j:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    return-void

    :cond_27
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_45

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_45
    if-nez p1, :cond_53

    const-string p1, ""

    :goto_49
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_53
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    :cond_58
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/lang/String;

    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->f:Ljava/lang/String;

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->h:Ljava/lang/String;

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 2

    const/high16 v0, 0x3f80

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;F)V

    return-void
.end method

.method public static start(Landroid/content/Context;F)V
    .registers 5

    sput p1, Lcom/crashlytics/android/Crashlytics;->u:F

    invoke-static {p0}, Lcom/crashlytics/android/internal/ab;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/internal/A;

    invoke-direct {v1}, Lcom/crashlytics/android/internal/A;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/v;->a(Lcom/crashlytics/android/internal/q;)V

    :cond_14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/crashlytics/android/internal/u;

    const/4 v1, 0x0

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/crashlytics/android/internal/D;

    invoke-direct {v2}, Lcom/crashlytics/android/internal/D;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/crashlytics/android/internal/v;->a(Landroid/content/Context;[Lcom/crashlytics/android/internal/u;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/crashlytics/android/internal/ao;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/internal/ao;

    return-object v0
.end method

.method protected final c()V
    .registers 5

    invoke-super {p0}, Lcom/crashlytics/android/internal/u;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/internal/r;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    :goto_b
    return-void

    :cond_c
    :try_start_c
    sget v2, Lcom/crashlytics/android/Crashlytics;->u:F

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;Landroid/content/Context;F)V
    :try_end_11
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_c .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_14

    goto :goto_b

    :catch_12
    move-exception v0

    throw v0

    :catch_14
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public final crash()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/CrashTest;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashTest;-><init>()V

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashTest;->indexOutOfBounds()V

    return-void
.end method

.method public final getDebugMode()Z
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->f()Z

    move-result v0

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final j()Z
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/l;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/l;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/aS;->a(Lcom/crashlytics/android/internal/aU;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final l()Lcom/crashlytics/android/v;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/v;

    return-object v0
.end method

.method final m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->f:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final p()Z
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/m;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/m;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/aS;->a(Lcom/crashlytics/android/internal/aU;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final q()Lcom/crashlytics/android/V;
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/n;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/n;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/aS;->a(Lcom/crashlytics/android/internal/aU;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/V;

    return-object v0
.end method

.method final r()Lcom/crashlytics/android/internal/aR;
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/o;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/o;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/aS;->a(Lcom/crashlytics/android/internal/aU;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/aR;

    return-object v0
.end method

.method public final setDebugMode(Z)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/v;->a(Z)V

    return-void
.end method

.method public final setListener(Lcom/crashlytics/android/CrashlyticsListener;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/CrashlyticsListener;

    return-void
.end method

.method public final verifyPinning(Ljava/net/URL;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getPinningInfoProvider()Lcom/crashlytics/android/PinningInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->t:Lcom/crashlytics/android/internal/av;

    sget-object v2, Lcom/crashlytics/android/internal/ax;->a:Lcom/crashlytics/android/internal/ax;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/internal/av;->a(Lcom/crashlytics/android/internal/ax;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/ay;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/ay;->b()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_24

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21

    :catch_24
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Could not verify SSL pinning"

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_21
.end method
