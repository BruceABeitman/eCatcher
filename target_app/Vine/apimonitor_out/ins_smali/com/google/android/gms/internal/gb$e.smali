.class final Lcom/google/android/gms/internal/gb$e;
.super Lcom/google/android/gms/internal/ga;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
const-string v0, "Result holder must not be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/internal/gb$e;->yO:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public a(ILcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/gb$e;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/internal/gb$f;
invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/gb$f;-><init>(ILcom/google/android/gms/common/data/DataHolder;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method