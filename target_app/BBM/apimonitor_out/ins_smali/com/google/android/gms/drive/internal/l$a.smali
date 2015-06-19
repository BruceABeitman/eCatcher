.class  Lcom/google/android/gms/drive/internal/l$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/DriveApi$ContentsResult;
.field private final CW:Lcom/google/android/gms/drive/Contents;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$a;->vl:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/l$a;->CW:Lcom/google/android/gms/drive/Contents;
return-void
.end method
.method public getContents()Lcom/google/android/gms/drive/Contents;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$a;->CW:Lcom/google/android/gms/drive/Contents;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$a;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method