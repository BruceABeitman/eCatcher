.class  Lcom/google/android/gms/plus/k$7;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/t;
.field final synthetic a:Lcom/google/android/gms/plus/m;
.field final synthetic b:Lcom/google/android/gms/plus/k;
.method constructor <init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/m;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/k$7;->b:Lcom/google/android/gms/plus/k;
iput-object p2, p0, Lcom/google/android/gms/plus/k$7;->a:Lcom/google/android/gms/plus/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/plus/k$7;->a:Lcom/google/android/gms/plus/m;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Lcom/google/android/gms/common/api/Status;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->j()Lcom/google/android/gms/common/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/plus/m;->a(Lcom/google/android/gms/common/b;)V
return-void
.end method
.method public synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/k$7;->a(Lcom/google/android/gms/common/api/Status;)V
return-void
.end method