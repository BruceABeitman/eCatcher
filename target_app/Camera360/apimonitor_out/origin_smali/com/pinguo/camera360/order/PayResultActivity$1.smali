.class Lcom/pinguo/camera360/order/PayResultActivity$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PayResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/PayResultActivity;->verifyOrder(Z)V
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
.field final synthetic this$0:Lcom/pinguo/camera360/order/PayResultActivity;

.field private final synthetic val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/PayResultActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->this$0:Lcom/pinguo/camera360/order/PayResultActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->this$0:Lcom/pinguo/camera360/order/PayResultActivity;

    #getter for: Lcom/pinguo/camera360/order/PayResultActivity;->mRetryBox:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/PayResultActivity;->access$0(Lcom/pinguo/camera360/order/PayResultActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->this$0:Lcom/pinguo/camera360/order/PayResultActivity;

    #getter for: Lcom/pinguo/camera360/order/PayResultActivity;->mRetryBox:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/PayResultActivity;->access$0(Lcom/pinguo/camera360/order/PayResultActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_1f
    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->this$0:Lcom/pinguo/camera360/order/PayResultActivity;

    iget-object v0, v0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkIV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPayFinishDialogShow()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->this$0:Lcom/pinguo/camera360/order/PayResultActivity;

    iget-object v0, v0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkIV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->this$0:Lcom/pinguo/camera360/order/PayResultActivity;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/order/PayResultActivity;->updateOrderInfo(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_18
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/PayResultActivity$1;->onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)V

    return-void
.end method
