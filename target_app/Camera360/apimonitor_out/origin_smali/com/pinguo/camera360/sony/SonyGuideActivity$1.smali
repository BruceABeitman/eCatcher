.class Lcom/pinguo/camera360/sony/SonyGuideActivity$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "SonyGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

.field private final synthetic val$settings:Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$1;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$1;->val$settings:Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;

    iget v1, v1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;->showCoupon:I

    if-ne v1, v0, :cond_11

    :goto_9
    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$1;->val$settings:Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$1;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->saveShowCouponPage(Landroid/content/Context;Z)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/sony/SonyGuideActivity$1;->onSuccess(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;)V

    return-void
.end method
