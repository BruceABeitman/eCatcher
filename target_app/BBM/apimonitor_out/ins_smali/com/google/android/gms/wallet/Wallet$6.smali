.class final Lcom/google/android/gms/wallet/Wallet$6;
.super Lcom/google/android/gms/wallet/Wallet$a;
.field final synthetic Zv:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.method constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wallet/Wallet$6;->Zv:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$a;-><init>()V
return-void
.end method
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/jg;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/Wallet$6;->a(Lcom/google/android/gms/internal/jg;)V
return-void
.end method
.method protected final a(Lcom/google/android/gms/internal/jg;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/Wallet$6;->Zv:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jg;->notifyTransactionStatus(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/Wallet$6;->a(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method