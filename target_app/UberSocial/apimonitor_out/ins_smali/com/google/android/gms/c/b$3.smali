.class  Lcom/google/android/gms/c/b$3;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/c/c;
.field final synthetic a:Landroid/os/Bundle;
.field final synthetic b:Lcom/google/android/gms/c/b;
.method constructor <init>(Lcom/google/android/gms/c/b;Landroid/os/Bundle;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/c/b$3;->b:Lcom/google/android/gms/c/b;
iput-object p2, p0, Lcom/google/android/gms/c/b$3;->a:Landroid/os/Bundle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public a(Lcom/google/android/gms/c/a;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/c/b$3;->b:Lcom/google/android/gms/c/b;
invoke-static {v0}, Lcom/google/android/gms/c/b;->b(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/a;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/c/b$3;->a:Landroid/os/Bundle;
invoke-interface {v0, v1}, Lcom/google/android/gms/c/a;->a(Landroid/os/Bundle;)V
return-void
.end method