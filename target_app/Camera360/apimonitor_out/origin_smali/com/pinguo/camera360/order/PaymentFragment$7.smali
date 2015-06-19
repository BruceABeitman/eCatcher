.class Lcom/pinguo/camera360/order/PaymentFragment$7;
.super Ljava/lang/Object;
.source "PaymentFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/PaymentFragment;->payOrderByAlipay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;

.field private final synthetic val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$7;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/order/PaymentFragment$7;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlipayCancel()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$7;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayCancel()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$7(Lcom/pinguo/camera360/order/PaymentFragment;)V

    return-void
.end method

.method public onAlipayError(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$7;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$7;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayError(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/pinguo/camera360/order/PaymentFragment;->access$6(Lcom/pinguo/camera360/order/PaymentFragment;ILjava/lang/String;)V

    return-void
.end method

.method public onAlipayPrevExecute()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$7;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    return-void
.end method

.method public onAlipaySuccess(Lcom/pinguo/camera360/order/model/alipay/Result;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$7;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPaySuccess()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$1(Lcom/pinguo/camera360/order/PaymentFragment;)V

    return-void
.end method

.method public onAlipayUpgrade()V
    .registers 1

    return-void
.end method
