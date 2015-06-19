.class final Lcom/instagram/android/login/h;
.super Lcom/instagram/android/login/i;
.source "PasswordValidator.java"
.field final synthetic a:Lcom/instagram/android/login/d;
.method constructor <init>(Lcom/instagram/android/login/d;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/h;->a:Lcom/instagram/android/login/d;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/login/i;-><init>(B)V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/login/h;->a:Lcom/instagram/android/login/d;
invoke-static {v0}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/h;->a:Lcom/instagram/android/login/d;
invoke-static {v1}, Lcom/instagram/android/login/d;->d(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/login/h;->a:Lcom/instagram/android/login/d;
invoke-static {v2}, Lcom/instagram/android/login/d;->e(Lcom/instagram/android/login/d;)Z
move-result v2
if-eqz v2, :cond_30
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/login/h;->a:Lcom/instagram/android/login/d;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/login/d;->b(Lcom/instagram/android/login/d;Z)V
:cond_30
iget-object v0, p0, Lcom/instagram/android/login/h;->a:Lcom/instagram/android/login/d;
invoke-static {v0}, Lcom/instagram/android/login/d;->c(Lcom/instagram/android/login/d;)Lcom/instagram/android/login/j;
move-result-object v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/instagram/android/login/h;->a:Lcom/instagram/android/login/d;
invoke-static {v0}, Lcom/instagram/android/login/d;->c(Lcom/instagram/android/login/d;)Lcom/instagram/android/login/j;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/android/login/j;->a()V
:cond_41
return-void
.end method