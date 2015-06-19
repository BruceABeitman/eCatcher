.class abstract Lcom/google/android/gms/internal/nx;
.super Lcom/google/android/gms/games/h;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/h;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/nw$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/nx;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/f;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/nx$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nx$1;-><init>(Lcom/google/android/gms/internal/nx;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nx;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/f;
move-result-object v0
return-object v0
.end method