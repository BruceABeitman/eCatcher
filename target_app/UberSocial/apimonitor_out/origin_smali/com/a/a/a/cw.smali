.class public final Lcom/a/a/a/cw;
.super Lcom/a/a/a/cq;
.source "SourceFile"


# instance fields
.field private a:Lcom/a/a/a/cb;

.field private b:Ljava/util/concurrent/atomic/AtomicReference;

.field private c:Z

.field private d:Ljava/io/File;

.field private e:Landroid/app/Application;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/a/a/a/cq;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/cw;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/a/cw;->h:I

    new-instance v0, Lcom/a/a/a/b;

    sget-object v1, Lcom/a/a/a/cn;->a:Lcom/a/a/a/cn;

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/cn;)V

    iput-object v0, p0, Lcom/a/a/a/cw;->a:Lcom/a/a/a/cb;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/cw;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/a/a/a/cw;
    .registers 1

    invoke-static {}, Lcom/a/a/a/cz;->a()Lcom/a/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;)Lcom/a/a/a/cw;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/a/cw;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/a/a/a/cw;Landroid/app/Activity;)Lcom/a/a/a/cw;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/a/cw;->a(Landroid/app/Activity;)Lcom/a/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public static varargs declared-synchronized a(Landroid/content/Context;[Lcom/a/a/a/cv;)V
    .registers 9

    const-class v1, Lcom/a/a/a/cw;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/a/a/a/cz;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->A()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3f

    move-result v0

    if-eqz v0, :cond_f

    :goto_d
    monitor-exit v1

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/a/a/a/cz;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-static {p0}, Lcom/a/a/a/cs;->b(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v2

    iput-object v2, v0, Lcom/a/a/a/cw;->e:Landroid/app/Application;

    invoke-static {p0}, Lcom/a/a/a/cs;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/a/a/a/cw;->a(Landroid/app/Activity;)Lcom/a/a/a/cw;

    move-result-object v2

    array-length v3, p1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v3, :cond_3b

    aget-object v4, p1, v0

    iget-object v5, v2, Lcom/a/a/a/cw;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    iget-object v5, v2, Lcom/a/a/a/cw;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3b
    invoke-virtual {v2, p0}, Lcom/a/a/a/cw;->b(Landroid/content/Context;)V
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_3f

    goto :goto_d

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/a/a/a/cv;
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/cw;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/cv;

    return-object v0
.end method

.method public final a(Lcom/a/a/a/cr;)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/cw;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/a/cw;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/a/a/a/cw;->c:Z

    if-eqz p1, :cond_8

    const/4 v0, 0x3

    :goto_5
    iput v0, p0, Lcom/a/a/a/cw;->h:I

    return-void

    :cond_8
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public final b()Lcom/a/a/a/cr;
    .registers 4

    iget-object v0, p0, Lcom/a/a/a/cw;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/cr;

    if-nez v0, :cond_20

    new-instance v0, Lcom/a/a/a/cs;

    invoke-direct {v0}, Lcom/a/a/a/cs;-><init>()V

    iget-object v1, p0, Lcom/a/a/a/cw;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v0, p0, Lcom/a/a/a/cw;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/cr;

    :cond_20
    return-object v0
.end method

.method public final c()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/cw;->e:Landroid/app/Application;

    return-object v0
.end method

.method public final d()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/cw;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/a/a/a/cw;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/a/cw;->c:Z

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/a/a/a/cw;->h:I

    return v0
.end method

.method public final g()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/cw;->d:Ljava/io/File;

    return-object v0
.end method

.method protected final h()V
    .registers 9

    invoke-virtual {p0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.crashlytics.sdk.android"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/cw;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/a/a/a/cw;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/a/a/a/cw;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2f

    new-instance v0, Lcom/a/a/a/cx;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/a/a/a/cx;-><init>(Lcom/a/a/a/cw;B)V

    iget-object v2, p0, Lcom/a/a/a/cw;->e:Landroid/app/Application;

    invoke-static {v0, v2}, Lcom/a/a/a/cx;->a(Lcom/a/a/a/cx;Landroid/app/Application;)V

    :cond_2f
    iget-boolean v0, p0, Lcom/a/a/a/cw;->c:Z

    if-eqz v0, :cond_90

    const-string v0, "CrashlyticsInternal"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_90

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/a/a/a/cw;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/cq;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v1}, Lcom/a/a/a/cq;->b(Landroid/content/Context;)V

    const-string v6, "sdkPerfStart."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_86
    const-string v0, "CrashlyticsInternal"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-void

    :cond_90
    iget-object v0, p0, Lcom/a/a/a/cw;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/cq;

    invoke-virtual {v0, v1}, Lcom/a/a/a/cq;->b(Landroid/content/Context;)V

    goto :goto_9a
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    const-string v0, "1.1.13.29"

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/cw;->g:Ljava/lang/String;

    return-object v0
.end method
