.class public final Lcom/google/android/gms/games/multiplayer/i;
.super Lcom/google/android/gms/common/data/a;
.method public a(I)Lcom/google/android/gms/games/multiplayer/Participant;
.registers 4
new-instance v0, Lcom/google/android/gms/games/multiplayer/d;
iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/i;->a:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/multiplayer/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public synthetic b(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/i;->a(I)Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v0
return-object v0
.end method