.class  Lcom/google/android/gms/plus/PlusClient$7;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/a$c;
.field final synthetic QP:Lcom/google/android/gms/plus/PlusClient;
.field final synthetic QR:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$7;->QP:Lcom/google/android/gms/plus/PlusClient;
iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$7;->QR:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public K(Lcom/google/android/gms/common/api/Status;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$7;->QR:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->dG()Lcom/google/android/gms/common/ConnectionResult;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;->onAccessRevoked(Lcom/google/android/gms/common/ConnectionResult;)V
return-void
.end method
.method public synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;->K(Lcom/google/android/gms/common/api/Status;)V
return-void
.end method