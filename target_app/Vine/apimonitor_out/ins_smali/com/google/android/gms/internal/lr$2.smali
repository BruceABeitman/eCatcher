.class  Lcom/google/android/gms/internal/lr$2;
.super Lcom/google/android/gms/wallet/Wallet$b;
.field final synthetic UA:I
.field final synthetic akD:Lcom/google/android/gms/internal/lr;
.field final synthetic akE:Lcom/google/android/gms/wallet/MaskedWalletRequest;
.method constructor <init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/lr$2;->akD:Lcom/google/android/gms/internal/lr;
iput-object p2, p0, Lcom/google/android/gms/internal/lr$2;->akE:Lcom/google/android/gms/wallet/MaskedWalletRequest;
iput p3, p0, Lcom/google/android/gms/internal/lr$2;->UA:I
invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/ls;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lr$2;->a(Lcom/google/android/gms/internal/ls;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/ls;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/lr$2;->akE:Lcom/google/android/gms/wallet/MaskedWalletRequest;
iget v1, p0, Lcom/google/android/gms/internal/lr$2;->UA:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lr$2;->b(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method