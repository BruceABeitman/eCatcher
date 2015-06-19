.class abstract Lcom/google/android/gms/drive/internal/u$c;
.super Lcom/google/android/gms/drive/internal/q;
.field final synthetic Jf:Lcom/google/android/gms/drive/internal/u;
.method private constructor <init>(Lcom/google/android/gms/drive/internal/u;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/u$c;->Jf:Lcom/google/android/gms/drive/internal/u;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/q;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/u;Lcom/google/android/gms/drive/internal/u$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/u$c;-><init>(Lcom/google/android/gms/drive/internal/u;)V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/u$c;->t(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;
move-result-object v0
return-object v0
.end method
.method public t(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/u$e;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/u$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V
return-object v0
.end method