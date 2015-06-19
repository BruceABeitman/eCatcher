.class final Lcom/instagram/android/nux/z;
.super Lcom/instagram/api/j/a;
.source "LandingPageFragment.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/instagram/android/nux/n;
.method constructor <init>(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
iput-object p2, p0, Lcom/instagram/android/nux/z;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/android/nux/g;)V
.registers 8
invoke-virtual {p1}, Lcom/instagram/android/nux/g;->a()Z
move-result v0
if-eqz v0, :cond_67
iget-object v0, p1, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;
if-eqz v0, :cond_67
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-virtual {v0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
iget-object v1, p1, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;
invoke-static {v0, v1}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;Lcom/instagram/user/c/a;)V
invoke-virtual {p1}, Lcom/instagram/android/nux/g;->b()Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-virtual {v0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-virtual {v0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->g()V
:cond_30
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-static {v0}, Lcom/instagram/android/nux/n;->c(Lcom/instagram/android/nux/n;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/nux/aa;
invoke-direct {v1, p0}, Lcom/instagram/android/nux/aa;-><init>(Lcom/instagram/android/nux/z;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_3e
return-void
:cond_3f
iget-object v0, p1, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/m/a;->a(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->aC:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "instagram_id"
iget-object v2, p1, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-virtual {v0}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;)V
goto :goto_3e
:cond_67
invoke-virtual {p1}, Lcom/instagram/android/nux/g;->b()Z
move-result v0
if-eqz v0, :cond_7f
iget-object v0, p1, Lcom/instagram/android/nux/g;->e:Ljava/lang/String;
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
iget-object v1, p1, Lcom/instagram/android/nux/g;->e:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/nux/n;Ljava/lang/String;)V
goto :goto_3e
:cond_79
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-static {v0}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/nux/n;)V
goto :goto_3e
:cond_7f
invoke-virtual {p1}, Lcom/instagram/android/nux/g;->c()Z
move-result v0
if-eqz v0, :cond_97
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
new-instance v1, Lcom/instagram/android/login/fragment/RegisterParameters;
iget-object v2, p1, Lcom/instagram/android/nux/g;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/instagram/android/nux/g;->g:Ljava/util/List;
iget-object v4, p1, Lcom/instagram/android/nux/g;->c:Ljava/lang/String;
const/4 v5, 0x0
invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/login/fragment/RegisterParameters;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/nux/n;Lcom/instagram/android/login/fragment/RegisterParameters;)V
goto :goto_3e
:cond_97
invoke-virtual {p1}, Lcom/instagram/android/nux/g;->d()Z
move-result v0
if-eqz v0, :cond_af
iget-object v0, p1, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;
if-eqz v0, :cond_af
iget-object v0, p1, Lcom/instagram/android/nux/g;->f:Ljava/lang/String;
if-eqz v0, :cond_af
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
iget-object v1, p1, Lcom/instagram/android/nux/g;->b:Lcom/instagram/user/c/a;
iget-object v2, p1, Lcom/instagram/android/nux/g;->f:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/instagram/android/nux/n;->a(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
goto :goto_3e
:cond_af
sget-object v0, Lcom/instagram/o/b;->n:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-static {v0}, Lcom/instagram/android/nux/n;->d(Lcom/instagram/android/nux/n;)V
const-string v0, "FacebookLoginRequest"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "bad response with code: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Lcom/instagram/android/nux/g;->a:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3e
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-static {v0}, Lcom/instagram/android/nux/n;->e(Lcom/instagram/android/nux/n;)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 6
sget-object v0, Lcom/instagram/o/b;->n:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-virtual {v0}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v2
invoke-static {p1}, Lcom/instagram/android/nux/af;->a(Lcom/instagram/api/j/j;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/nux/g;
invoke-direct {p0, p1}, Lcom/instagram/android/nux/z;->a(Lcom/instagram/android/nux/g;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/nux/z;->b:Lcom/instagram/android/nux/n;
invoke-static {v0}, Lcom/instagram/android/nux/n;->f(Lcom/instagram/android/nux/n;)V
return-void
.end method