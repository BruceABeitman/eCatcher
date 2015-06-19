.class abstract Lcom/google/android/gms/identity/intents/Address$a;
.super Lcom/google/android/gms/common/api/a$b;
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/google/android/gms/identity/intents/Address;->yE:Lcom/google/android/gms/common/api/Api$c;
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/Api$c;)V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/Address$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
.registers 2
return-object p1
.end method