.class final Lcom/google/android/gms/internal/dl$a;
.super Lcom/google/android/gms/internal/dk;
.field private final vj:Lcom/google/android/gms/common/api/a$c;
.field final synthetic vk:Lcom/google/android/gms/internal/dl;
.method public constructor <init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/dl$a;->vk:Lcom/google/android/gms/internal/dl;
invoke-direct {p0}, Lcom/google/android/gms/internal/dk;-><init>()V
const-string v0, "Result holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$c;
iput-object v0, p0, Lcom/google/android/gms/internal/dl$a;->vj:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public final b(II)V
.registers 8
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/dl$a;->vk:Lcom/google/android/gms/internal/dl;
new-instance v2, Lcom/google/android/gms/internal/dl$b;
iget-object v3, p0, Lcom/google/android/gms/internal/dl$a;->vk:Lcom/google/android/gms/internal/dl;
iget-object v4, p0, Lcom/google/android/gms/internal/dl$a;->vj:Lcom/google/android/gms/common/api/a$c;
invoke-direct {v2, v3, v4, v0, p2}, Lcom/google/android/gms/internal/dl$b;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;I)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method