.class final Lcom/instagram/common/h/c;
.super Landroid/os/Handler;
.source "IgEventBus.java"
.field final synthetic a:Lcom/instagram/common/h/b;
.method constructor <init>(Lcom/instagram/common/h/b;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/h/c;->a:Lcom/instagram/common/h/b;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_10
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
:goto_8
return-void
:pswitch_9
iget-object v0, p0, Lcom/instagram/common/h/c;->a:Lcom/instagram/common/h/b;
invoke-static {v0}, Lcom/instagram/common/h/b;->a(Lcom/instagram/common/h/b;)V
goto :goto_8
nop
:pswitch_data_10
.packed-switch 0x1
:pswitch_9
.end packed-switch
.end method