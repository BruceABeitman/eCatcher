.class public Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;
.super Lcom/pinguo/camera360/login/model/BaseResponse;
.source "ApiSonyCoupon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SonyCouponResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/login/model/BaseResponse",
        "<",
        "Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/login/model/BaseResponse;-><init>()V

    return-void
.end method
