.class Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;
.super Lcom/pinguo/camera360/shop/model/api/BaseResponse;
.source "WXPayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/WXPayWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenPrepayOrderResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/shop/model/api/BaseResponse",
        "<",
        "Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/api/BaseResponse;-><init>()V

    return-void
.end method
