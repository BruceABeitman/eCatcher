.class final Lcom/google/android/gms/internal/mf;
.super Lcom/google/android/gms/internal/jx;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final b:Lcom/google/android/gms/common/api/t;
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/t;
iput-object v0, p0, Lcom/google/android/gms/internal/mf;->b:Lcom/google/android/gms/common/api/t;
return-void
.end method
.method public j(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/jy;
new-instance v1, Lcom/google/android/gms/internal/mg;
iget-object v2, p0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/jy;
iget-object v3, p0, Lcom/google/android/gms/internal/mf;->b:Lcom/google/android/gms/common/api/t;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/mg;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V
return-void
.end method