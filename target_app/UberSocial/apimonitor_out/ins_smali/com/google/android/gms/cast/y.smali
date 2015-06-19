.class abstract Lcom/google/android/gms/cast/y;
.super Lcom/google/android/gms/cast/i;
.field  g:Lcom/google/android/gms/internal/fz;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/cast/i;-><init>()V
new-instance v0, Lcom/google/android/gms/cast/y$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/cast/y$1;-><init>(Lcom/google/android/gms/cast/y;)V
iput-object v0, p0, Lcom/google/android/gms/cast/y;->g:Lcom/google/android/gms/internal/fz;
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/y$2;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/y$2;-><init>(Lcom/google/android/gms/cast/y;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/y;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;
move-result-object v0
return-object v0
.end method