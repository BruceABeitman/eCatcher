.class public final Lcom/google/android/gms/internal/ec;
.super Ljava/lang/Object;
.field private final a:Ljava/lang/Object;
.field private final b:Ljava/lang/String;
.field private c:I
.field private d:J
.field private e:J
.field private f:I
.field private g:I
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const-wide/16 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ec;->a:Ljava/lang/Object;
iput v1, p0, Lcom/google/android/gms/internal/ec;->c:I
iput-wide v2, p0, Lcom/google/android/gms/internal/ec;->d:J
iput-wide v2, p0, Lcom/google/android/gms/internal/ec;->e:J
iput v1, p0, Lcom/google/android/gms/internal/ec;->f:I
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/ec;->g:I
iput-object p1, p0, Lcom/google/android/gms/internal/ec;->b:Ljava/lang/String;
return-void
.end method
.method public final a()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/internal/ec;->e:J
return-wide v0
.end method
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
.registers 7
iget-object v1, p0, Lcom/google/android/gms/internal/ec;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "session_id"
iget-object v3, p0, Lcom/google/android/gms/internal/ec;->b:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "basets"
iget-wide v3, p0, Lcom/google/android/gms/internal/ec;->e:J
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v2, "currts"
iget-wide v3, p0, Lcom/google/android/gms/internal/ec;->d:J
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v2, "seq_num"
invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "preqs"
iget v3, p0, Lcom/google/android/gms/internal/ec;->g:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "pclick"
iget v3, p0, Lcom/google/android/gms/internal/ec;->c:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "pimp"
iget v3, p0, Lcom/google/android/gms/internal/ec;->f:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
monitor-exit v1
:try_end_38
.catchall {:try_start_3 .. :try_end_38} :catchall_39
return-object v0
:catchall_39
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/ah;J)V
.registers 10
iget-object v1, p0, Lcom/google/android/gms/internal/ec;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/ec;->e:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-nez v0, :cond_23
iput-wide p2, p0, Lcom/google/android/gms/internal/ec;->e:J
iget-wide v2, p0, Lcom/google/android/gms/internal/ec;->e:J
iput-wide v2, p0, Lcom/google/android/gms/internal/ec;->d:J
:goto_11
iget-object v0, p1, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;
if-eqz v0, :cond_29
iget-object v0, p1, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;
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
iput-wide p2, p0, Lcom/google/android/gms/internal/ec;->d:J
:try_end_25
.catchall {:try_start_3 .. :try_end_25} :catchall_26
goto :goto_11
:catchall_26
move-exception v0
monitor-exit v1
throw v0
:cond_29
:try_start_29
iget v0, p0, Lcom/google/android/gms/internal/ec;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ec;->g:I
monitor-exit v1
:try_end_30
.catchall {:try_start_29 .. :try_end_30} :catchall_26
goto :goto_22
.end method
.method public final b()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/ec;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Lcom/google/android/gms/internal/ec;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ec;->c:I
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-void
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/ec;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Lcom/google/android/gms/internal/ec;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ec;->f:I
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-void
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method