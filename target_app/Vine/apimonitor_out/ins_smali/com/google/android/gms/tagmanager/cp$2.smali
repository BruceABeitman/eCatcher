.class  Lcom/google/android/gms/tagmanager/cp$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic agS:Lcom/google/android/gms/tagmanager/cp;
.field final synthetic agT:Lcom/google/android/gms/internal/lf$a;
.method constructor <init>(Lcom/google/android/gms/tagmanager/cp;Lcom/google/android/gms/internal/lf$a;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp$2;->agS:Lcom/google/android/gms/tagmanager/cp;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cp$2;->agT:Lcom/google/android/gms/internal/lf$a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp$2;->agS:Lcom/google/android/gms/tagmanager/cp;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp$2;->agT:Lcom/google/android/gms/internal/lf$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/internal/lf$a;)Z
return-void
.end method