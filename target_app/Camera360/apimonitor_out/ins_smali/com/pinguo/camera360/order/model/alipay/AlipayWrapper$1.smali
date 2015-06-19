.class  Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;
.super Landroid/os/Handler;
.source "AlipayWrapper.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
.method constructor <init>(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 8
iget v3, p1, Landroid/os/Message;->what:I
packed-switch v3, :pswitch_data_94
:goto_5
:cond_5
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
return-void
:pswitch_9
iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
#getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$0(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
move-result-object v3
if-eqz v3, :cond_1d
iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
#getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$0(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->isCanceled()Z
move-result v3
if-nez v3, :cond_5
:cond_1d
new-instance v2, Lcom/pinguo/camera360/order/model/alipay/Result;
iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v3, Ljava/lang/String;
invoke-direct {v2, v3}, Lcom/pinguo/camera360/order/model/alipay/Result;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/pinguo/camera360/order/model/alipay/Result;->parseResult()V
iget-object v3, v2, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;
const-string/jumbo v4, "9000"
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_3e
iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
#getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
move-result-object v3
invoke-interface {v3, v2}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipaySuccess(Lcom/pinguo/camera360/order/model/alipay/Result;)V
goto :goto_5
:cond_3e
iget-object v3, v2, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;
const-string/jumbo v4, "6000"
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_53
iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
#getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipayUpgrade()V
goto :goto_5
:cond_53
iget-object v3, v2, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;
const-string/jumbo v4, "6001"
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_68
iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
#getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipayCancel()V
goto :goto_5
:cond_68
:try_start_68
iget-object v3, v2, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;
const-string/jumbo v4, "\\{|\\}"
invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
#getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
move-result-object v3
const/4 v4, 0x1
aget-object v4, v1, v4
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
iget-object v5, v2, Lcom/pinguo/camera360/order/model/alipay/Result;->memo:Ljava/lang/String;
invoke-interface {v3, v4, v5}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipayError(ILjava/lang/String;)V
:try_end_83
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_83} :catch_84
goto :goto_5
:catch_84
move-exception v0
iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;->this$0:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
#getter for: Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
invoke-static {v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
move-result-object v3
const/4 v4, -0x1
iget-object v5, v2, Lcom/pinguo/camera360/order/model/alipay/Result;->memo:Ljava/lang/String;
invoke-interface {v3, v4, v5}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;->onAlipayError(ILjava/lang/String;)V
goto/16 :goto_5
nop
:pswitch_data_94
.packed-switch 0x1
:pswitch_9
.end packed-switch
.end method