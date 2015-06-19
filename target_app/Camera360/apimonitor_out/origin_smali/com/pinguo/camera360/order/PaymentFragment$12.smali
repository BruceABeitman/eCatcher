.class Lcom/pinguo/camera360/order/PaymentFragment$12;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/PaymentFragment;->verifyOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/PaymentFragment;

.field private final synthetic val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment$12;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/order/PaymentFragment$12;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment$12;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    return-void
.end method

.method public onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment$12;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    iget-object v1, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v1, v1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget v0, v1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->status:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_15

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1a

    :cond_15
    iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment$12;->this$0:Lcom/pinguo/camera360/order/PaymentFragment;

    #calls: Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPaySuccess()V
    invoke-static {v1}, Lcom/pinguo/camera360/order/PaymentFragment;->access$1(Lcom/pinguo/camera360/order/PaymentFragment;)V

    :cond_1a
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/PaymentFragment$12;->onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)V

    return-void
.end method
