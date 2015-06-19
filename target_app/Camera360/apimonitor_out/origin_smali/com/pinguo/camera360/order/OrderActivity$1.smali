.class Lcom/pinguo/camera360/order/OrderActivity$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "OrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/OrderActivity;->updateOrderPrice(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderActivity;

.field private final synthetic val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/OrderActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/order/OrderActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mRetryBoxView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$8(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mContentBoxView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$7(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mContentBoxView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$7(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mNetworkIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$4(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;)V
    .registers 10

    const v3, 0x7f08017c

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/pinguo/camera360/order/OrderActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;

    move-result-object v1

    #setter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/order/OrderActivity;->access$1(Lcom/pinguo/camera360/order/OrderActivity;Lcom/pinguo/camera360/order/model/Order;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v1, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;->data:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;

    iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;->amount:I

    iput v0, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mTotalPrice:I

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v1, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;->data:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;

    iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;->deliver:I

    iput v0, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mLogisticPrice:I

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v1, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;->data:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;

    iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;->discount:I

    iput v0, v1, Lcom/pinguo/camera360/order/model/Coupon$Info;->amount:I

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mCouponCaption:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$3(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v2}, Lcom/pinguo/camera360/order/OrderActivity;->access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Coupon$Info;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mCouponCaption:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$3(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_96
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mNetworkIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$4(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget v0, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mLogisticPrice:I

    if-nez v0, :cond_121

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mLogisticPriceView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$5(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080373

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_b7
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #calls: Lcom/pinguo/camera360/order/OrderActivity;->setTotalPrice()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$6(Lcom/pinguo/camera360/order/OrderActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mContentBoxView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$7(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mRetryBoxView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$8(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_dc

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mRetryBoxView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$8(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_dc
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_e5
    return-void

    :cond_e6
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mCouponCaption:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$3(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    const v3, 0x7f080175

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mCouponCaption:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$3(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_96

    :cond_121
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mLogisticPriceView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderActivity;->access$5(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\uffe5%.2f"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/camera360/order/OrderActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v3}, Lcom/pinguo/camera360/order/OrderActivity;->access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v3

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget v3, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mLogisticPrice:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b7
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/OrderActivity$1;->onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;)V

    return-void
.end method
