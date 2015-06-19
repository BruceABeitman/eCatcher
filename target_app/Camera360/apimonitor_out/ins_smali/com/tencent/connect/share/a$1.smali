.class final Lcom/tencent/connect/share/a$1;
.super Landroid/os/Handler;
.source "ProGuard"
.field final synthetic a:Lcom/tencent/utils/AsynLoadImgBack;
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/utils/AsynLoadImgBack;)V
.registers 3
iput-object p2, p0, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/utils/AsynLoadImgBack;
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1e
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
:goto_8
return-void
:pswitch_9
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/utils/AsynLoadImgBack;
const/4 v2, 0x0
invoke-interface {v1, v2, v0}, Lcom/tencent/utils/AsynLoadImgBack;->saved(ILjava/lang/String;)V
goto :goto_8
:pswitch_14
iget v0, p1, Landroid/os/Message;->arg1:I
iget-object v1, p0, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/utils/AsynLoadImgBack;
const/4 v2, 0x0
invoke-interface {v1, v0, v2}, Lcom/tencent/utils/AsynLoadImgBack;->saved(ILjava/lang/String;)V
goto :goto_8
nop
:pswitch_data_1e
.packed-switch 0x65
:pswitch_9
:pswitch_14
.end packed-switch
.end method