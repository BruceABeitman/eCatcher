.class final Lcom/google/android/gms/wallet/j$4;
.super Lcom/google/android/gms/wallet/m;
.field final synthetic a:Lcom/google/android/gms/wallet/FullWalletRequest;
.field final synthetic b:I
.method constructor <init>(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/wallet/j$4;->a:Lcom/google/android/gms/wallet/FullWalletRequest;
iput p2, p0, Lcom/google/android/gms/wallet/j$4;->b:I
invoke-direct {p0}, Lcom/google/android/gms/wallet/m;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/ry;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j$4;->a(Lcom/google/android/gms/internal/ry;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/ry;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/j$4;->a:Lcom/google/android/gms/wallet/FullWalletRequest;
iget v1, p0, Lcom/google/android/gms/wallet/j$4;->b:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ry;->a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/j$4;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method