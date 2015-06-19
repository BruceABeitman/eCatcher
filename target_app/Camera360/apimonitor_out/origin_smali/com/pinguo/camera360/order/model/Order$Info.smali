.class public Lcom/pinguo/camera360/order/model/Order$Info;
.super Ljava/lang/Object;
.source "Order.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

.field public mLogisticPrice:I

.field public mOrderId:Ljava/lang/String;

.field public mPassportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I

.field public mTotalPrice:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/order/model/Order$Info;->mLogisticPrice:I

    return-void
.end method
