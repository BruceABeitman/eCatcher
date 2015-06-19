.class public Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;
.super Ljava/lang/Object;
.source "ApiVerifyOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;
    }
.end annotation


# instance fields
.field public orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
