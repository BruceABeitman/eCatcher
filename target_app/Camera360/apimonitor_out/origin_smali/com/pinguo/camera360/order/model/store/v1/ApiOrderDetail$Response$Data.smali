.class public Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;
.super Ljava/lang/Object;
.source "ApiOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;,
        Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;,
        Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$TemplateData;
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
            "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;",
            ">;"
        }
    .end annotation
.end field

.field public detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;",
            ">;"
        }
    .end annotation
.end field

.field public discountAmount:I

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
