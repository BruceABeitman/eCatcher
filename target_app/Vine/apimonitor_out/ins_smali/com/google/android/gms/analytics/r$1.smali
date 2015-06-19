.class  Lcom/google/android/gms/analytics/r$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/e;
.field final synthetic ud:Lcom/google/android/gms/analytics/r;
.method constructor <init>(Lcom/google/android/gms/analytics/r;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/r$1;->ud:Lcom/google/android/gms/analytics/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public s(Z)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/analytics/r$1;->ud:Lcom/google/android/gms/analytics/r;
iget-object v1, p0, Lcom/google/android/gms/analytics/r$1;->ud:Lcom/google/android/gms/analytics/r;
invoke-static {v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r;)Z
move-result v1
invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/r;->a(ZZ)V
return-void
.end method