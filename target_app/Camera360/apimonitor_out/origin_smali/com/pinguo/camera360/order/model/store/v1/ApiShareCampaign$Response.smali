.class public Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign$Response;
.super Lcom/pinguo/camera360/shop/model/api/BaseResponse;
.source "ApiShareCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/shop/model/api/BaseResponse",
        "<",
        "Lcom/pinguo/camera360/order/model/Campaign$Info;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/api/BaseResponse;-><init>()V

    return-void
.end method
