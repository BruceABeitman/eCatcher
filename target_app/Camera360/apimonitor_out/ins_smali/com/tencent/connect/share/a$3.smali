.class final Lcom/tencent/connect/share/a$3;
.super Landroid/os/Handler;
.source "ProGuard"
.field final synthetic a:Lcom/tencent/utils/AsynLoadImgBack;
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/utils/AsynLoadImgBack;)V
.registers 3
iput-object p2, p0, Lcom/tencent/connect/share/a$3;->a:Lcom/tencent/utils/AsynLoadImgBack;
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1c
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
:goto_8
return-void
:pswitch_9
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string/jumbo v1, "images"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/tencent/connect/share/a$3;->a:Lcom/tencent/utils/AsynLoadImgBack;
const/4 v2, 0x0
invoke-interface {v1, v2, v0}, Lcom/tencent/utils/AsynLoadImgBack;->batchSaved(ILjava/util/ArrayList;)V
goto :goto_8
nop
:pswitch_data_1c
.packed-switch 0x65
:pswitch_9
.end packed-switch
.end method