.class public Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response$Data;
.super Ljava/lang/Object;
.source "ApiOrderAmount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public amount:I

.field public deliver:I

.field public discount:I

.field public isUsed:I

.field public itemAmount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
