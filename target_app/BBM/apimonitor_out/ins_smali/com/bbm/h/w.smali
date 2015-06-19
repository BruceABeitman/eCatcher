.class final Lcom/bbm/h/w;
.super Ljava/lang/Object;
.source "AddContactsFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/bbm/h/m;
.method constructor <init>(Lcom/bbm/h/m;)V
.registers 2
iput-object p1, p0, Lcom/bbm/h/w;->a:Lcom/bbm/h/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/h/w;->a:Lcom/bbm/h/m;
invoke-virtual {v0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/bbm/h/w;->a:Lcom/bbm/h/m;
invoke-virtual {v0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/bbm/h/w;->a:Lcom/bbm/h/m;
invoke-virtual {v0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
if-eqz v0, :cond_42
iget-object v1, p0, Lcom/bbm/h/w;->a:Lcom/bbm/h/m;
invoke-virtual {v1}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
:cond_42
iget-object v0, p0, Lcom/bbm/h/w;->a:Lcom/bbm/h/m;
invoke-virtual {v0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->clearFocus()V
:cond_53
return v2
.end method