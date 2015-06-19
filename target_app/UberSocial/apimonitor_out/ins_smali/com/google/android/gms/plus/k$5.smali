.class  Lcom/google/android/gms/plus/k$5;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/t;
.field final synthetic a:Lcom/google/android/gms/plus/o;
.field final synthetic b:Lcom/google/android/gms/plus/k;
.method constructor <init>(Lcom/google/android/gms/plus/k;Lcom/google/android/gms/plus/o;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/k$5;->b:Lcom/google/android/gms/plus/k;
iput-object p2, p0, Lcom/google/android/gms/plus/k$5;->a:Lcom/google/android/gms/plus/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/plus/e;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/plus/k$5;->a:Lcom/google/android/gms/plus/o;
invoke-interface {p1}, Lcom/google/android/gms/plus/e;->a()Lcom/google/android/gms/common/api/Status;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->j()Lcom/google/android/gms/common/b;
move-result-object v1
invoke-interface {p1}, Lcom/google/android/gms/plus/e;->b()Lcom/google/android/gms/plus/a/b/q;
move-result-object v2
invoke-interface {p1}, Lcom/google/android/gms/plus/e;->j_()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/plus/o;->a(Lcom/google/android/gms/common/b;Lcom/google/android/gms/plus/a/b/q;Ljava/lang/String;)V
return-void
.end method
.method public synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/plus/e;
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/k$5;->a(Lcom/google/android/gms/plus/e;)V
return-void
.end method