.class  Lcom/google/android/gms/internal/cb$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/cb;
.method constructor <init>(Lcom/google/android/gms/internal/cb;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/cb$1;->a:Lcom/google/android/gms/internal/cb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cb$1;->a:Lcom/google/android/gms/internal/cb;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cb;->b()V
return-void
.end method