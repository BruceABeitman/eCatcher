.class abstract Lcom/google/android/gms/drive/internal/s$a;
.super Lcom/google/android/gms/drive/internal/q;
.field final synthetic IZ:Lcom/google/android/gms/drive/internal/s;
.method private constructor <init>(Lcom/google/android/gms/drive/internal/s;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$a;->IZ:Lcom/google/android/gms/drive/internal/s;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/q;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/internal/s$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/s$a;-><init>(Lcom/google/android/gms/drive/internal/s;)V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
.registers 2
return-object p1
.end method