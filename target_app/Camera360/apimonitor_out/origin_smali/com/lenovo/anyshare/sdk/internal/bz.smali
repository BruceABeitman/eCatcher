.class public abstract Lcom/lenovo/anyshare/sdk/internal/bz;
.super Ljava/lang/Object;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/bz$b;,
        Lcom/lenovo/anyshare/sdk/internal/bz$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/anyshare/sdk/internal/bz$a;

.field private b:Lcom/lenovo/anyshare/sdk/internal/bz$a;

.field private c:Lcom/lenovo/anyshare/sdk/internal/bz$a;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/bz;Lcom/lenovo/anyshare/sdk/internal/bz$a;)Lcom/lenovo/anyshare/sdk/internal/bz$a;
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/bz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/bz;Lcom/lenovo/anyshare/sdk/internal/bz$a;)Lcom/lenovo/anyshare/sdk/internal/bz$a;
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/bz;)V
    .registers 1

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bz;->c()V

    return-void
.end method

.method private final c()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "ModeManager"

    const-string/jumbo v2, "Enter scheduleSwitchMode()"

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, "ModeManager"

    const-string/jumbo v2, "scheduleSwitchMode: %s, switching: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_32
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_42

    if-nez v0, :cond_45

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2f

    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    :cond_45
    monitor-enter p0

    :try_start_46
    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bz$b;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    invoke-direct {v1, p0, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/bz$b;-><init>(Lcom/lenovo/anyshare/sdk/internal/bz;Lcom/lenovo/anyshare/sdk/internal/bz$a;Lcom/lenovo/anyshare/sdk/internal/bz$a;)V

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Lcom/lenovo/anyshare/sdk/internal/be$c;)Lcom/lenovo/anyshare/sdk/internal/be$c;

    monitor-exit p0

    goto :goto_2f

    :catchall_52
    move-exception v1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_52

    throw v1
.end method


# virtual methods
.method public final a()Lcom/lenovo/anyshare/sdk/internal/bz$a;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    return-object v0
.end method

.method public final a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
    .registers 7

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    const-string/jumbo v0, "ModeManager"

    const-string/jumbo v1, "new command: %s, switching: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_20
    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bz;->c()V

    return-void

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method protected abstract a(Lcom/lenovo/anyshare/sdk/internal/bz$a;Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
