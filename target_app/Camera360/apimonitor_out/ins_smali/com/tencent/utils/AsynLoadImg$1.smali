.class  Lcom/tencent/utils/AsynLoadImg$1;
.super Landroid/os/Handler;
.source "ProGuard"
.field final synthetic a:Lcom/tencent/utils/AsynLoadImg;
.method constructor <init>(Lcom/tencent/utils/AsynLoadImg;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/tencent/utils/AsynLoadImg$1;->a:Lcom/tencent/utils/AsynLoadImg;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const-string/jumbo v0, "AsynLoadImg"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "handleMessage:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
iget v0, p1, Landroid/os/Message;->arg1:I
if-nez v0, :cond_30
iget-object v0, p0, Lcom/tencent/utils/AsynLoadImg$1;->a:Lcom/tencent/utils/AsynLoadImg;
invoke-static {v0}, Lcom/tencent/utils/AsynLoadImg;->a(Lcom/tencent/utils/AsynLoadImg;)Lcom/tencent/utils/AsynLoadImgBack;
move-result-object v1
iget v2, p1, Landroid/os/Message;->arg1:I
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-interface {v1, v2, v0}, Lcom/tencent/utils/AsynLoadImgBack;->saved(ILjava/lang/String;)V
:goto_2f
return-void
:cond_30
iget-object v0, p0, Lcom/tencent/utils/AsynLoadImg$1;->a:Lcom/tencent/utils/AsynLoadImg;
invoke-static {v0}, Lcom/tencent/utils/AsynLoadImg;->a(Lcom/tencent/utils/AsynLoadImg;)Lcom/tencent/utils/AsynLoadImgBack;
move-result-object v0
iget v1, p1, Landroid/os/Message;->arg1:I
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lcom/tencent/utils/AsynLoadImgBack;->saved(ILjava/lang/String;)V
goto :goto_2f
.end method