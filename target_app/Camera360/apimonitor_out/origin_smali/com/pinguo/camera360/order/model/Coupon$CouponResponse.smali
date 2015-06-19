.class public Lcom/pinguo/camera360/order/model/Coupon$CouponResponse;
.super Lcom/pinguo/camera360/shop/model/api/BaseResponse;
.source "Coupon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/Coupon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CouponResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/shop/model/api/BaseResponse",
        "<",
        "Lcom/pinguo/camera360/order/model/Coupon$Info;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/api/BaseResponse;-><init>()V

    return-void
.end method
