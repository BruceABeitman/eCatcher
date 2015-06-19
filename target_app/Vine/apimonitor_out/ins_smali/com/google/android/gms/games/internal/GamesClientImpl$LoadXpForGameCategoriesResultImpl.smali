.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;
.field private final Oc:Ljava/util/List;
.field private final Od:Landroid/os/Bundle;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
const-string v0, "game_category_list"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->Oc:Ljava/util/List;
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->Od:Landroid/os/Bundle;
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method