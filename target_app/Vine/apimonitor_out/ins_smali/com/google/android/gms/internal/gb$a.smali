.class final Lcom/google/android/gms/internal/gb$a;
.super Lcom/google/android/gms/internal/ga;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
const-string v0, "Result holder must not be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/internal/gb$a;->yO:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public b(II)V
.registers 6
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/gb$a;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v2, Lcom/google/android/gms/internal/gb$b;
invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/gb$b;-><init>(Lcom/google/android/gms/common/api/Status;I)V
invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method