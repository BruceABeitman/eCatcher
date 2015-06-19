.class  Lcom/pinguo/camera360/order/PaymentFragment$6;
.super Ljava/lang/Object;
.source "PaymentFragment.java"
.implements Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;
.field private final synthetic val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$6;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
iput-object p2, p0, Lcom/pinguo/camera360/order/PaymentFragment$6;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onWXPayError(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$6;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$6;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
#calls: Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayError(ILjava/lang/String;)V
invoke-static {v0, p1, p2}, Lcom/pinguo/camera360/order/PaymentFragment;->access$6(Lcom/pinguo/camera360/order/PaymentFragment;ILjava/lang/String;)V
return-void
.end method
.method public onWXPayPrevExecute()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$6;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
const/4 v1, 0x1
#setter for: Lcom/pinguo/camera360/order/PaymentFragment;->mWXPaying:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/order/PaymentFragment;->access$5(Lcom/pinguo/camera360/order/PaymentFragment;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$6;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
return-void
.end method