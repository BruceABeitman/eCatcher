.class  Lcom/google/android/gms/appstate/AppStateManager$c$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.field final synthetic vh:Lcom/google/android/gms/appstate/AppStateManager$c;
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$c;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->vh:Lcom/google/android/gms/appstate/AppStateManager$c;
iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getStateBuffer()Lcom/google/android/gms/appstate/AppStateBuffer;
.registers 3
new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method