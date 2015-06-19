.class final Lcom/facebook/a/m;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# instance fields
.field final synthetic a:Lcom/facebook/a/i;

.field private b:Ljava/lang/Throwable;

.field private c:Lcom/facebook/a/d;

.field private final d:[Lcom/facebook/a/l;


# direct methods
.method public constructor <init>(Lcom/facebook/a/i;Lcom/facebook/a/d;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/a/l;

    invoke-direct {p0, p1, v0}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V

    iput-object p2, p0, Lcom/facebook/a/m;->c:Lcom/facebook/a/d;

    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/m;->b:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/facebook/a/m;->d:[Lcom/facebook/a/l;

    return-void
.end method

.method private b()Landroid/os/PowerManager$WakeLock;
    .registers 4

    new-instance v0, Lcom/facebook/a/c/g;

    iget-object v1, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v1}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/a/c/g;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Lcom/facebook/a/c/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v0}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ACRA wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_14
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/facebook/a/m;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final run()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/facebook/a/m;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/a/m;->c:Lcom/facebook/a/d;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    iget-object v2, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/a/m;->c:Lcom/facebook/a/d;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/a/i;->a(Landroid/content/Context;Lcom/facebook/a/d;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_3f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_30

    :goto_16
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    iget-object v2, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/i;

    invoke-static {v2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/i;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/a/m;->d:[Lcom/facebook/a/l;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/a/i;->a(Landroid/content/Context;[Lcom/facebook/a/l;)V
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_3f
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception v0

    :try_start_31
    iput-object v0, p0, Lcom/facebook/a/m;->b:Ljava/lang/Throwable;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_3f

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_21

    :catchall_3f
    move-exception v0

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4b
    throw v0
.end method
