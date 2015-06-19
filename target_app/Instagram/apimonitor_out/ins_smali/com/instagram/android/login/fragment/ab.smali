.class final Lcom/instagram/android/login/fragment/ab;
.super Ljava/lang/Object;
.source "PasswordResetFragment.java"
.implements Lcom/instagram/android/login/j;
.field final synthetic a:Lcom/instagram/android/login/fragment/v;
.method constructor <init>(Lcom/instagram/android/login/fragment/v;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/ab;->a:Lcom/instagram/android/login/fragment/v;
invoke-static {v1}, Lcom/instagram/android/login/fragment/v;->e(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/android/login/d;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/login/d;->c()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:cond_1b
return-void
.end method