.class final Lcom/google/android/gms/internal/gb$g;
.super Lcom/google/android/gms/internal/ga;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/internal/gb$g;->yO:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public dO()V
.registers 3
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/gb$g;->yO:Lcom/google/android/gms/common/api/a$d;
invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method