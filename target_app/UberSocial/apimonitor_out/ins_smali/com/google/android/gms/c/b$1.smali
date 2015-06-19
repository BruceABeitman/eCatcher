.class  Lcom/google/android/gms/c/b$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/c/h;
.field final synthetic a:Lcom/google/android/gms/c/b;
.method constructor <init>(Lcom/google/android/gms/c/b;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/c/b$1;->a:Lcom/google/android/gms/c/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/c/a;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/c/b$1;->a:Lcom/google/android/gms/c/b;
invoke-static {v0, p1}, Lcom/google/android/gms/c/b;->a(Lcom/google/android/gms/c/b;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/a;
iget-object v0, p0, Lcom/google/android/gms/c/b$1;->a:Lcom/google/android/gms/c/b;
invoke-static {v0}, Lcom/google/android/gms/c/b;->a(Lcom/google/android/gms/c/b;)Ljava/util/LinkedList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/c/c;
iget-object v2, p0, Lcom/google/android/gms/c/b$1;->a:Lcom/google/android/gms/c/b;
invoke-static {v2}, Lcom/google/android/gms/c/b;->b(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/a;
move-result-object v2
invoke-interface {v0, v2}, Lcom/google/android/gms/c/c;->a(Lcom/google/android/gms/c/a;)V
goto :goto_f
:cond_25
iget-object v0, p0, Lcom/google/android/gms/c/b$1;->a:Lcom/google/android/gms/c/b;
invoke-static {v0}, Lcom/google/android/gms/c/b;->a(Lcom/google/android/gms/c/b;)Ljava/util/LinkedList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
iget-object v0, p0, Lcom/google/android/gms/c/b$1;->a:Lcom/google/android/gms/c/b;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/google/android/gms/c/b;->a(Lcom/google/android/gms/c/b;Landroid/os/Bundle;)Landroid/os/Bundle;
return-void
.end method