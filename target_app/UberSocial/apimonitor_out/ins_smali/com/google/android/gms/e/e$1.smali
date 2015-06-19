.class  Lcom/google/android/gms/e/e$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/t;
.field final synthetic a:Lcom/google/android/gms/e/f;
.field final synthetic b:Lcom/google/android/gms/e/e;
.method constructor <init>(Lcom/google/android/gms/e/e;Lcom/google/android/gms/e/f;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/e/e$1;->b:Lcom/google/android/gms/e/e;
iput-object p2, p0, Lcom/google/android/gms/e/e$1;->a:Lcom/google/android/gms/e/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/e/b;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/e/e$1;->a:Lcom/google/android/gms/e/f;
invoke-interface {p1}, Lcom/google/android/gms/e/b;->a()Lcom/google/android/gms/common/api/Status;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->j()Lcom/google/android/gms/common/b;
move-result-object v1
invoke-interface {p1}, Lcom/google/android/gms/e/b;->b()Landroid/content/Intent;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/e/f;->a(Lcom/google/android/gms/common/b;Landroid/content/Intent;)V
return-void
.end method
.method public synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/e/b;
invoke-virtual {p0, p1}, Lcom/google/android/gms/e/e$1;->a(Lcom/google/android/gms/e/b;)V
return-void
.end method