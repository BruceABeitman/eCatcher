.class abstract Lcom/google/android/gms/drive/internal/r$c;
.super Lcom/google/android/gms/drive/internal/m;
.field final synthetic DP:Lcom/google/android/gms/drive/internal/r;
.method private constructor <init>(Lcom/google/android/gms/drive/internal/r;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/r$c;->DP:Lcom/google/android/gms/drive/internal/r;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/m;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/internal/r$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/r$c;-><init>(Lcom/google/android/gms/drive/internal/r;)V
return-void
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/r$c;->o(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
move-result-object v0
return-object v0
.end method
.method public o(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/l$e;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/l$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;)V
return-object v0
.end method