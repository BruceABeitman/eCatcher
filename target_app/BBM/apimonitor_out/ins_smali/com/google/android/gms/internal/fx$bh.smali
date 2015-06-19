.class final Lcom/google/android/gms/internal/fx$bh;
.super Lcom/google/android/gms/internal/eh$b;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final Hr:Ljava/lang/String;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/fx$bh;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/fx$bh;->vl:Lcom/google/android/gms/common/api/Status;
iput-object p4, p0, Lcom/google/android/gms/internal/fx$bh;->Hr:Ljava/lang/String;
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$bh;->c(Lcom/google/android/gms/common/api/a$c;)V
return-void
.end method
.method public final c(Lcom/google/android/gms/common/api/a$c;)V
.registers 2
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method
.method public final getMatchId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$bh;->Hr:Ljava/lang/String;
return-object v0
.end method
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$bh;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method