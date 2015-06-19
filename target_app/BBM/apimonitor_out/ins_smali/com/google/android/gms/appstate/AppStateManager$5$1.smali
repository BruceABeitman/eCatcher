.class  Lcom/google/android/gms/appstate/AppStateManager$5$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.field final synthetic ve:Lcom/google/android/gms/appstate/AppStateManager$5;
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$5;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->ve:Lcom/google/android/gms/appstate/AppStateManager$5;
iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getStateKey()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->ve:Lcom/google/android/gms/appstate/AppStateManager$5;
iget v0, v0, Lcom/google/android/gms/appstate/AppStateManager$5;->vc:I
return v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method