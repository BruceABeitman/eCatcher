.class public Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiCouponInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/network/ApiAsyncTaskBase",
        "<",
        "Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final COUPON_EXPIRED:I = 0x2811

.field public static final COUPON_INVALID:I = 0x2810

.field public static final COUPON_ONLY_ONE:I = 0x280e

.field public static final COUPON_RUN_OUT:I = 0x280d

.field public static final COUPON_USED:I = 0x2812


# instance fields
.field private mCouponCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;->mCouponCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;->mCouponCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo$1;

    const/4 v1, 0x1

    const-string/jumbo v2, "https://bstore.camera360.com/v1/coupon/info"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo$1;-><init>(Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V

    return-void
.end method
