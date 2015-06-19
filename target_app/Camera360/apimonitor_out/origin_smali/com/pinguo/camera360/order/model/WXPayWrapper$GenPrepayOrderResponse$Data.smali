.class public Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse$Data;
.super Ljava/lang/Object;
.source "WXPayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public noncestr:Ljava/lang/String;

.field public packagevalue:Ljava/lang/String;

.field public prepayid:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
