.class final Lcom/google/android/gms/internal/ez;
.super Lcom/google/android/gms/internal/eo;
.field  a:Lcom/google/android/gms/common/api/t;
.field final synthetic b:Lcom/google/android/gms/internal/ep;
.method public constructor <init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/ez;->b:Lcom/google/android/gms/internal/ep;
invoke-direct {p0}, Lcom/google/android/gms/internal/eo;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/t;
iput-object v0, p0, Lcom/google/android/gms/internal/ez;->a:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public a()V
.registers 6
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/ez;->b:Lcom/google/android/gms/internal/ep;
new-instance v2, Lcom/google/android/gms/internal/fa;
iget-object v3, p0, Lcom/google/android/gms/internal/ez;->b:Lcom/google/android/gms/internal/ep;
iget-object v4, p0, Lcom/google/android/gms/internal/ez;->a:Lcom/google/android/gms/common/api/t;
invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/fa;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/internal/gn;)V
return-void
.end method