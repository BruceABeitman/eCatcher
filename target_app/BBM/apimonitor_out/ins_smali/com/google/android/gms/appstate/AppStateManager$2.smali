.class final Lcom/google/android/gms/appstate/AppStateManager$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateResult;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateManager$2;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$2;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public final release()V
.registers 1
return-void
.end method