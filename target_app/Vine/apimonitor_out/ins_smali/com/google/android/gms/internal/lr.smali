.class public Lcom/google/android/gms/internal/lr;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/wallet/Payments;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
.registers 6
new-instance v0, Lcom/google/android/gms/internal/lr$4;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/lr$4;-><init>(Lcom/google/android/gms/internal/lr;Ljava/lang/String;Ljava/lang/String;I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
return-void
.end method
.method public checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
.registers 4
new-instance v0, Lcom/google/android/gms/internal/lr$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/lr$1;-><init>(Lcom/google/android/gms/internal/lr;I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
return-void
.end method
.method public loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
.registers 5
new-instance v0, Lcom/google/android/gms/internal/lr$3;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/lr$3;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
return-void
.end method
.method public loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
.registers 5
new-instance v0, Lcom/google/android/gms/internal/lr$2;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/lr$2;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
return-void
.end method
.method public notifyTransactionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.registers 4
new-instance v0, Lcom/google/android/gms/internal/lr$5;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/lr$5;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
return-void
.end method