.class  Lcom/google/android/gms/internal/de$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic qm:Lcom/google/android/gms/internal/bo;
.field final synthetic qn:Lcom/google/android/gms/internal/de;
.method constructor <init>(Lcom/google/android/gms/internal/de;Lcom/google/android/gms/internal/bo;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/de$1;->qn:Lcom/google/android/gms/internal/de;
iput-object p2, p0, Lcom/google/android/gms/internal/de$1;->qm:Lcom/google/android/gms/internal/bo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/de$1;->qm:Lcom/google/android/gms/internal/bo;
invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->ar()V
return-void
.end method