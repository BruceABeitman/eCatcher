.class  Lcom/google/android/gms/internal/do$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic pE:Lcom/google/android/gms/internal/do;
.method constructor <init>(Lcom/google/android/gms/internal/do;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/do$1;->pE:Lcom/google/android/gms/internal/do;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/do$1;->pE:Lcom/google/android/gms/internal/do;
invoke-virtual {v0}, Lcom/google/android/gms/internal/do;->onStop()V
return-void
.end method