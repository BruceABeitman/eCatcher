.class final Lcom/bbm/ui/c/em;
.super Ljava/lang/Object;
.source "OwnProfileDetailsFragment.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/bbm/ui/c/ej;
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/em;->a:Lcom/bbm/ui/c/ej;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/em;->a:Lcom/bbm/ui/c/ej;
invoke-virtual {v0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v0, p0, Lcom/bbm/ui/c/em;->a:Lcom/bbm/ui/c/ej;
invoke-static {v0}, Lcom/bbm/ui/c/ej;->a(Lcom/bbm/ui/c/ej;)V
iget-object v0, p0, Lcom/bbm/ui/c/em;->a:Lcom/bbm/ui/c/ej;
invoke-static {v0}, Lcom/bbm/ui/c/ej;->d(Lcom/bbm/ui/c/ej;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
return v2
.end method