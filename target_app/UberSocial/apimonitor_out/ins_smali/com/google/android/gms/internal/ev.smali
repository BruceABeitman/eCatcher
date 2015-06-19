.class final Lcom/google/android/gms/internal/ev;
.super Lcom/google/android/gms/internal/eo;
.field final synthetic a:Lcom/google/android/gms/internal/ep;
.field private final b:Lcom/google/android/gms/common/api/t;
.method public constructor <init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/ev;->a:Lcom/google/android/gms/internal/ep;
invoke-direct {p0}, Lcom/google/android/gms/internal/eo;-><init>()V
const-string v0, "Result holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/t;
iput-object v0, p0, Lcom/google/android/gms/internal/ev;->b:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public a(ILcom/google/android/gms/common/data/DataHolder;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/ev;->a:Lcom/google/android/gms/internal/ep;
new-instance v1, Lcom/google/android/gms/internal/ex;
iget-object v2, p0, Lcom/google/android/gms/internal/ev;->a:Lcom/google/android/gms/internal/ep;
iget-object v3, p0, Lcom/google/android/gms/internal/ev;->b:Lcom/google/android/gms/common/api/t;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/ex;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;ILcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/internal/gn;)V
return-void
.end method