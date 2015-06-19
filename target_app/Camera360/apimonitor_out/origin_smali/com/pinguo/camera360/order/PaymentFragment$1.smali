.class Lcom/pinguo/camera360/order/PaymentFragment$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/PaymentFragment;->createOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Lcom/pinguo/camera360/order/model/Order$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;

.field private final synthetic val$progressDialog:Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/order/PaymentFragment;->access$3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderCreateError(Ljava/lang/Exception;)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/order/PaymentFragment;->access$4(Lcom/pinguo/camera360/order/PaymentFragment;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->dismiss()V

    return-void
.end method

.method public onProgress(I)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/order/PaymentFragment;->access$3()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->setProgress(I)V

    return-void
.end method

.method public onSuccess(Lcom/pinguo/camera360/order/model/Order$Info;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #getter for: Lcom/pinguo/camera360/order/PaymentFragment;->mPaymentResult:Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
    invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$0(Lcom/pinguo/camera360/order/PaymentFragment;)Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;->onPaymentResultOrderCreateSuccess()V

    iget v0, p1, Lcom/pinguo/camera360/order/model/Order$Info;->mStatus:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPaySuccess()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$1(Lcom/pinguo/camera360/order/PaymentFragment;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->dismiss()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->payOrder()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->access$2(Lcom/pinguo/camera360/order/PaymentFragment;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$1;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->dismiss()V

    goto :goto_19
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/Order$Info;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/PaymentFragment$1;->onSuccess(Lcom/pinguo/camera360/order/model/Order$Info;)V

    return-void
.end method
