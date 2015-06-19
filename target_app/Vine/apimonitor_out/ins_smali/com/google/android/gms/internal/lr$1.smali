.class  Lcom/google/android/gms/internal/lr$1;
.super Lcom/google/android/gms/wallet/Wallet$b;
.field final synthetic UA:I
.field final synthetic akD:Lcom/google/android/gms/internal/lr;
.method constructor <init>(Lcom/google/android/gms/internal/lr;I)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/lr$1;->akD:Lcom/google/android/gms/internal/lr;
iput p2, p0, Lcom/google/android/gms/internal/lr$1;->UA:I
invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/ls;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lr$1;->a(Lcom/google/android/gms/internal/ls;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/ls;)V
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/lr$1;->UA:I
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ls;->dQ(I)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lr$1;->b(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method