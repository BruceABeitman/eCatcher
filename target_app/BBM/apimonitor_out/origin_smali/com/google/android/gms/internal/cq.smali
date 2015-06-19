.class public Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;


# instance fields
.field private final mg:Ljava/lang/Object;

.field private pA:I

.field private pB:J

.field private pC:J

.field private pD:I

.field private pE:I

.field private final pz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cq;->mg:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/cq;->pA:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/cq;->pB:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/cq;->pC:J

    iput v1, p0, Lcom/google/android/gms/internal/cq;->pD:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/cq;->pE:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cq;->pz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized aJ()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->mg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    :try_start_4
    iget v0, p0, Lcom/google/android/gms/internal/cq;->pD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cq;->pD:I

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1

    throw v0
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aK()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/cq;->pA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cq;->pA:I

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/cq;->pz:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v3, p0, Lcom/google/android/gms/internal/cq;->pC:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v3, p0, Lcom/google/android/gms/internal/cq;->pB:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "preqs"

    iget v3, p0, Lcom/google/android/gms/internal/cq;->pE:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pclick"

    iget v3, p0, Lcom/google/android/gms/internal/cq;->pA:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pimp"

    iget v3, p0, Lcom/google/android/gms/internal/cq;->pD:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/gms/internal/cm;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/cm;-><init>(Landroid/content/Context;)V

    const-string v3, "gnt"

    iget v4, v2, Lcom/google/android/gms/internal/cm;->oY:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, v2, Lcom/google/android/gms/internal/cm;->oX:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_51

    const-string v2, "net"

    const-string v3, "wi"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    monitor-exit v1

    return-object v0

    :cond_51
    const-string v2, "net"

    const-string v3, "ed"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_59

    goto :goto_4f

    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public b(Lcom/google/android/gms/internal/z;J)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/cq;->pC:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_23

    iput-wide p2, p0, Lcom/google/android/gms/internal/cq;->pC:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/cq;->pC:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/cq;->pB:J

    :goto_11
    iget-object v0, p1, Lcom/google/android/gms/internal/z;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/google/android/gms/internal/z;->extras:Landroid/os/Bundle;

    const-string v2, "gw"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    monitor-exit v1

    :goto_22
    return-void

    :cond_23
    iput-wide p2, p0, Lcom/google/android/gms/internal/cq;->pB:J
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_11

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_29
    :try_start_29
    iget v0, p0, Lcom/google/android/gms/internal/cq;->pE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cq;->pE:I

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    goto :goto_22
.end method
