.class final Lcom/bbm/ui/b/l;
.super Ljava/lang/Object;
.source "BBInfoAndInputDialog.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/b/k;
.method constructor <init>(Lcom/bbm/ui/b/k;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/b/l;->a:Lcom/bbm/ui/b/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v0, p0, Lcom/bbm/ui/b/l;->a:Lcom/bbm/ui/b/k;
invoke-static {v0}, Lcom/bbm/ui/b/k;->a(Lcom/bbm/ui/b/k;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/bbm/ui/b/l;->a:Lcom/bbm/ui/b/k;
iget-object v0, v0, Lcom/bbm/ui/b/k;->c:Landroid/widget/Button;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/bbm/ui/b/l;->a:Lcom/bbm/ui/b/k;
iget-object v0, v0, Lcom/bbm/ui/b/k;->c:Landroid/widget/Button;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_20
.end method