.class final Landroid/support/v4/app/l;
.super Landroid/os/Handler;
.source "FragmentActivity.java"
.field final synthetic a:Landroid/support/v4/app/k;
.method constructor <init>(Landroid/support/v4/app/k;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/k;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_24
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
:goto_8
:cond_8
return-void
:pswitch_9
iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/k;
iget-boolean v0, v0, Landroid/support/v4/app/k;->g:Z
if-eqz v0, :cond_8
iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/k;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->a(Z)V
goto :goto_8
:pswitch_16
iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->b()V
iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/k;
iget-object v0, v0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;
invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z
goto :goto_8
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_9
:pswitch_16
.end packed-switch
.end method