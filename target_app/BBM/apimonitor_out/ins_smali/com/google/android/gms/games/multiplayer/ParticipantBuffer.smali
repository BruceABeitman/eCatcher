.class public final Lcom/google/android/gms/games/multiplayer/ParticipantBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;
.method public final get(I)Lcom/google/android/gms/games/multiplayer/Participant;
.registers 4
new-instance v0, Lcom/google/android/gms/games/multiplayer/d;
iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/multiplayer/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public final bridge synthetic get(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantBuffer;->get(I)Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v0
return-object v0
.end method