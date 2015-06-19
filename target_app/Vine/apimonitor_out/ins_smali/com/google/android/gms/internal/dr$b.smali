.class public final Lcom/google/android/gms/internal/dr$b;
.super Lcom/google/android/gms/internal/dr;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.field private final lq:Ljava/lang/Object;
.field private final pR:Lcom/google/android/gms/internal/dq$a;
.field private final pS:Lcom/google/android/gms/internal/ds;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V
.registers 6
invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dr;-><init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/dr$b;->lq:Ljava/lang/Object;
iput-object p3, p0, Lcom/google/android/gms/internal/dr$b;->pR:Lcom/google/android/gms/internal/dq$a;
new-instance v0, Lcom/google/android/gms/internal/ds;
iget-object v1, p2, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;
iget v1, v1, Lcom/google/android/gms/internal/ew;->sv:I
invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
iput-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;
iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->connect()V
return-void
.end method
.method public bn()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/dr$b;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->isConnected()Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->isConnecting()Z
move-result v0
if-eqz v0, :cond_18
:cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->disconnect()V
:cond_18
monitor-exit v1
return-void
:catchall_1a
move-exception v0
monitor-exit v1
:try_end_1c
.catchall {:try_start_3 .. :try_end_1c} :catchall_1a
throw v0
.end method
.method public bo()Lcom/google/android/gms/internal/dx;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/dr$b;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->br()Lcom/google/android/gms/internal/dx;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_f
.catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_8} :catch_b
move-result-object v0
:try_start_9
monitor-exit v1
:goto_a
return-object v0
:catch_b
move-exception v0
const/4 v0, 0x0
monitor-exit v1
goto :goto_a
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_9 .. :try_end_11} :catchall_f
throw v0
.end method
.method public onConnected(Landroid/os/Bundle;)V
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/dr$b;->start()V
return-void
.end method
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pR:Lcom/google/android/gms/internal/dq$a;
new-instance v1, Lcom/google/android/gms/internal/dv;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dv;-><init>(I)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/dq$a;->a(Lcom/google/android/gms/internal/dv;)V
return-void
.end method
.method public onDisconnected()V
.registers 2
const-string v0, "Disconnected from remote ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
return-void
.end method