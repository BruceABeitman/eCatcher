.class  Lcom/google/android/gms/internal/il$a$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;
.field final synthetic RK:Lcom/google/android/gms/internal/il$a;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/internal/il$a;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/il$a$1;->RK:Lcom/google/android/gms/internal/il$a;
iput-object p2, p0, Lcom/google/android/gms/internal/il$a$1;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getNextPageToken()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/il$a$1;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 1
return-void
.end method