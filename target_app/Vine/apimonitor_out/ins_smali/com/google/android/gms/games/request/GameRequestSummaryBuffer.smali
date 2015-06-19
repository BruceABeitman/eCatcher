.class public final Lcom/google/android/gms/games/request/GameRequestSummaryBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;
.method public cB(I)Lcom/google/android/gms/games/request/GameRequestSummary;
.registers 4
new-instance v0, Lcom/google/android/gms/games/request/GameRequestSummaryRef;
iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestSummaryBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/request/GameRequestSummaryRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public synthetic get(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestSummaryBuffer;->cB(I)Lcom/google/android/gms/games/request/GameRequestSummary;
move-result-object v0
return-object v0
.end method