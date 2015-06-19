.class final Lcom/instagram/android/login/fragment/aw;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V
return-void
.end method
.method public final a(Z)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->y(Lcom/instagram/android/login/fragment/an;)Landroid/view/View;
move-result-object v1
if-eqz p1, :cond_46
sget v0, Lcom/facebook/au;->input_highlighted:I
:goto_a
invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V
if-eqz p1, :cond_49
sget-object v0, Lcom/instagram/o/b;->x:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_42
iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_42
const-string v1, "prechecked_username"
iget-object v2, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/instagram/android/login/fragment/ax;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ax;-><init>(Lcom/instagram/android/login/fragment/aw;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_42
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
:goto_45
return-void
:cond_46
sget v0, Lcom/facebook/au;->input:I
goto :goto_a
:cond_49
iget-object v0, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/instagram/o/b;->A:Lcom/instagram/o/b;
invoke-virtual {v1}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "username"
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V
iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
goto :goto_45
.end method