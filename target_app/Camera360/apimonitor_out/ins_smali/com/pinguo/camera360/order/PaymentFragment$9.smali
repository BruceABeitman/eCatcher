.class  Lcom/pinguo/camera360/order/PaymentFragment$9;
.super Ljava/lang/Object;
.source "PaymentFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;
.field private final synthetic val$e:Ljava/lang/Exception;
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;Ljava/lang/Exception;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
iput-object p2, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->val$e:Ljava/lang/Exception;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/PaymentFragment$9; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/order/PaymentFragment;->access$9(Lcom/pinguo/camera360/order/PaymentFragment;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
#getter for: Lcom/pinguo/camera360/order/PaymentFragment;->mPaymentResult:Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$0(Lcom/pinguo/camera360/order/PaymentFragment;)Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
move-result-object v0
const/4 v1, -0x1
iget-object v2, p0, Lcom/pinguo/camera360/order/PaymentFragment$9;->val$e:Ljava/lang/Exception;
invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;->onPaymentResultError(ILjava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/order/PaymentFragment$9; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method