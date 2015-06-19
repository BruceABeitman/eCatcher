.class public final Lcom/google/android/gms/internal/cb$b;
.super Lcom/google/android/gms/internal/cb;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.field private final mg:Ljava/lang/Object;
.field private final nY:Lcom/google/android/gms/internal/ca$a;
.field private final nZ:Lcom/google/android/gms/internal/cc;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V
.registers 6
invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cb;-><init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/cb$b;->mg:Ljava/lang/Object;
iput-object p3, p0, Lcom/google/android/gms/internal/cb$b;->nY:Lcom/google/android/gms/internal/ca$a;
new-instance v0, Lcom/google/android/gms/internal/cc;
iget-object v1, p2, Lcom/google/android/gms/internal/cd;->kN:Lcom/google/android/gms/internal/db;
iget v1, v1, Lcom/google/android/gms/internal/db;->pW:I
invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/cc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
iput-object v0, p0, Lcom/google/android/gms/internal/cb$b;->nZ:Lcom/google/android/gms/internal/cc;
iget-object v0, p0, Lcom/google/android/gms/internal/cb$b;->nZ:Lcom/google/android/gms/internal/cc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cc;->connect()V
return-void
.end method
.method public final aD()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/cb$b;->mg:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/cb$b;->nZ:Lcom/google/android/gms/internal/cc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cc;->isConnected()Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/cb$b;->nZ:Lcom/google/android/gms/internal/cc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cc;->isConnecting()Z
move-result v0
if-eqz v0, :cond_18
:cond_13
iget-object v0, p0, Lcom/google/android/gms/internal/cb$b;->nZ:Lcom/google/android/gms/internal/cc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cc;->disconnect()V
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
.method public final aE()Lcom/google/android/gms/internal/ch;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/cb$b;->mg:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/cb$b;->nZ:Lcom/google/android/gms/internal/cc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cc;->aH()Lcom/google/android/gms/internal/ch;
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
.method public final onConnected(Landroid/os/Bundle;)V
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/cb$b;->start()V
return-void
.end method
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/cb$b;->nY:Lcom/google/android/gms/internal/ca$a;
new-instance v1, Lcom/google/android/gms/internal/cf;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cf;-><init>(I)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ca$a;->a(Lcom/google/android/gms/internal/cf;)V
return-void
.end method
.method public final onDisconnected()V
.registers 2
const-string v0, "Disconnected from remote ad request service."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V
return-void
.end method