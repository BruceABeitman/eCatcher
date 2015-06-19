.class  Lcom/google/android/gms/internal/ct$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic pJ:Lcom/google/android/gms/internal/ct;
.method constructor <init>(Lcom/google/android/gms/internal/ct;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ct$1;->pJ:Lcom/google/android/gms/internal/ct;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ct$1;->pJ:Lcom/google/android/gms/internal/ct;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/internal/ct;->a(Lcom/google/android/gms/internal/ct;Ljava/lang/Thread;)Ljava/lang/Thread;
iget-object v0, p0, Lcom/google/android/gms/internal/ct$1;->pJ:Lcom/google/android/gms/internal/ct;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->aB()V
return-void
.end method