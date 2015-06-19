.class public final Lcom/google/android/gms/internal/dz;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/eb;
.field private final b:Ljava/util/LinkedList;
.field private final c:Ljava/lang/Object;
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.field private f:J
.field private g:J
.field private h:Z
.field private i:J
.field private j:J
.field private k:J
.field private l:J
.method private constructor <init>(Lcom/google/android/gms/internal/eb;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const-wide/16 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->f:J
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->g:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/dz;->h:Z
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->i:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/internal/dz;->j:J
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->k:J
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
iput-object p1, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
iput-object p2, p0, Lcom/google/android/gms/internal/dz;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/dz;->e:Ljava/lang/String;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/dz;->b:Ljava/util/LinkedList;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/google/android/gms/internal/eb;->a()Lcom/google/android/gms/internal/eb;
move-result-object v0
invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/dz;-><init>(Lcom/google/android/gms/internal/eb;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a()V
.registers 7
const-wide/16 v4, -0x1
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_5
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
cmp-long v0, v2, v4
if-eqz v0, :cond_1c
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->g:J
cmp-long v0, v2, v4
if-nez v0, :cond_1c
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->g:J
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/dz;)V
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-static {}, Lcom/google/android/gms/internal/eb;->c()Lcom/google/android/gms/internal/ec;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->c()V
monitor-exit v1
:try_end_26
.catchall {:try_start_5 .. :try_end_26} :catchall_27
return-void
:catchall_27
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(J)V
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-wide p1, p0, Lcom/google/android/gms/internal/dz;->l:J
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/dz;)V
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/ah;)V
.registers 6
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->k:J
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-static {}, Lcom/google/android/gms/internal/eb;->c()Lcom/google/android/gms/internal/ec;
move-result-object v0
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->k:J
invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/ah;J)V
monitor-exit v1
:try_end_15
.catchall {:try_start_3 .. :try_end_15} :catchall_16
return-void
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Z)V
.registers 8
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_1c
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->i:J
if-nez p1, :cond_1c
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->i:J
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->g:J
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/dz;)V
:cond_1c
monitor-exit v1
:try_end_1d
.catchall {:try_start_3 .. :try_end_1d} :catchall_1e
return-void
:catchall_1e
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()V
.registers 7
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_2d
new-instance v0, Lcom/google/android/gms/internal/ea;
invoke-direct {v0}, Lcom/google/android/gms/internal/ea;-><init>()V
invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->c()V
iget-object v2, p0, Lcom/google/android/gms/internal/dz;->b:Ljava/util/LinkedList;
invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->j:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
iput-wide v2, p0, Lcom/google/android/gms/internal/dz;->j:J
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-static {}, Lcom/google/android/gms/internal/eb;->c()Lcom/google/android/gms/internal/ec;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->b()V
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/dz;)V
:cond_2d
monitor-exit v1
:try_end_2e
.catchall {:try_start_3 .. :try_end_2e} :catchall_2f
return-void
:catchall_2f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b(J)V
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_12
iput-wide p1, p0, Lcom/google/android/gms/internal/dz;->f:J
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/dz;)V
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b(Z)V
.registers 8
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_12
iput-boolean p1, p0, Lcom/google/android/gms/internal/dz;->h:Z
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/dz;)V
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()V
.registers 7
const-wide/16 v4, -0x1
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_5
iget-wide v2, p0, Lcom/google/android/gms/internal/dz;->l:J
cmp-long v0, v2, v4
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ea;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->a()J
move-result-wide v2
cmp-long v2, v2, v4
if-nez v2, :cond_2b
invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->b()V
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->a:Lcom/google/android/gms/internal/eb;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/dz;)V
:cond_2b
monitor-exit v1
:try_end_2c
.catchall {:try_start_5 .. :try_end_2c} :catchall_2d
return-void
:catchall_2d
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final d()Landroid/os/Bundle;
.registers 6
iget-object v1, p0, Lcom/google/android/gms/internal/dz;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v0, "seqnum"
iget-object v3, p0, Lcom/google/android/gms/internal/dz;->d:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "slotid"
iget-object v3, p0, Lcom/google/android/gms/internal/dz;->e:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "ismediation"
iget-boolean v3, p0, Lcom/google/android/gms/internal/dz;->h:Z
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "treq"
iget-wide v3, p0, Lcom/google/android/gms/internal/dz;->k:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "tresponse"
iget-wide v3, p0, Lcom/google/android/gms/internal/dz;->l:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "timp"
iget-wide v3, p0, Lcom/google/android/gms/internal/dz;->g:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "tload"
iget-wide v3, p0, Lcom/google/android/gms/internal/dz;->i:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "pcc"
iget-wide v3, p0, Lcom/google/android/gms/internal/dz;->j:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "tfetch"
iget-wide v3, p0, Lcom/google/android/gms/internal/dz;->f:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/dz;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_52
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ea;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->d()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_65
.catchall {:try_start_3 .. :try_end_65} :catchall_66
goto :goto_52
:catchall_66
move-exception v0
monitor-exit v1
throw v0
:try_start_69
:cond_69
const-string v0, "tclick"
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
monitor-exit v1
:try_end_6f
.catchall {:try_start_69 .. :try_end_6f} :catchall_66
return-object v2
.end method