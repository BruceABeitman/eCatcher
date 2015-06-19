.class final Lcom/google/android/gms/identity/intents/Address$2;
.super Lcom/google/android/gms/identity/intents/Address$a;
.field final synthetic Kw:Lcom/google/android/gms/identity/intents/UserAddressRequest;
.field final synthetic Kx:I
.method constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kw:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iput p2, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kx:I
invoke-direct {p0}, Lcom/google/android/gms/identity/intents/Address$a;-><init>()V
return-void
.end method
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/hc;
invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/Address$2;->a(Lcom/google/android/gms/internal/hc;)V
return-void
.end method
.method protected final a(Lcom/google/android/gms/internal/hc;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kw:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget v1, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kx:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/identity/intents/Address$2;->a(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method