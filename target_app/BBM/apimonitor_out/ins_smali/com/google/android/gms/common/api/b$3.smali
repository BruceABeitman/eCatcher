.class  Lcom/google/android/gms/common/api/b$3;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ei$b;
.field final synthetic zN:Lcom/google/android/gms/common/api/b;
.method constructor <init>(Lcom/google/android/gms/common/api/b;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/b$3;->zN:Lcom/google/android/gms/common/api/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public cY()Landroid/os/Bundle;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public dC()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/b$3;->zN:Lcom/google/android/gms/common/api/b;
invoke-static {v0}, Lcom/google/android/gms/common/api/b;->g(Lcom/google/android/gms/common/api/b;)Z
move-result v0
return v0
.end method
.method public isConnected()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/b$3;->zN:Lcom/google/android/gms/common/api/b;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->isConnected()Z
move-result v0
return v0
.end method