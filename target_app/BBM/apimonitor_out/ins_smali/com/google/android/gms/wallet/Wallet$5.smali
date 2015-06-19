.class final Lcom/google/android/gms/wallet/Wallet$5;
.super Lcom/google/android/gms/wallet/Wallet$a;
.field final synthetic Kx:I
.field final synthetic Zt:Ljava/lang/String;
.field final synthetic Zu:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/wallet/Wallet$5;->Zt:Ljava/lang/String;
iput-object p2, p0, Lcom/google/android/gms/wallet/Wallet$5;->Zu:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/wallet/Wallet$5;->Kx:I
invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$a;-><init>()V
return-void
.end method
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/jg;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/Wallet$5;->a(Lcom/google/android/gms/internal/jg;)V
return-void
.end method
.method protected final a(Lcom/google/android/gms/internal/jg;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/wallet/Wallet$5;->Zt:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/wallet/Wallet$5;->Zu:Ljava/lang/String;
iget v2, p0, Lcom/google/android/gms/wallet/Wallet$5;->Kx:I
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jg;->changeMaskedWallet(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/Wallet$5;->a(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method