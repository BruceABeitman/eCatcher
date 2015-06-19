.class abstract Lcom/google/android/gms/drive/internal/p$i;
.super Lcom/google/android/gms/drive/internal/q;
.field final synthetic II:Lcom/google/android/gms/drive/internal/p;
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$i;->II:Lcom/google/android/gms/drive/internal/p;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/q;-><init>()V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$i;->r(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
move-result-object v0
return-object v0
.end method
.method public r(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
.registers 5
new-instance v0, Lcom/google/android/gms/drive/internal/p$e;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/drive/internal/p$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V
return-object v0
.end method