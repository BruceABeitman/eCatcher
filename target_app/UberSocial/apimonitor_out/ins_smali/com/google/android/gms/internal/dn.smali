.class public Lcom/google/android/gms/internal/dn;
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
iput-object v0, p0, Lcom/google/android/gms/internal/dn;->a:Ljava/lang/Object;
iput v1, p0, Lcom/google/android/gms/internal/dn;->c:I
iput-wide v2, p0, Lcom/google/android/gms/internal/dn;->d:J
iput-wide v2, p0, Lcom/google/android/gms/internal/dn;->e:J
iput v1, p0, Lcom/google/android/gms/internal/dn;->f:I
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/dn;->g:I
iput-object p1, p0, Lcom/google/android/gms/internal/dn;->b:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
.registers 8
iget-object v1, p0, Lcom/google/android/gms/internal/dn;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "session_id"
iget-object v3, p0, Lcom/google/android/gms/internal/dn;->b:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "basets"
iget-wide v3, p0, Lcom/google/android/gms/internal/dn;->e:J
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v2, "currts"
iget-wide v3, p0, Lcom/google/android/gms/internal/dn;->d:J
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v2, "seq_num"
invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "preqs"
iget v3, p0, Lcom/google/android/gms/internal/dn;->g:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "pclick"
iget v3, p0, Lcom/google/android/gms/internal/dn;->c:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "pimp"
iget v3, p0, Lcom/google/android/gms/internal/dn;->f:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
new-instance v2, Lcom/google/android/gms/internal/dh;
invoke-direct {v2, p2}, Lcom/google/android/gms/internal/dh;-><init>(Landroid/content/Context;)V
const-string v3, "gnt"
iget v4, v2, Lcom/google/android/gms/internal/dh;->m:I
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget v2, v2, Lcom/google/android/gms/internal/dh;->l:I
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
goto :goto_4f
:catchall_59
move-exception v0
monitor-exit v1
:try_end_5b
.catchall {:try_start_3 .. :try_end_5b} :catchall_59
throw v0
.end method
.method public a()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/dn;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Lcom/google/android/gms/internal/dn;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/dn;->c:I
monitor-exit v1
return-void
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public a(Lcom/google/android/gms/internal/z;J)V
.registers 10
iget-object v1, p0, Lcom/google/android/gms/internal/dn;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-wide v2, p0, Lcom/google/android/gms/internal/dn;->e:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-nez v0, :cond_23
iput-wide p2, p0, Lcom/google/android/gms/internal/dn;->e:J
iget-wide v2, p0, Lcom/google/android/gms/internal/dn;->e:J
iput-wide v2, p0, Lcom/google/android/gms/internal/dn;->d:J
:goto_11
iget-object v0, p1, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;
if-eqz v0, :cond_29
iget-object v0, p1, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;
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
iput-wide p2, p0, Lcom/google/android/gms/internal/dn;->d:J
goto :goto_11
:catchall_26
move-exception v0
monitor-exit v1
:try_end_28
.catchall {:try_start_3 .. :try_end_28} :catchall_26
throw v0
:cond_29
:try_start_29
iget v0, p0, Lcom/google/android/gms/internal/dn;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/dn;->g:I
monitor-exit v1
:try_end_30
.catchall {:try_start_29 .. :try_end_30} :catchall_26
goto :goto_22
.end method
.method public declared-synchronized b()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/google/android/gms/internal/dn;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_4
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_10
iget v0, p0, Lcom/google/android/gms/internal/dn;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/dn;->f:I
monitor-exit v1
:try_end_b
.catchall {:try_start_4 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v0
:try_start_e
monitor-exit v1
:try_start_f
:try_end_f
.catchall {:try_start_e .. :try_end_f} :catchall_d
throw v0
:try_end_10
.catchall {:try_start_f .. :try_end_10} :catchall_10
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method