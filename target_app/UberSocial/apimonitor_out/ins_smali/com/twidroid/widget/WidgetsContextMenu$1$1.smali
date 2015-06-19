.class  Lcom/twidroid/widget/WidgetsContextMenu$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/c/a/f;
.field final synthetic a:Lcom/twidroid/widget/WidgetsContextMenu$1;
.method constructor <init>(Lcom/twidroid/widget/WidgetsContextMenu$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/widget/WidgetsContextMenu$1$1;->a:Lcom/twidroid/widget/WidgetsContextMenu$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(IILjava/lang/String;)V
.registers 4
return-void
.end method
.method public a(ILjava/lang/String;)V
.registers 3
return-void
.end method
.method public b(ILjava/lang/String;)V
.registers 6
new-instance v0, Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/twidroid/widget/WidgetsContextMenu$1$1;->a:Lcom/twidroid/widget/WidgetsContextMenu$1;
iget-object v1, v1, Lcom/twidroid/widget/WidgetsContextMenu$1;->a:Lcom/twidroid/widget/WidgetsContextMenu;
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/widget/WidgetsContextMenu$1$1;->a:Lcom/twidroid/widget/WidgetsContextMenu$1;
iget-object v1, v1, Lcom/twidroid/widget/WidgetsContextMenu$1;->a:Lcom/twidroid/widget/WidgetsContextMenu;
const v2, 0x7f0c0170
invoke-virtual {v1, v2}, Lcom/twidroid/widget/WidgetsContextMenu;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
return-void
.end method
.method public c(ILjava/lang/String;)V
.registers 3
return-void
.end method
.method public d(I)V
.registers 2
return-void
.end method
.method public e(I)Ljava/lang/CharSequence;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public o()V
.registers 1
return-void
.end method
.method public p()V
.registers 1
return-void
.end method
.method public q()V
.registers 1
return-void
.end method
.method public r()V
.registers 2
iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu$1$1;->a:Lcom/twidroid/widget/WidgetsContextMenu$1;
iget-object v0, v0, Lcom/twidroid/widget/WidgetsContextMenu$1;->a:Lcom/twidroid/widget/WidgetsContextMenu;
invoke-virtual {v0}, Lcom/twidroid/widget/WidgetsContextMenu;->finish()V
return-void
.end method