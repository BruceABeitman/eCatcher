.class final Lcom/instagram/android/l/c/j;
.super Lcom/instagram/api/k/a/h;
.source "UserListFragment.java"
.field final synthetic a:Lcom/instagram/android/l/c/a;
.method constructor <init>(Lcom/instagram/android/l/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/l/c/j;->a:Lcom/instagram/android/l/c/a;
invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V
return-void
.end method
.method private a(Ljava/lang/Void;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/k/b/a;->i(Z)V
iget-object v0, p0, Lcom/instagram/android/l/c/j;->a:Lcom/instagram/android/l/c/a;
invoke-static {v0}, Lcom/instagram/android/l/c/a;->e(Lcom/instagram/android/l/c/a;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/l/c/k;
invoke-direct {v1, p0}, Lcom/instagram/android/l/c/k;-><init>(Lcom/instagram/android/l/c/j;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final a(Lcom/instagram/api/k/a/i;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
iget-object v0, p0, Lcom/instagram/android/l/c/j;->a:Lcom/instagram/android/l/c/a;
invoke-virtual {v0}, Lcom/instagram/android/l/c/a;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->disconnect_failed:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-direct {p0, p1}, Lcom/instagram/android/l/c/j;->a(Ljava/lang/Void;)V
return-void
.end method