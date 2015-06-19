.class public final Lcom/google/android/gms/games/quest/MilestoneBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;
.method public get(I)Lcom/google/android/gms/games/quest/Milestone;
.registers 4
new-instance v0, Lcom/google/android/gms/games/quest/MilestoneRef;
iget-object v1, p0, Lcom/google/android/gms/games/quest/MilestoneBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/quest/MilestoneRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public bridge synthetic get(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneBuffer;->get(I)Lcom/google/android/gms/games/quest/Milestone;
move-result-object v0
return-object v0
.end method