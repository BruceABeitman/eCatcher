.class  Lcom/google/android/gms/internal/ez$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic sK:Lcom/google/android/gms/internal/cg;
.field final synthetic sL:Lcom/google/android/gms/internal/ez;
.method constructor <init>(Lcom/google/android/gms/internal/ez;Lcom/google/android/gms/internal/cg;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/ez$1;->sL:Lcom/google/android/gms/internal/ez;
iput-object p2, p0, Lcom/google/android/gms/internal/ez$1;->sK:Lcom/google/android/gms/internal/cg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ez$1;->sK:Lcom/google/android/gms/internal/cg;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->aN()V
return-void
.end method