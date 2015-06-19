.class abstract Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;-><init>()V
return-void
.end method
.method public c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method