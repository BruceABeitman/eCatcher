.class Lcom/google/android/gms/internal/gp$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic CF:Lcom/google/android/gms/internal/gp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gp$a;->CF:Lcom/google/android/gms/internal/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/gp$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gp$a;-><init>(Lcom/google/android/gms/internal/gp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$a;->CF:Lcom/google/android/gms/internal/gp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/internal/gp;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$a;->CF:Lcom/google/android/gms/internal/gp;

    invoke-static {v0}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/internal/gp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gs;

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/internal/gs;->d(JI)Z

    goto :goto_14

    :cond_25
    sget-object v2, Lcom/google/android/gms/internal/gs;->CK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_28
    iget-object v0, p0, Lcom/google/android/gms/internal/gp$a;->CF:Lcom/google/android/gms/internal/gp;

    invoke-static {v0}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/internal/gp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gs;->eq()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    :goto_45
    move v1, v0

    goto :goto_32

    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$a;->CF:Lcom/google/android/gms/internal/gp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gp;->b(Lcom/google/android/gms/internal/gp;Z)V

    return-void

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    move v0, v1

    goto :goto_45
.end method
