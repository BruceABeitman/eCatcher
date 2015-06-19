.class public abstract Lcom/google/android/gms/internal/dr;
.super Lcom/google/android/gms/internal/en;
.field private final nc:Lcom/google/android/gms/internal/dt;
.field private final pR:Lcom/google/android/gms/internal/dq$a;
.method public constructor <init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/en;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/dr;->nc:Lcom/google/android/gms/internal/dt;
iput-object p2, p0, Lcom/google/android/gms/internal/dr;->pR:Lcom/google/android/gms/internal/dq$a;
return-void
.end method
.method private static a(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-interface {p0, p1}, Lcom/google/android/gms/internal/dx;->b(Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
:try_end_4
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6
.catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_d
.catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_14
move-result-object v0
:goto_5
return-object v0
:catch_6
move-exception v1
const-string v2, "Could not fetch ad response from ad request service."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
:catch_d
move-exception v1
const-string v2, "Could not fetch ad response from ad request service due to an Exception."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
:catch_14
move-exception v1
const-string v2, "Could not fetch ad response from ad request service due to an Exception."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method public final bc()V
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->bo()Lcom/google/android/gms/internal/dx;
move-result-object v0
if-nez v0, :cond_15
new-instance v0, Lcom/google/android/gms/internal/dv;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V
:cond_c
:goto_c
:try_end_c
.catchall {:try_start_0 .. :try_end_c} :catchall_24
invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->bn()V
iget-object v1, p0, Lcom/google/android/gms/internal/dr;->pR:Lcom/google/android/gms/internal/dq$a;
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/dq$a;->a(Lcom/google/android/gms/internal/dv;)V
return-void
:cond_15
:try_start_15
iget-object v1, p0, Lcom/google/android/gms/internal/dr;->nc:Lcom/google/android/gms/internal/dt;
invoke-static {v0, v1}, Lcom/google/android/gms/internal/dr;->a(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
move-result-object v0
if-nez v0, :cond_c
new-instance v0, Lcom/google/android/gms/internal/dv;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V
:try_end_23
.catchall {:try_start_15 .. :try_end_23} :catchall_24
goto :goto_c
:catchall_24
move-exception v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->bn()V
throw v0
.end method
.method public abstract bn()V
.end method
.method public abstract bo()Lcom/google/android/gms/internal/dx;
.end method
.method public final onStop()V
.registers 1
invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->bn()V
return-void
.end method