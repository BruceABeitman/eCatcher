.class public final Lcom/google/android/gms/games/internal/api/AclsImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/internal/game/Acls;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static x(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
.registers 2
new-instance v0, Lcom/google/android/gms/games/internal/api/AclsImpl$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/api/AclsImpl$1;-><init>(Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method static synthetic y(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/api/AclsImpl;->x(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
move-result-object v0
return-object v0
.end method