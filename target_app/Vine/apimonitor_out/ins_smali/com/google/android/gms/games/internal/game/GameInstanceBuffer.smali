.class public final Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public cr(I)Lcom/google/android/gms/games/internal/game/GameInstance;
.registers 4
new-instance v0, Lcom/google/android/gms/games/internal/game/GameInstanceRef;
iget-object v1, p0, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public synthetic get(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;->cr(I)Lcom/google/android/gms/games/internal/game/GameInstance;
move-result-object v0
return-object v0
.end method