.class public Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;
.super Ljava/lang/Object;
.source "ApiOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductDetail"
.end annotation


# instance fields
.field public buyCount:I

.field public productId:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public templateData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$TemplateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
