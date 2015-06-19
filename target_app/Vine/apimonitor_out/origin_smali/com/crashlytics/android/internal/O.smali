.class Lcom/crashlytics/android/internal/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/internal/ak;


# instance fields
.field a:Lcom/crashlytics/android/internal/U;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Lcom/crashlytics/android/internal/av;)V
    .registers 21

    const-string v0, "Crashlytics SAM"

    invoke-static {v0}, Lcom/crashlytics/android/internal/ah;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/internal/O;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/av;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/av;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/internal/O;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/internal/O;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/internal/O;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/internal/O;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/crashlytics/android/internal/O;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/crashlytics/android/internal/O;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/crashlytics/android/internal/O;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/internal/O;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/crashlytics/android/internal/O;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/crashlytics/android/internal/J;

    invoke-direct {v0, p9, p8, p10}, Lcom/crashlytics/android/internal/J;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/K;Lcom/crashlytics/android/internal/av;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    invoke-virtual {p8, p0}, Lcom/crashlytics/android/internal/K;->a(Lcom/crashlytics/android/internal/ak;)V

    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/crashlytics/android/internal/V;Z)V
    .registers 4

    new-instance v0, Lcom/crashlytics/android/internal/Q;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/internal/Q;-><init>(Lcom/crashlytics/android/internal/O;Lcom/crashlytics/android/internal/V;Z)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V
    .registers 14

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/internal/O;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/internal/O;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/internal/O;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/internal/O;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/internal/O;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/internal/O;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/internal/O;->h:Ljava/lang/String;

    const-string v8, "activity"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Lcom/crashlytics/android/internal/V;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/W;Ljava/util/Map;)Lcom/crashlytics/android/internal/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/V;Z)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v0, "Crashlytics failed to submit analytics task"

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_5
.end method

.method static synthetic b(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/internal/T;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/internal/T;-><init>(Lcom/crashlytics/android/internal/O;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/W;->a:Lcom/crashlytics/android/internal/W;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V

    return-void
.end method

.method final a(Lcom/crashlytics/android/internal/aK;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/crashlytics/android/internal/R;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/internal/R;-><init>(Lcom/crashlytics/android/internal/O;Lcom/crashlytics/android/internal/aK;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/crashlytics/android/internal/P;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/internal/P;-><init>(Lcom/crashlytics/android/internal/O;Ljava/lang/String;)V

    :try_start_17
    iget-object v1, p0, Lcom/crashlytics/android/internal/O;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    const-string v0, "Crashlytics failed to run analytics task"

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public final b()V
    .registers 11

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/internal/O;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/internal/O;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/internal/O;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/internal/O;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/internal/O;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/internal/O;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/internal/O;->h:Ljava/lang/String;

    sget-object v8, Lcom/crashlytics/android/internal/W;->j:Lcom/crashlytics/android/internal/W;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v0 .. v9}, Lcom/crashlytics/android/internal/V;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/W;Ljava/util/Map;)Lcom/crashlytics/android/internal/V;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/V;Z)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/W;->g:Lcom/crashlytics/android/internal/W;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/crashlytics/android/internal/O;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/internal/O;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/internal/O;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/internal/O;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/internal/O;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/internal/O;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/internal/O;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/internal/O;->h:Ljava/lang/String;

    const-string v8, "sessionId"

    invoke-static {v8, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    sget-object v8, Lcom/crashlytics/android/internal/W;->h:Lcom/crashlytics/android/internal/W;

    invoke-static/range {v0 .. v9}, Lcom/crashlytics/android/internal/V;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/W;Ljava/util/Map;)Lcom/crashlytics/android/internal/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/V;Z)V

    return-void
.end method

.method public final c()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/internal/S;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/internal/S;-><init>(Lcom/crashlytics/android/internal/O;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/W;->e:Lcom/crashlytics/android/internal/W;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/W;->c:Lcom/crashlytics/android/internal/W;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V

    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/W;->d:Lcom/crashlytics/android/internal/W;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V

    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/W;->b:Lcom/crashlytics/android/internal/W;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V

    return-void
.end method

.method public final g(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/W;->f:Lcom/crashlytics/android/internal/W;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/W;Landroid/app/Activity;Z)V

    return-void
.end method
