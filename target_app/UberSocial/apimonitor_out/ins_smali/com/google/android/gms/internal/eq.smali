.class final Lcom/google/android/gms/internal/eq;
.super Lcom/google/android/gms/internal/eo;
.field final synthetic a:Lcom/google/android/gms/internal/ep;
.field private final b:Lcom/google/android/gms/common/api/t;
.method public constructor <init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/internal/ep;
invoke-direct {p0}, Lcom/google/android/gms/internal/eo;-><init>()V
const-string v0, "Result holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/t;
iput-object v0, p0, Lcom/google/android/gms/internal/eq;->b:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public a(II)V
.registers 8
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/internal/ep;
new-instance v2, Lcom/google/android/gms/internal/er;
iget-object v3, p0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/internal/ep;
iget-object v4, p0, Lcom/google/android/gms/internal/eq;->b:Lcom/google/android/gms/common/api/t;
invoke-direct {v2, v3, v4, v0, p2}, Lcom/google/android/gms/internal/er;-><init>(Lcom/google/android/gms/internal/ep;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;I)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/internal/gn;)V
return-void
.end method