.class public Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;
.super Lcom/pinguo/camera360/shop/model/api/BaseResponse;
.source "ApiOrderAmount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/shop/model/api/BaseResponse",
        "<",
        "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/api/BaseResponse;-><init>()V

    return-void
.end method
