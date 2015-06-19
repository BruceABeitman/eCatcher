.class final Lcom/instagram/android/login/fragment/x;
.super Lcom/instagram/api/j/f;
.source "PasswordResetFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/v;
.method constructor <init>(Lcom/instagram/android/login/fragment/v;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/user/c/a;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v0, p1}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
iget-object v1, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/v;->D()Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v2}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/user/c/a;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Landroid/view/View;Lcom/instagram/user/c/a;)V
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
invoke-super {p0}, Lcom/instagram/api/j/f;->a()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->no_account_found:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/c/a;
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/x;->a(Lcom/instagram/user/c/a;)V
return-void
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/api/j/f;->b()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Z)Z
iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->u()Z
move-result v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
:cond_18
return-void
.end method