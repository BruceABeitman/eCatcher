.class public final Lcom/spotify/mobile/android/util/cl;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Landroid/os/Handler;
.field private final c:Ljava/lang/Runnable;
.field private final d:Lcom/spotify/mobile/android/util/cn;
.field private final e:Lcom/spotify/mobile/android/util/cn;
.field private final f:Lcom/spotify/mobile/android/util/cn;
.field private final g:I
.field private final h:Lcom/spotify/mobile/android/util/cn;
.field private i:Z
.field private j:I
.field private k:Z
.field private l:Z
.method private constructor <init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;ILcom/spotify/mobile/android/util/cn;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/util/cl;->b:Landroid/os/Handler;
iput-object p4, p0, Lcom/spotify/mobile/android/util/cl;->d:Lcom/spotify/mobile/android/util/cn;
iput-object p5, p0, Lcom/spotify/mobile/android/util/cl;->e:Lcom/spotify/mobile/android/util/cn;
iput-object p6, p0, Lcom/spotify/mobile/android/util/cl;->f:Lcom/spotify/mobile/android/util/cn;
iput p7, p0, Lcom/spotify/mobile/android/util/cl;->g:I
iput-object p8, p0, Lcom/spotify/mobile/android/util/cl;->h:Lcom/spotify/mobile/android/util/cn;
new-instance v0, Lcom/spotify/mobile/android/util/cl$1;
invoke-direct {v0, p0, p3}, Lcom/spotify/mobile/android/util/cl$1;-><init>(Lcom/spotify/mobile/android/util/cl;Ljava/lang/Runnable;)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/cl;->c:Ljava/lang/Runnable;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;ILcom/spotify/mobile/android/util/cn;B)V
.registers 10
invoke-direct/range {p0 .. p8}, Lcom/spotify/mobile/android/util/cl;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;ILcom/spotify/mobile/android/util/cn;)V
return-void
.end method
.method private a(Lcom/spotify/mobile/android/util/cn;)J
.registers 4
if-nez p1, :cond_5
const-wide/16 v0, -0x1
:goto_4
return-wide v0
:cond_5
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/util/cn;->a(I)J
move-result-wide v0
goto :goto_4
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/cl;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
return-object v0
.end method
.method private a(JLjava/lang/String;)Z
.registers 11
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v1, 0x1
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->k:Z
iget-boolean v2, p0, Lcom/spotify/mobile/android/util/cl;->i:Z
if-nez v2, :cond_18
const-string v2, "%s: Not scheduling due to %s since policy is stopped"
new-array v3, v5, [Ljava/lang/Object;
iget-object v4, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
aput-object v4, v3, v0
aput-object p3, v3, v1
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_17
return v0
:cond_18
iget-object v2, p0, Lcom/spotify/mobile/android/util/cl;->b:Landroid/os/Handler;
iget-object v3, p0, Lcom/spotify/mobile/android/util/cl;->c:Ljava/lang/Runnable;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-boolean v2, p0, Lcom/spotify/mobile/android/util/cl;->l:Z
if-eqz v2, :cond_3a
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "restart-"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p3
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->l:Z
iget-object v2, p0, Lcom/spotify/mobile/android/util/cl;->d:Lcom/spotify/mobile/android/util/cn;
invoke-direct {p0, v2}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;)J
move-result-wide p1
:cond_3a
const-wide/16 v2, 0x0
cmp-long v2, p1, v2
if-gez v2, :cond_56
const-string v2, "%s: Not scheduling due to %s (failures: %d)"
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
aput-object v4, v3, v0
aput-object p3, v3, v1
iget v1, p0, Lcom/spotify/mobile/android/util/cl;->j:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v3, v5
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_17
:cond_56
const-string v2, "%s: Schedule try after %d ms, due to %s (failures: %d)"
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
aput-object v4, v3, v0
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v3, v1
aput-object p3, v3, v5
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v3, v6
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->b:Landroid/os/Handler;
iget-object v2, p0, Lcom/spotify/mobile/android/util/cl;->c:Ljava/lang/Runnable;
invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
move v0, v1
goto :goto_17
.end method
.method private a(Lcom/spotify/mobile/android/util/cn;Ljava/lang/String;)Z
.registers 5
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;)J
move-result-wide v0
invoke-direct {p0, v0, v1, p2}, Lcom/spotify/mobile/android/util/cl;->a(JLjava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/util/cl;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->k:Z
return v0
.end method
.method public final declared-synchronized a()V
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
monitor-enter p0
:try_start_3
iget-boolean v2, p0, Lcom/spotify/mobile/android/util/cl;->i:Z
if-nez v2, :cond_2e
:goto_7
const-string v1, "Policy is already running"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const-string v0, "%s: Started"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->i:Z
const/4 v0, 0x0
iput v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->k:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->l:Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->d:Lcom/spotify/mobile/android/util/cn;
const-string v1, "start"
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;Ljava/lang/String;)Z
:try_end_2c
.catchall {:try_start_3 .. :try_end_2c} :catchall_30
monitor-exit p0
return-void
:cond_2e
move v0, v1
goto :goto_7
:catchall_30
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(J)V
.registers 4
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
const-string v0, "success"
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/util/cl;->a(JLjava/lang/String;)Z
:try_end_9
.catchall {:try_start_2 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Z)V
.registers 3
monitor-enter p0
if-eqz p1, :cond_8
:try_start_3
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cl;->e()V
:goto_6
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_c
monitor-exit p0
return-void
:try_start_8
:cond_8
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cl;->f()V
:try_end_b
.catchall {:try_start_8 .. :try_end_b} :catchall_c
goto :goto_6
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->i:Z
const-string v1, "Policy is not running"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->l:Z
if-eqz v0, :cond_1b
const-string v0, "%s: Already waiting for result to restart"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_30
:goto_19
monitor-exit p0
return-void
:try_start_1b
:cond_1b
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->k:Z
if-eqz v0, :cond_33
const-string v0, "%s: Postponing restart until a result"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->l:Z
:try_end_2f
.catchall {:try_start_1b .. :try_end_2f} :catchall_30
goto :goto_19
:catchall_30
move-exception v0
monitor-exit p0
throw v0
:cond_33
const/4 v0, 0x0
:try_start_34
iput v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->d:Lcom/spotify/mobile/android/util/cn;
const-string v1, "restart"
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;Ljava/lang/String;)Z
:try_end_3d
.catchall {:try_start_34 .. :try_end_3d} :catchall_30
goto :goto_19
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->i:Z
return v0
.end method
.method public final declared-synchronized d()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->i:Z
const-string v1, "Policy is not running"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const-string v0, "%s: Stopped"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/util/cl;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cl;->i:Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/util/cl;->c:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_21
monitor-exit p0
return-void
:catchall_21
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized e()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->e:Lcom/spotify/mobile/android/util/cn;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/util/cl;->a(J)V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized f()V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
iget v1, p0, Lcom/spotify/mobile/android/util/cl;->g:I
if-le v0, v1, :cond_14
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->g:I
if-lez v0, :cond_14
const/4 v0, 0x1
iput v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
:cond_14
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
iget v1, p0, Lcom/spotify/mobile/android/util/cl;->g:I
if-lt v0, v1, :cond_1e
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->g:I
if-nez v0, :cond_27
:cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->f:Lcom/spotify/mobile/android/util/cn;
const-string v1, "failure"
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;Ljava/lang/String;)Z
:goto_25
:try_end_25
.catchall {:try_start_1 .. :try_end_25} :catchall_2f
monitor-exit p0
return-void
:cond_27
:try_start_27
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->h:Lcom/spotify/mobile/android/util/cn;
const-string v1, "max-failures"
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;Ljava/lang/String;)Z
:try_end_2e
.catchall {:try_start_27 .. :try_end_2e} :catchall_2f
goto :goto_25
:catchall_2f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final g()Z
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->j:I
iget v1, p0, Lcom/spotify/mobile/android/util/cl;->g:I
if-lt v0, v1, :cond_c
iget v0, p0, Lcom/spotify/mobile/android/util/cl;->g:I
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final h()J
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/cl;->e:Lcom/spotify/mobile/android/util/cn;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cn;)J
move-result-wide v0
return-wide v0
.end method