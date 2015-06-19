.class  Lcom/twidroid/fragments/d$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/twidroid/fragments/d;
.method constructor <init>(Lcom/twidroid/fragments/d;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/d$6;->a:Lcom/twidroid/fragments/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 7
const/4 v1, 0x0
const/4 v0, 0x4
if-ne p2, v0, :cond_33
iget-object v0, p0, Lcom/twidroid/fragments/d$6;->a:Lcom/twidroid/fragments/d;
invoke-static {v0}, Lcom/twidroid/fragments/d;->f(Lcom/twidroid/fragments/d;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/d$6;->a:Lcom/twidroid/fragments/d;
invoke-static {v0}, Lcom/twidroid/fragments/d;->d(Lcom/twidroid/fragments/d;)V
iget-object v0, p0, Lcom/twidroid/fragments/d$6;->a:Lcom/twidroid/fragments/d;
invoke-static {v0}, Lcom/twidroid/fragments/d;->c(Lcom/twidroid/fragments/d;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "input_method"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v2, p0, Lcom/twidroid/fragments/d$6;->a:Lcom/twidroid/fragments/d;
invoke-static {v2}, Lcom/twidroid/fragments/d;->e(Lcom/twidroid/fragments/d;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
const/4 v0, 0x1
:goto_32
return v0
:cond_33
move v0, v1
goto :goto_32
.end method