.class public final Lcom/google/android/gms/internal/au;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/cx;

.field private final b:Lcom/google/android/gms/internal/bf;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/ax;

.field private f:Z

.field private g:Lcom/google/android/gms/internal/ba;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/ax;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/au;->f:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/au;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/au;->a:Lcom/google/android/gms/internal/cx;

    iput-object p3, p0, Lcom/google/android/gms/internal/au;->b:Lcom/google/android/gms/internal/bf;

    iput-object p4, p0, Lcom/google/android/gms/internal/au;->e:Lcom/google/android/gms/internal/ax;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/bb;
    .registers 15

    const-string v0, "Starting mediation."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->e:Lcom/google/android/gms/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ax;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/aw;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying mediation network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/android/gms/internal/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/google/android/gms/internal/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_33
    :goto_33
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/au;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_42
    iget-boolean v0, p0, Lcom/google/android/gms/internal/au;->f:Z

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/google/android/gms/internal/bb;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bb;-><init>(I)V

    monitor-exit v11

    :goto_4d
    return-object v0

    :cond_4e
    new-instance v0, Lcom/google/android/gms/internal/ba;

    iget-object v1, p0, Lcom/google/android/gms/internal/au;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/au;->b:Lcom/google/android/gms/internal/bf;

    iget-object v4, p0, Lcom/google/android/gms/internal/au;->e:Lcom/google/android/gms/internal/ax;

    iget-object v6, p0, Lcom/google/android/gms/internal/au;->a:Lcom/google/android/gms/internal/cx;

    iget-object v6, v6, Lcom/google/android/gms/internal/cx;->c:Lcom/google/android/gms/internal/ah;

    iget-object v7, p0, Lcom/google/android/gms/internal/au;->a:Lcom/google/android/gms/internal/cx;

    iget-object v7, v7, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/internal/ak;

    iget-object v8, p0, Lcom/google/android/gms/internal/au;->a:Lcom/google/android/gms/internal/cx;

    iget-object v8, v8, Lcom/google/android/gms/internal/cx;->k:Lcom/google/android/gms/internal/dx;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ba;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->g:Lcom/google/android/gms/internal/ba;

    monitor-exit v11
    :try_end_68
    .catchall {:try_start_42 .. :try_end_68} :catchall_78

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->g:Lcom/google/android/gms/internal/ba;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ba;->a(J)Lcom/google/android/gms/internal/bb;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/bb;->a:I

    if-nez v1, :cond_7b

    const-string v1, "Adapter succeeded."

    invoke-static {v1}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    goto :goto_4d

    :catchall_78
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_7b
    iget-object v1, v0, Lcom/google/android/gms/internal/bb;->c:Lcom/google/android/gms/internal/bi;

    if-eqz v1, :cond_33

    sget-object v1, Lcom/google/android/gms/internal/eo;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/au$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/au$1;-><init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/internal/bb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    :cond_8a
    new-instance v0, Lcom/google/android/gms/internal/bb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bb;-><init>(I)V

    goto :goto_4d
.end method

.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/au;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/au;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->g:Lcom/google/android/gms/internal/ba;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->g:Lcom/google/android/gms/internal/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ba;->a()V

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
