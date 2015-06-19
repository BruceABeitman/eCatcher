.class public Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;
.super Ljava/lang/Object;
.source "ApiVerifyOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;
    }
.end annotation


# instance fields
.field public amount:I

.field public createTime:J

.field public deliver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;",
            ">;"
        }
    .end annotation
.end field

.field public oid:Ljava/lang/String;

.field public payAmount:I

.field public showStatus:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
