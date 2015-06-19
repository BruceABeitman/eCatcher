.class final Lcom/google/android/gms/wallet/j$2;
.super Lcom/google/android/gms/wallet/m;
.field final synthetic a:I
.method constructor <init>(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/wallet/j$2;->a:I
invoke-direct {p0}, Lcom/google/android/gms/wallet/m;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/ry;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j$2;->a(Lcom/google/android/gms/internal/ry;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/ry;)V
.registers 3
iget v0, p0, Lcom/google/android/gms/wallet/j$2;->a:I
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ry;->a(I)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/j$2;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method