.class final Lcom/google/android/gms/games/internal/GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback;->yO:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public d(ILandroid/os/Bundle;)V
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl;
invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl;-><init>(ILandroid/os/Bundle;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method