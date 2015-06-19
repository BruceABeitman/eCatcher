.class abstract Lcom/google/android/gms/games/Games$SignOutImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/Games$SignOutImpl;-><init>()V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$SignOutImpl;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
.registers 2
return-object p1
.end method