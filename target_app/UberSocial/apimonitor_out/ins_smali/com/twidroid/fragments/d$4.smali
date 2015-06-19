.class  Lcom/twidroid/fragments/d$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/fragments/d;
.method constructor <init>(Lcom/twidroid/fragments/d;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/d$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;
invoke-static {v0}, Lcom/twidroid/fragments/d;->c(Lcom/twidroid/fragments/d;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_39
iget-object v0, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;
invoke-static {v0}, Lcom/twidroid/fragments/d;->d(Lcom/twidroid/fragments/d;)V
iget-object v0, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;
invoke-static {v0}, Lcom/twidroid/fragments/d;->c(Lcom/twidroid/fragments/d;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/twidroid/fragments/d$4;->a:Lcom/twidroid/fragments/d;
invoke-static {v1}, Lcom/twidroid/fragments/d;->e(Lcom/twidroid/fragments/d;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
:cond_39
const-string v1, " - Lcom/twidroid/fragments/d$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method