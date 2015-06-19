.class public final Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;


# instance fields
.field private final kH:Lcom/google/android/gms/internal/bf;

.field private final mContext:Landroid/content/Context;

.field private final mf:Lcom/google/android/gms/internal/cd;

.field private final mg:Ljava/lang/Object;

.field private final mh:Lcom/google/android/gms/internal/ay;

.field private mi:Z

.field private mj:Lcom/google/android/gms/internal/bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/ay;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mg:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aw;->mi:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/internal/cd;

    iput-object p3, p0, Lcom/google/android/gms/internal/aw;->kH:Lcom/google/android/gms/internal/bf;

    iput-object p4, p0, Lcom/google/android/gms/internal/aw;->mh:Lcom/google/android/gms/internal/ay;

    return-void
.end method


# virtual methods
.method public final a(JJ)Lcom/google/android/gms/internal/bc;
    .registers 21

    const-string v4, "Starting mediation."

    invoke-static {v4}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/aw;->mh:Lcom/google/android/gms/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/internal/ay;->mr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ax;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying mediation network: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/google/android/gms/internal/ax;->mm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/ax;->mn:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_35
    :goto_35
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/aw;->mg:Ljava/lang/Object;

    monitor-enter v15

    :try_start_46
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/aw;->mi:Z

    if-eqz v4, :cond_54

    new-instance v4, Lcom/google/android/gms/internal/bc;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/bc;-><init>(I)V

    monitor-exit v15

    :goto_53
    return-object v4

    :cond_54
    new-instance v4, Lcom/google/android/gms/internal/bb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/aw;->kH:Lcom/google/android/gms/internal/bf;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/aw;->mh:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/internal/cd;

    iget-object v10, v10, Lcom/google/android/gms/internal/cd;->oc:Lcom/google/android/gms/internal/z;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/internal/cd;

    iget-object v11, v11, Lcom/google/android/gms/internal/cd;->kQ:Lcom/google/android/gms/internal/ab;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/internal/cd;

    iget-object v12, v12, Lcom/google/android/gms/internal/cd;->kN:Lcom/google/android/gms/internal/db;

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/db;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/aw;->mj:Lcom/google/android/gms/internal/bb;

    monitor-exit v15
    :try_end_7c
    .catchall {:try_start_46 .. :try_end_7c} :catchall_92

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/aw;->mj:Lcom/google/android/gms/internal/bb;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/bb;->b(JJ)Lcom/google/android/gms/internal/bc;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/bc;->mL:I

    if-nez v5, :cond_95

    const-string v5, "Adapter succeeded."

    invoke-static {v5}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    goto :goto_53

    :catchall_92
    move-exception v4

    monitor-exit v15

    throw v4

    :cond_95
    iget-object v5, v4, Lcom/google/android/gms/internal/bc;->mN:Lcom/google/android/gms/internal/bg;

    if-eqz v5, :cond_35

    sget-object v5, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/aw$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/aw$1;-><init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bc;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_35

    :cond_a6
    new-instance v4, Lcom/google/android/gms/internal/bc;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/bc;-><init>(I)V

    goto :goto_53
.end method

.method public final cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mg:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/aw;->mi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mj:Lcom/google/android/gms/internal/bb;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mj:Lcom/google/android/gms/internal/bb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->cancel()V

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
