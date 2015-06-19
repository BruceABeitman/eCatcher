.class public Lcom/pinguo/camera360/order/model/Order;
.super Ljava/lang/Object;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/Order$Info;
    }
.end annotation


# static fields
.field public static final ORDER_STATUS_CLOSE:I = 0x6d

.field public static final ORDER_STATUS_DELIVERED:I = 0x68

.field public static final ORDER_STATUS_MADE_SECOND:I = 0x6a

.field public static final ORDER_STATUS_PAIED:I = 0x64

.field public static final ORDER_STATUS_RECEIVED:I = 0x69

.field public static final ORDER_STATUS_REPETITION:I = 0x6b

.field public static final ORDER_STATUS_TO_BE_MADE:I = 0x66

.field public static final ORDER_STATUS_TO_BE_PAID:I = 0x1

.field public static final ORDER_STATUS_TO_BE_REFUND:I = 0x6c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mInfo:Lcom/pinguo/camera360/order/model/Order$Info;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/model/Order;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/model/Order;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/order/model/Order$Info;

    invoke-direct {v0}, Lcom/pinguo/camera360/order/model/Order$Info;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Order;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/order/model/Order$Info;

    invoke-direct {v0}, Lcom/pinguo/camera360/order/model/Order$Info;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    return-void
.end method

.method public create()Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/Order$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/Order;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pinguo/camera360/order/model/Coupon$Info;)V

    new-instance v1, Lcom/pinguo/camera360/order/model/Order$1;

    invoke-direct {v1, p0, v0}, Lcom/pinguo/camera360/order/model/Order$1;-><init>(Lcom/pinguo/camera360/order/model/Order;Lcom/pinguo/lib/os/AsyncFuture;)V

    return-object v1
.end method

.method public getRemoteAmount(Lcom/pinguo/camera360/order/model/OrderAddress;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/order/model/OrderAddress;",
            ")",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/Order;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pinguo/camera360/order/model/Coupon$Info;Lcom/pinguo/camera360/order/model/OrderAddress;)V

    new-instance v1, Lcom/pinguo/camera360/order/model/Order$3;

    invoke-direct {v1, p0, v0}, Lcom/pinguo/camera360/order/model/Order$3;-><init>(Lcom/pinguo/camera360/order/model/Order;Lcom/pinguo/lib/os/AsyncFuture;)V

    return-object v1
.end method

.method public isCreated()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public verify()Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/Order$2;

    new-instance v1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Order;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/order/model/Order$2;-><init>(Lcom/pinguo/camera360/order/model/Order;Lcom/pinguo/lib/os/AsyncFuture;)V

    return-object v0
.end method
