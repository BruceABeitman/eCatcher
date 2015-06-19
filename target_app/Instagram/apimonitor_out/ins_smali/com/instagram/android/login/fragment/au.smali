.class final Lcom/instagram/android/login/fragment/au;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/an;
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V
return-void
.end method
.method public final a(Z)V
.registers 5
if-eqz p1, :cond_8
sget-object v0, Lcom/instagram/o/b;->G:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
move-result-object v1
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v1, v2, :cond_2b
invoke-static {v0}, Lcom/instagram/common/u/e;->b(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;
sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
sget v0, Lcom/facebook/az;->please_enter_a_valid_email_address:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
goto :goto_7
:cond_2b
iget-object v0, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->p(Lcom/instagram/android/login/fragment/an;)Landroid/widget/AutoCompleteTextView;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/login/b;->a(Landroid/widget/TextView;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
move-result-object v1
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v1, v2, :cond_7
if-eqz v0, :cond_7
iget-object v1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;
invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->f(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
goto :goto_7
.end method