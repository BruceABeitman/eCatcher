.class  Lcom/google/android/gms/internal/en$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic sd:Lcom/google/android/gms/internal/en;
.method constructor <init>(Lcom/google/android/gms/internal/en;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/en$1;->sd:Lcom/google/android/gms/internal/en;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/en$1;->sd:Lcom/google/android/gms/internal/en;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/en;Ljava/lang/Thread;)Ljava/lang/Thread;
iget-object v0, p0, Lcom/google/android/gms/internal/en$1;->sd:Lcom/google/android/gms/internal/en;
invoke-virtual {v0}, Lcom/google/android/gms/internal/en;->bc()V
return-void
.end method