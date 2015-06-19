.class abstract Lcom/google/android/gms/games/internal/api/AclsImpl$LoadNotifyAclImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AclsImpl$LoadNotifyAclImpl;->z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
move-result-object v0
return-object v0
.end method
.method public z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/internal/api/AclsImpl;->y(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
move-result-object v0
return-object v0
.end method