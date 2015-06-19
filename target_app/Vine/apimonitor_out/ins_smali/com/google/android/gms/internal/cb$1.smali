.class  Lcom/google/android/gms/internal/cb$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic nU:Lcom/google/android/gms/internal/cb;
.method constructor <init>(Lcom/google/android/gms/internal/cb;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/cb$1;->nU:Lcom/google/android/gms/internal/cb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/cb$1;->nU:Lcom/google/android/gms/internal/cb;
invoke-static {v0}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/bw;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClicked()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Could not call onAdClicked."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method