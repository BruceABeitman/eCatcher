.class public final Lcom/flurry/sdk/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/dz;


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/flurry/sdk/dz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/dz$a;-><init>(Lcom/flurry/sdk/dz;Lcom/flurry/sdk/dz$1;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dz;
    .registers 2

    const-class v1, Lcom/flurry/sdk/dz;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/dz;->a:Lcom/flurry/sdk/dz;

    if-nez v0, :cond_e

    new-instance v0, Lcom/flurry/sdk/dz;

    invoke-direct {v0}, Lcom/flurry/sdk/dz;-><init>()V

    sput-object v0, Lcom/flurry/sdk/dz;->a:Lcom/flurry/sdk/dz;

    :cond_e
    sget-object v0, Lcom/flurry/sdk/dz;->a:Lcom/flurry/sdk/dz;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dz;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dz;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0}, Lcom/flurry/sdk/dz;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    :try_start_14
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    move-exception v0

    goto :goto_8

    :cond_1a
    return-void
.end method

.method private b()Ljava/util/Set;
    .registers 3

    iget-object v1, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method static synthetic b(Lcom/flurry/sdk/dz;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dz;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/flurry/sdk/dz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/dz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 5

    iget-object v1, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
