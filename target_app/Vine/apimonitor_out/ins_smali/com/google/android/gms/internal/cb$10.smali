.class  Lcom/google/android/gms/internal/cb$10;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic nU:Lcom/google/android/gms/internal/cb;
.field final synthetic nV:Lcom/google/ads/AdRequest$ErrorCode;
.method constructor <init>(Lcom/google/android/gms/internal/cb;Lcom/google/ads/AdRequest$ErrorCode;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/cb$10;->nU:Lcom/google/android/gms/internal/cb;
iput-object p2, p0, Lcom/google/android/gms/internal/cb$10;->nV:Lcom/google/ads/AdRequest$ErrorCode;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/cb$10;->nU:Lcom/google/android/gms/internal/cb;
invoke-static {v0}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/bw;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/cb$10;->nV:Lcom/google/ads/AdRequest$ErrorCode;
invoke-static {v1}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/ads/AdRequest$ErrorCode;)I
move-result v1
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bw;->onAdFailedToLoad(I)V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdFailedToLoad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method