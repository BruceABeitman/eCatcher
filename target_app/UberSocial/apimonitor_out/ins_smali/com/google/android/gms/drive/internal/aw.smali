.class abstract Lcom/google/android/gms/drive/internal/aw;
.super Lcom/google/android/gms/drive/internal/al;
.field final synthetic c:Lcom/google/android/gms/drive/internal/at;
.method private constructor <init>(Lcom/google/android/gms/drive/internal/at;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/aw;->c:Lcom/google/android/gms/drive/internal/at;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/al;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/at;Lcom/google/android/gms/drive/internal/at$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/drive/internal/at;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/m;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/ay;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/ay;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/k;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/aw;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/m;
move-result-object v0
return-object v0
.end method