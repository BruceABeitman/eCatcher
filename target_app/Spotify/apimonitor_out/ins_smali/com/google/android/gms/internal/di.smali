.class public final Lcom/google/android/gms/internal/di;
.super Lcom/google/android/gms/internal/dg;
.implements Lcom/google/android/gms/common/c;
.implements Lcom/google/android/gms/common/d;
.field private final a:Lcom/google/android/gms/internal/df;
.field private final b:Lcom/google/android/gms/internal/dj;
.field private final c:Ljava/lang/Object;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/df;)V
.registers 6
invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dg;-><init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/df;)V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/di;->c:Ljava/lang/Object;
iput-object p3, p0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/df;
new-instance v0, Lcom/google/android/gms/internal/dj;
iget-object v1, p2, Lcom/google/android/gms/internal/cx;->k:Lcom/google/android/gms/internal/dx;
iget v1, v1, Lcom/google/android/gms/internal/dx;->d:I
invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/dj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;I)V
iput-object v0, p0, Lcom/google/android/gms/internal/di;->b:Lcom/google/android/gms/internal/dj;
iget-object v0, p0, Lcom/google/android/gms/internal/di;->b:Lcom/google/android/gms/internal/dj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->a()V
return-void
.end method
.method public final a(Lcom/google/android/gms/common/a;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/df;
new-instance v1, Lcom/google/android/gms/internal/cz;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cz;-><init>(I)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/cz;)V
return-void
.end method
.method public final b()V
.registers 2
const-string v0, "Disconnected from remote ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
return-void
.end method
.method public final b_()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/di;->e()V
return-void
.end method
.method public final c()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/di;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/di;->b:Lcom/google/android/gms/internal/dj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->c()Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/di;->b:Lcom/google/android/gms/internal/dj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->h()Z
move-result v0
if-eqz v0, :cond_18
:cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/di;->b:Lcom/google/android/gms/internal/dj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->b()V
:cond_18
monitor-exit v1
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_1a
return-void
:catchall_1a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final d()Lcom/google/android/gms/internal/dp;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/di;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/di;->b:Lcom/google/android/gms/internal/dj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->g()Lcom/google/android/gms/internal/dp;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_f
.catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_8} :catch_b
move-result-object v0
:try_start_9
monitor-exit v1
:goto_a
:try_end_a
.catchall {:try_start_9 .. :try_end_a} :catchall_f
return-object v0
:catch_b
move-exception v0
const/4 v0, 0x0
monitor-exit v1
goto :goto_a
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method