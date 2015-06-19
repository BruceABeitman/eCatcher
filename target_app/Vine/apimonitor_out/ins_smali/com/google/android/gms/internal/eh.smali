.class public Lcom/google/android/gms/internal/eh;
.super Ljava/lang/Object;
.field private final lq:Ljava/lang/Object;
.field private qL:Z
.field private final rA:Lcom/google/android/gms/internal/ei;
.field private final rB:Ljava/util/LinkedList;
.field private final rC:Ljava/lang/String;
.field private final rD:Ljava/lang/String;
.field private rE:J
.field private rF:J
.field private rG:J
.field private rH:J
.field private rI:J
.field private rJ:J
.method public constructor <init>(Lcom/google/android/gms/internal/ei;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const-wide/16 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rE:J
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rF:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/eh;->qL:Z
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rG:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/internal/eh;->rH:J
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rI:J
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
iput-object p1, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
iput-object p2, p0, Lcom/google/android/gms/internal/eh;->rC:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/eh;->rD:Ljava/lang/String;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/eh;->rB:Ljava/util/LinkedList;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/google/android/gms/internal/ei;->bC()Lcom/google/android/gms/internal/ei;
move-result-object v0
invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/eh;-><init>(Lcom/google/android/gms/internal/ei;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public bw()V
.registers 7
const-wide/16 v4, -0x1
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_5
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
cmp-long v0, v2, v4
if-eqz v0, :cond_1c
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rF:J
cmp-long v0, v2, v4
if-nez v0, :cond_1c
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rF:J
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/eh;)V
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-static {}, Lcom/google/android/gms/internal/ei;->bF()Lcom/google/android/gms/internal/ej;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej;->bw()V
monitor-exit v1
return-void
:catchall_27
move-exception v0
monitor-exit v1
:try_end_29
.catchall {:try_start_5 .. :try_end_29} :catchall_27
throw v0
.end method
.method public bx()V
.registers 7
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_2d
new-instance v0, Lcom/google/android/gms/internal/eh$a;
invoke-direct {v0}, Lcom/google/android/gms/internal/eh$a;-><init>()V
invoke-virtual {v0}, Lcom/google/android/gms/internal/eh$a;->bB()V
iget-object v2, p0, Lcom/google/android/gms/internal/eh;->rB:Ljava/util/LinkedList;
invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rH:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rH:J
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-static {}, Lcom/google/android/gms/internal/ei;->bF()Lcom/google/android/gms/internal/ej;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ej;->bx()V
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/eh;)V
:cond_2d
monitor-exit v1
return-void
:catchall_2f
move-exception v0
monitor-exit v1
:try_end_31
.catchall {:try_start_3 .. :try_end_31} :catchall_2f
throw v0
.end method
.method public by()V
.registers 7
const-wide/16 v4, -0x1
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_5
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
cmp-long v0, v2, v4
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rB:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rB:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/eh$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/eh$a;->bz()J
move-result-wide v2
cmp-long v2, v2, v4
if-nez v2, :cond_2b
invoke-virtual {v0}, Lcom/google/android/gms/internal/eh$a;->bA()V
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/eh;)V
:cond_2b
monitor-exit v1
return-void
:catchall_2d
move-exception v0
monitor-exit v1
:try_end_2f
.catchall {:try_start_5 .. :try_end_2f} :catchall_2d
throw v0
.end method
.method public f(Lcom/google/android/gms/internal/aj;)V
.registers 6
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rI:J
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-static {}, Lcom/google/android/gms/internal/ei;->bF()Lcom/google/android/gms/internal/ej;
move-result-object v0
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rI:J
invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ej;->b(Lcom/google/android/gms/internal/aj;J)V
monitor-exit v1
return-void
:catchall_16
move-exception v0
monitor-exit v1
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_16
throw v0
.end method
.method public j(J)V
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-wide p1, p0, Lcom/google/android/gms/internal/eh;->rJ:J
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/eh;)V
:cond_12
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_14
throw v0
.end method
.method public k(J)V
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_12
iput-wide p1, p0, Lcom/google/android/gms/internal/eh;->rE:J
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/eh;)V
:cond_12
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_14
throw v0
.end method
.method public n(Z)V
.registers 8
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_1c
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rG:J
if-nez p1, :cond_1c
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rG:J
iput-wide v2, p0, Lcom/google/android/gms/internal/eh;->rF:J
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/eh;)V
:cond_1c
monitor-exit v1
return-void
:catchall_1e
move-exception v0
monitor-exit v1
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_1e
throw v0
.end method
.method public o(Z)V
.registers 8
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/eh;->rJ:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_12
iput-boolean p1, p0, Lcom/google/android/gms/internal/eh;->qL:Z
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rA:Lcom/google/android/gms/internal/ei;
invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/eh;)V
:cond_12
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_14
throw v0
.end method
.method public toBundle()Landroid/os/Bundle;
.registers 6
iget-object v1, p0, Lcom/google/android/gms/internal/eh;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v0, "seqnum"
iget-object v3, p0, Lcom/google/android/gms/internal/eh;->rC:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "slotid"
iget-object v3, p0, Lcom/google/android/gms/internal/eh;->rD:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "ismediation"
iget-boolean v3, p0, Lcom/google/android/gms/internal/eh;->qL:Z
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "treq"
iget-wide v3, p0, Lcom/google/android/gms/internal/eh;->rI:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "tresponse"
iget-wide v3, p0, Lcom/google/android/gms/internal/eh;->rJ:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "timp"
iget-wide v3, p0, Lcom/google/android/gms/internal/eh;->rF:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "tload"
iget-wide v3, p0, Lcom/google/android/gms/internal/eh;->rG:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "pcc"
iget-wide v3, p0, Lcom/google/android/gms/internal/eh;->rH:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "tfetch"
iget-wide v3, p0, Lcom/google/android/gms/internal/eh;->rE:J
invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rB:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_52
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/eh$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/eh$a;->toBundle()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_52
:catchall_66
move-exception v0
monitor-exit v1
:try_end_68
.catchall {:try_start_3 .. :try_end_68} :catchall_66
throw v0
:cond_69
:try_start_69
const-string v0, "tclick"
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
monitor-exit v1
:try_end_6f
.catchall {:try_start_69 .. :try_end_6f} :catchall_66
return-object v2
.end method