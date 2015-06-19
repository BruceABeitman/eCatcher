.class final Lcom/google/android/gms/internal/fx$au;
.super Lcom/google/android/gms/internal/fx$av;
.implements Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final Hl:Lcom/google/android/gms/internal/hb;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/fx$au;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$av;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-static {p3}, Lcom/google/android/gms/internal/hb;->H(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/hb;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fx$au;->Hl:Lcom/google/android/gms/internal/hb;
return-void
.end method
.method protected final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$au;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public final getRequestIds()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$au;->Hl:Lcom/google/android/gms/internal/hb;
invoke-virtual {v0}, Lcom/google/android/gms/internal/hb;->getRequestIds()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public final getRequestOutcome(Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fx$au;->Hl:Lcom/google/android/gms/internal/hb;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hb;->getRequestOutcome(Ljava/lang/String;)I
move-result v0
return v0
.end method