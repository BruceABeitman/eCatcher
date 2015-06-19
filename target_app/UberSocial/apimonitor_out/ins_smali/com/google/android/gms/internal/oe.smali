.class abstract Lcom/google/android/gms/internal/oe;
.super Lcom/google/android/gms/games/h;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/h;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/nz$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/oe;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/m;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/oe$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/oe$1;-><init>(Lcom/google/android/gms/internal/oe;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/oe;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/m;
move-result-object v0
return-object v0
.end method