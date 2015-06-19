.class final Lcom/instagram/android/fragment/am;
.super Lcom/instagram/api/j/f;
.source "EditProfileFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/ab;
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/android/h/a;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0, p1}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;Lcom/instagram/android/h/a;)Lcom/instagram/android/h/a;
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->c(Lcom/instagram/android/fragment/ab;)Landroid/widget/EditText;
move-result-object v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->c(Lcom/instagram/android/fragment/ab;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->c(Lcom/instagram/android/fragment/ab;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/android/h/a;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_36
:cond_35
:goto_35
return-void
:cond_36
invoke-virtual {p1}, Lcom/instagram/android/h/a;->b()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->k(Lcom/instagram/android/fragment/ab;)V
goto :goto_35
:cond_42
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->l(Lcom/instagram/android/fragment/ab;)V
invoke-static {p1}, Lcom/instagram/android/login/b/d;->a(Lcom/instagram/android/h/a;)V
goto :goto_35
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->m(Lcom/instagram/android/fragment/ab;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->m(Lcom/instagram/android/fragment/ab;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_12
invoke-super {p0}, Lcom/instagram/api/j/f;->a()V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/h/a;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/am;->a(Lcom/instagram/android/h/a;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->m(Lcom/instagram/android/fragment/ab;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/fragment/am;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->m(Lcom/instagram/android/fragment/ab;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_13
invoke-super {p0}, Lcom/instagram/api/j/f;->b()V
return-void
.end method