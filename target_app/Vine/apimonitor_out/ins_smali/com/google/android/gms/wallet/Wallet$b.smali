.class public abstract Lcom/google/android/gms/wallet/Wallet$b;
.super Lcom/google/android/gms/wallet/Wallet$a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$a;-><init>()V
return-void
.end method
.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/Wallet$b;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
return-object v0
.end method
.method protected d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
.registers 2
return-object p1
.end method