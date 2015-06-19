.class final Lcom/instagram/android/fragment/ak;
.super Lcom/instagram/api/j/a;
.source "EditProfileFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/ab;
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/user/c/a;)V
.registers 4
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v0
invoke-interface {v0, p1}, Lcom/instagram/user/c/h;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
iget-object v0, p0, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/fragment/an;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/al;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/al;-><init>(Lcom/instagram/android/fragment/ak;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/an;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/ab;->b(Lcom/instagram/android/fragment/ab;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 4
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-static {v0, p1}, Lcom/instagram/g/c;->a(Landroid/support/v4/app/s;Lcom/instagram/api/j/j;)V
:cond_17
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/c/a;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ak;->a(Lcom/instagram/user/c/a;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/ak;->a:Lcom/instagram/android/fragment/ab;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/fragment/ab;->b(Lcom/instagram/android/fragment/ab;Z)Z
return-void
.end method