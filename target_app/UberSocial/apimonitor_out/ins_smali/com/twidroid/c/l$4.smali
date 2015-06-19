.class final Lcom/twidroid/c/l$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnShowListener;
.field final synthetic a:Landroid/widget/EditText;
.method constructor <init>(Landroid/widget/EditText;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/l$4;->a:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onShow(Landroid/content/DialogInterface;)V
.registers 5
check-cast p1, Landroid/app/AlertDialog;
const/4 v0, -0x1
invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v0
if-eqz v0, :cond_d
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
:cond_d
iget-object v1, p0, Lcom/twidroid/c/l$4;->a:Landroid/widget/EditText;
new-instance v2, Lcom/twidroid/c/l$4$1;
invoke-direct {v2, p0, v0}, Lcom/twidroid/c/l$4$1;-><init>(Lcom/twidroid/c/l$4;Landroid/widget/Button;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
return-void
.end method