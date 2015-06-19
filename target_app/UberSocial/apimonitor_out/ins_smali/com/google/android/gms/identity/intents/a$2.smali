.class final Lcom/google/android/gms/identity/intents/a$2;
.super Lcom/google/android/gms/identity/intents/c;
.field final synthetic a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
.field final synthetic b:I
.method constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/identity/intents/a$2;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iput p2, p0, Lcom/google/android/gms/identity/intents/a$2;->b:I
invoke-direct {p0}, Lcom/google/android/gms/identity/intents/c;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/os;
invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/a$2;->a(Lcom/google/android/gms/internal/os;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/os;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/identity/intents/a$2;->a:Lcom/google/android/gms/identity/intents/UserAddressRequest;
iget v1, p0, Lcom/google/android/gms/identity/intents/a$2;->b:I
invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/identity/intents/a$2;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method