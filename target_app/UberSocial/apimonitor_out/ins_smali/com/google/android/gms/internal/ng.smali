.class abstract Lcom/google/android/gms/internal/ng;
.super Lcom/google/android/gms/games/h;
.field private final a:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/h;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ng;->a:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ng;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ng;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/a/e;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/ng$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ng$1;-><init>(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ng;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/a/e;
move-result-object v0
return-object v0
.end method