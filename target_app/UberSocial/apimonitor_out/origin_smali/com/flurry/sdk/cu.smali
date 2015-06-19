.class public Lcom/flurry/sdk/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dn$a;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/sdk/cu;


# instance fields
.field private final c:Ljava/util/HashMap;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/dz;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p0}, Lcom/flurry/sdk/cu;->d()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/cu;
    .registers 2

    const-class v1, Lcom/flurry/sdk/cu;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/cu;->b:Lcom/flurry/sdk/cu;

    if-nez v0, :cond_e

    new-instance v0, Lcom/flurry/sdk/cu;

    invoke-direct {v0}, Lcom/flurry/sdk/cu;-><init>()V

    sput-object v0, Lcom/flurry/sdk/cu;->b:Lcom/flurry/sdk/cu;

    :cond_e
    sget-object v0, Lcom/flurry/sdk/cu;->b:Lcom/flurry/sdk/cu;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .registers 6

    const/4 v4, 0x4

    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v1

    const-string v0, "CaptureUncaughtExceptions"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cu;->d:Z

    const-string v0, "CaptureUncaughtExceptions"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    sget-object v0, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, CrashReportingEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/cu;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "VersionName"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "VersionName"

    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    invoke-static {v0}, Lcom/flurry/sdk/dy;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, VersionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x4

    const-string v0, "CaptureUncaughtExceptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cu;->d:Z

    sget-object v0, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, CrashReportingEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/cu;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "VersionName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/flurry/sdk/dy;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, VersionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_52
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_2e

    array-length v0, v1

    if-le v0, v4, :cond_2e

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_18
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2d
    return-void

    :cond_2e
    move-object v0, v1

    goto :goto_18
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8

    const/16 v2, 0xa

    if-nez p3, :cond_9

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_9
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v2, :cond_2c

    sget-object v0, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxOriginParams exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "flurryOriginVersion"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_34
    iget-object v0, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v2, :cond_67

    iget-object v0, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/flurry/sdk/cu;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxOrigins exceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_2b

    :catchall_64
    move-exception v0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_34 .. :try_end_66} :catchall_64

    throw v0

    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_64

    goto :goto_2b
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 5

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_e
    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-static {p1}, Lcom/flurry/sdk/el;->a(Z)V

    return-void
.end method

.method public b()Ljava/util/HashMap;
    .registers 4

    iget-object v1, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/flurry/sdk/cu;->c:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_e
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_d
    return-void
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/flurry/sdk/dg;->e()V

    :cond_d
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_f
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_e
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-boolean v0, p0, Lcom/flurry/sdk/cu;->d:Z

    if-eqz v0, :cond_46

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_55

    array-length v1, v1

    if-lez v1, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_41
    :goto_41
    const-string v1, "uncaught"

    invoke-static {v1, v0, p2}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->d()V

    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->g()V

    return-void

    :cond_55
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method
