.class public Lcom/pinguo/camera360/order/model/Region$RegionListResponse;
.super Lcom/pinguo/camera360/shop/model/api/BaseResponse;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionListResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;,
        Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Country;,
        Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Data;,
        Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Province;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/shop/model/api/BaseResponse",
        "<",
        "Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Data;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/api/BaseResponse;-><init>()V

    return-void
.end method
