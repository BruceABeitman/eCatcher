.class  Lcom/google/android/gms/internal/bj$10;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic mU:Lcom/google/android/gms/internal/bj;
.field final synthetic mV:Lcom/google/a/b;
.method constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/a/b;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/bj$10;->mU:Lcom/google/android/gms/internal/bj;
iput-object p2, p0, Lcom/google/android/gms/internal/bj$10;->mV:Lcom/google/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/bj$10;->mU:Lcom/google/android/gms/internal/bj;
invoke-static {v0}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/bj;)Lcom/google/android/gms/internal/bh;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/bj$10;->mV:Lcom/google/a/b;
invoke-static {v1}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/a/b;)I
move-result v1
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->onAdFailedToLoad(I)V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdFailedToLoad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method