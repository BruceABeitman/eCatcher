.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.super Lcom/google/android/gms/common/data/d;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method protected final synthetic c(II)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getEntry(II)Lcom/google/android/gms/games/leaderboard/Leaderboard;
move-result-object v0
return-object v0
.end method
.method protected final getEntry(II)Lcom/google/android/gms/games/leaderboard/Leaderboard;
.registers 5
new-instance v0, Lcom/google/android/gms/games/leaderboard/b;
iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/leaderboard/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V
return-object v0
.end method
.method protected final getPrimaryDataMarkerColumn()Ljava/lang/String;
.registers 2
const-string v0, "external_leaderboard_id"
return-object v0
.end method