.class public Lcom/pinguo/camera360/order/model/Order$Info;
.super Ljava/lang/Object;
.source "Order.java"
.implements Ljava/io/Serializable;
.field public mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
.field public mLogisticPrice:I
.field public mOrderId:Ljava/lang/String;
.field public mPassportList:Ljava/util/List;
.field public mStatus:I
.field public mTotalPrice:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/order/model/Order$Info;->mLogisticPrice:I
return-void
.end method