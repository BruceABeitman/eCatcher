.class final Lcom/google/android/gms/internal/gb$c;
.super Lcom/google/android/gms/internal/ga;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
const-string v0, "Result holder must not be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/internal/gb$c;->yO:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public a(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/gb$c;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/internal/gb$d;
invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gb$d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method