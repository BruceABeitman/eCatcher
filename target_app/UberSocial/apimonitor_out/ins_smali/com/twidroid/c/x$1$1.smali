.class  Lcom/twidroid/c/x$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/d/a/b;
.field final synthetic a:Lcom/twidroid/c/x$1;
.method constructor <init>(Lcom/twidroid/c/x$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/x$1$1;->a:Lcom/twidroid/c/x$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/c/x$1$1;->a:Lcom/twidroid/c/x$1;
iget-object v0, v0, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
iget-object v0, v0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/c/x$1$1;->a:Lcom/twidroid/c/x$1;
iget-object v1, v1, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
iget-object v1, v1, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
const v2, 0x7f0c0158
invoke-static {v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(I)V
.registers 5
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/c/x$1$1;->a:Lcom/twidroid/c/x$1;
iget-object v1, v1, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
iget-object v1, v1, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c00f9
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
packed-switch p1, :pswitch_data_30
const v1, 0x7f0c00de
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
:goto_1a
const v1, 0x7f0c0211
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/h;->a(Landroid/app/Dialog;)V
return-void
:pswitch_29
const v1, 0x7f0c00ee
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
goto :goto_1a
:pswitch_data_30
.packed-switch 0x0
:pswitch_29
.end packed-switch
.end method