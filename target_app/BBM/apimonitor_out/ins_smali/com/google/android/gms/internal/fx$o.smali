.class final Lcom/google/android/gms/internal/fx$o;
.super Lcom/google/android/gms/internal/fw;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final vj:Lcom/google/android/gms/common/api/a$c;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fx$o;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$c;
iput-object v0, p0, Lcom/google/android/gms/internal/fx$o;->vj:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public final k(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$o;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$p;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$o;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$o;->vj:Lcom/google/android/gms/common/api/a$c;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$p;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method