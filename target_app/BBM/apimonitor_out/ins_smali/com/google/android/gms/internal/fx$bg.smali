.class final Lcom/google/android/gms/internal/fx$bg;
.super Lcom/google/android/gms/internal/fw;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final Hq:Lcom/google/android/gms/common/api/a$c;
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fx$bg;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$c;
iput-object v0, p0, Lcom/google/android/gms/internal/fx$bg;->Hq:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public final f(ILjava/lang/String;)V
.registers 8
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/fx$bg;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v2, Lcom/google/android/gms/internal/fx$bh;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$bg;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v4, p0, Lcom/google/android/gms/internal/fx$bg;->Hq:Lcom/google/android/gms/common/api/a$c;
invoke-direct {v2, v3, v4, v0, p2}, Lcom/google/android/gms/internal/fx$bh;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method