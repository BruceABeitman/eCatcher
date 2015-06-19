.class final Lcom/bbm/ui/activities/aag;
.super Ljava/lang/Object;
.source "OwnProfileActivity.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/OwnProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aag; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v4, 0x7f0e05cf
const v1, 0x7f0200f9
const/4 v5, 0x5
if-nez p2, :cond_bb
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v3, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v3}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/bbm/util/c/c;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_45
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_aa
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v2, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-virtual {v2, v4}, Lcom/bbm/ui/activities/OwnProfileActivity;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
const/16 v4, 0x10
invoke-static {v0, v2, v3, v4}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;II)V
:goto_8a
move-object v0, p1
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
move-object v0, p1
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-eqz v2, :cond_a1
const v1, 0x7f0200fb
:cond_a1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V
check-cast p1, Landroid/widget/EditText;
invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V
:goto_a9
const-string v1, " - Lcom/bbm/ui/activities/aag; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_aa
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
goto :goto_8a
:cond_bb
move-object v0, p1
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V
move-object v0, p1
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V
iget-object v0, p0, Lcom/bbm/ui/activities/aag;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
const-string v1, "input_method"
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
const/4 v1, 0x2
invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
goto :goto_a9
.end method