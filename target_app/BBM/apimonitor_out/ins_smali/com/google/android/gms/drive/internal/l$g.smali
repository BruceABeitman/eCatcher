.class abstract Lcom/google/android/gms/drive/internal/l$g;
.super Lcom/google/android/gms/drive/internal/m;
.field final synthetic Dv:Lcom/google/android/gms/drive/internal/l;
.method constructor <init>(Lcom/google/android/gms/drive/internal/l;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$g;->Dv:Lcom/google/android/gms/drive/internal/l;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/m;-><init>()V
return-void
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/l$g;->n(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$ContentsResult;
move-result-object v0
return-object v0
.end method
.method public n(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveApi$ContentsResult;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/l$a;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/l$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
return-object v0
.end method