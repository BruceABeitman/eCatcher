.class  Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$16;
.super Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadExtendedGamesImpl;
.field final synthetic Pr:Ljava/lang/String;
.field final synthetic Ps:I
.field final synthetic Pt:Z
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$16;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 10
const/4 v4, 0x1
iget-object v2, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$16;->Pr:Ljava/lang/String;
iget v3, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$16;->Ps:I
const/4 v6, 0x0
iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$16;->Pt:Z
move-object v0, p1
move-object v1, p0
move v5, v4
invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZZZ)V
return-void
.end method