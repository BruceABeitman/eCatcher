.class public Lcom/tencent/a/a/d;
.super Lcom/tencent/a/a/c;
.source "ProGuard"


# static fields
.field public static d:Lcom/tencent/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/a/a/d;->d:Lcom/tencent/a/a/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/tencent/a/a/c;-><init>()V

    new-instance v0, Lcom/tencent/a/a/a;

    sget-object v1, Lcom/tencent/a/a/d;->a:Lcom/tencent/a/a/h;

    invoke-direct {v0, v1}, Lcom/tencent/a/a/a;-><init>(Lcom/tencent/a/a/h;)V

    iput-object v0, p0, Lcom/tencent/a/a/d;->c:Lcom/tencent/a/a/a;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/tencent/a/a/d;->f()Lcom/tencent/a/a/d;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static f()Lcom/tencent/a/a/d;
    .registers 2

    sget-object v0, Lcom/tencent/a/a/d;->d:Lcom/tencent/a/a/d;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/a/a/d;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/a/a/d;->d:Lcom/tencent/a/a/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/a/a/d;

    invoke-direct {v0}, Lcom/tencent/a/a/d;-><init>()V

    sput-object v0, Lcom/tencent/a/a/d;->d:Lcom/tencent/a/a/d;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/a/a/d;->d:Lcom/tencent/a/a/d;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public b()V
    .registers 3

    const-class v1, Lcom/tencent/a/a/d;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/tencent/a/a/d;->c:Lcom/tencent/a/a/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/a/a/d;->c:Lcom/tencent/a/a/a;

    invoke-virtual {v0}, Lcom/tencent/a/a/a;->a()V

    iget-object v0, p0, Lcom/tencent/a/a/d;->c:Lcom/tencent/a/a/a;

    invoke-virtual {v0}, Lcom/tencent/a/a/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/a/d;->c:Lcom/tencent/a/a/a;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/a/a/d;->d:Lcom/tencent/a/a/d;

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method
