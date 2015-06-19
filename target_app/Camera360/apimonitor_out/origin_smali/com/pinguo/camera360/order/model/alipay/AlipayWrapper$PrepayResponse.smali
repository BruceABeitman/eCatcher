.class Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse;
.super Ljava/lang/Object;
.source "AlipayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepayResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$PrepayResponse$Data;

.field public message:Ljava/lang/String;

.field public status:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
