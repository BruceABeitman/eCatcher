.class final Lcom/google/android/gms/wallet/j$6;
.super Lcom/google/android/gms/wallet/m;
.field final synthetic a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.method constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wallet/j$6;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
invoke-direct {p0}, Lcom/google/android/gms/wallet/m;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/ry;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j$6;->a(Lcom/google/android/gms/internal/ry;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/ry;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/j$6;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ry;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/j$6;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method