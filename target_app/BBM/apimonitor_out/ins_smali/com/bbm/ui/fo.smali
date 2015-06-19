.class final Lcom/bbm/ui/fo;
.super Ljava/lang/Object;
.source "SearchEditText.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/SearchEditText;
.method constructor <init>(Lcom/bbm/ui/SearchEditText;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/fo;->a:Lcom/bbm/ui/SearchEditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/fo; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Cancel clicked"
const-class v1, Lcom/bbm/ui/SearchEditText;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/fo;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->d(Lcom/bbm/ui/SearchEditText;)Landroid/widget/EditText;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/fo;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->e(Lcom/bbm/ui/SearchEditText;)Landroid/content/Context;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/bbm/ui/fo;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v1}, Lcom/bbm/ui/SearchEditText;->d(Lcom/bbm/ui/SearchEditText;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v0, p0, Lcom/bbm/ui/fo;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->d(Lcom/bbm/ui/SearchEditText;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
const-string v1, " - Lcom/bbm/ui/fo; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method