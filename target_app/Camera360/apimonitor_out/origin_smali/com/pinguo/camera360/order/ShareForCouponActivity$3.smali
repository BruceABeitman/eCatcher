.class Lcom/pinguo/camera360/order/ShareForCouponActivity$3;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ShareForCouponActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/ShareForCouponActivity;->loadCampaign(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Lcom/pinguo/camera360/order/model/Campaign$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    #getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$2(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    #getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$3(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    #calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V

    return-void
.end method

.method public onSuccess(Lcom/pinguo/camera360/order/model/Campaign$Info;)V
    .registers 12

    iget-object v8, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    #setter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
    invoke-static {v8, p1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$4(Lcom/pinguo/camera360/order/ShareForCouponActivity;Lcom/pinguo/camera360/order/model/Campaign$Info;)V

    :try_start_5
    iget-object v8, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    #getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareInfo:Lcom/pinguo/camera360/order/model/Campaign$Info;
    invoke-static {v8}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$5(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Campaign$Info;

    move-result-object v8

    iget-object v4, v8, Lcom/pinguo/camera360/order/model/Campaign$Info;->list:Ljava/util/List;

    iget-object v8, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    invoke-static {v8}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->getScreenWidth(Landroid/app/Activity;)I

    move-result v7

    iget-object v8, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    invoke-static {v8}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->getScreenHeight(Landroid/app/Activity;)I

    move-result v2

    add-int v5, v7, v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_1d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_35

    iget-object v8, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;

    #getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mImageLoaderView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
    invoke-static {v8}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$6(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    move-result-object v9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;

    iget-object v8, v8, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;->url:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    :goto_34
    return-void

    :cond_35
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;

    iget v8, v8, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;->height:I

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;

    iget v8, v8, Lcom/pinguo/camera360/order/model/Campaign$PosterImage;->width:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_58

    move-result v8

    add-int v0, v9, v8

    if-ge v0, v5, :cond_55

    move v5, v0

    move v6, v3

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :catch_58
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/model/Campaign$Info;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/ShareForCouponActivity$3;->onSuccess(Lcom/pinguo/camera360/order/model/Campaign$Info;)V

    return-void
.end method
