.class  Lcom/pinguo/camera360/order/PaymentFragment$5;
.super Ljava/lang/Object;
.source "PaymentFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$5;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/PaymentFragment$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v2, "http://weixin.qq.com/d"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
new-instance v0, Landroid/content/Intent;
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/PaymentFragment$5;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/order/PaymentFragment;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/pinguo/camera360/order/PaymentFragment$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method