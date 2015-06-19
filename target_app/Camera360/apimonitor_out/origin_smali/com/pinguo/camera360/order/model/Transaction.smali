.class public Lcom/pinguo/camera360/order/model/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# static fields
.field public static final COUPON_TYPE_NONE:I = 0x1

.field public static final COUPON_TYPE_OTHRE:I = 0x3

.field public static final COUPON_TYPE_SHARE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/pinguo/camera360/order/model/Transaction;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCouponType:I

.field private mOrder:Lcom/pinguo/camera360/order/model/Order;

.field private mOtherCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

.field private mShareCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/model/Transaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/model/Transaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/pinguo/camera360/order/model/Order;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/order/model/Order;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/order/model/Transaction;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/order/model/Transaction;)Lcom/pinguo/camera360/order/model/Order;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/order/model/Transaction;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Transaction;->mShareCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOtherCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/order/model/Transaction;)Lcom/pinguo/camera360/order/model/Coupon$Info;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOtherCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/order/model/Transaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCachedShareCoupon()Lcom/pinguo/camera360/order/model/CachedCoupon;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pinguo/camera360/order/model/CachedCoupon;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/CachedCoupon;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/pinguo/camera360/order/model/Transaction;
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/order/model/Transaction;->mInstance:Lcom/pinguo/camera360/order/model/Transaction;

    if-nez v0, :cond_17

    sget-object v0, Lcom/pinguo/camera360/order/model/Transaction;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createInstance"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/order/model/Transaction;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/order/model/Transaction;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/camera360/order/model/Transaction;->mInstance:Lcom/pinguo/camera360/order/model/Transaction;

    :cond_17
    sget-object v0, Lcom/pinguo/camera360/order/model/Transaction;->mInstance:Lcom/pinguo/camera360/order/model/Transaction;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/pinguo/camera360/order/model/Transaction;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Order;->clear()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I

    iput-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction;->mShareCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    iput-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOtherCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    return-void
.end method

.method public createOtherCoupon(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/Coupon$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/Transaction$4;

    new-instance v1, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/order/model/Transaction$4;-><init>(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/lib/os/AsyncFuture;)V

    return-object v0
.end method

.method public createShareCoupon()Lcom/pinguo/lib/os/AsyncFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/Coupon$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/Transaction$2;

    new-instance v1, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponCode;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/order/model/store/v1/ApiCouponCode;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/order/model/Transaction$2;-><init>(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/lib/os/AsyncFuture;)V

    return-object v0
.end method

.method public disableCoupon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    :cond_b
    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I

    return-void
.end method

.method public enableShareCoupon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/Transaction;->mShareCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    iput-object v1, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    :cond_c
    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I

    return-void
.end method

.method public getCouponType()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I

    return v0
.end method

.method public getDetail(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/Transaction$1;

    new-instance v1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/order/model/Transaction$1;-><init>(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/lib/os/AsyncFuture;)V

    return-object v0
.end method

.method public getOrder()Lcom/pinguo/camera360/order/model/Order;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;

    return-object v0
.end method

.method public getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction;->mShareCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    return-object v0
.end method

.method public updateSwitcher()V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/order/model/Transaction$5;

    const/4 v1, 0x1

    const-string/jumbo v2, "https://bstore.camera360.com/v1/order/switcher"

    invoke-direct {v0, p0, v1, v2}, Lcom/pinguo/camera360/order/model/Transaction$5;-><init>(Lcom/pinguo/camera360/order/model/Transaction;ILjava/lang/String;)V

    invoke-static {}, LvStudio/Android/Camera360/RemoteConstants;->getRetryPolity()Lcom/android/volley/RetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;->execute()V

    return-void
.end method

.method public verifyShareCoupon()Lcom/pinguo/lib/os/AsyncFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pinguo/camera360/order/model/Transaction;->getCachedShareCoupon()Lcom/pinguo/camera360/order/model/CachedCoupon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/CachedCoupon;->existed()Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Lcom/pinguo/lib/os/AsyncSuccess;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pinguo/lib/os/AsyncSuccess;-><init>(Ljava/lang/Object;)V

    :goto_14
    return-object v2

    :cond_15
    iget-object v2, v0, Lcom/pinguo/camera360/order/model/CachedCoupon;->mInfo:Lcom/pinguo/camera360/order/model/CachedCoupon$Info;

    iget-object v1, v2, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;->data:Lcom/pinguo/camera360/order/model/Coupon$Info;

    if-eqz v1, :cond_23

    iget-object v2, v1, Lcom/pinguo/camera360/order/model/Coupon$Info;->coupon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_23
    new-instance v2, Lcom/pinguo/lib/os/AsyncError;

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Empty coupon code"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/pinguo/lib/os/AsyncError;-><init>(Ljava/lang/Exception;)V

    goto :goto_14

    :cond_31
    new-instance v2, Lcom/pinguo/camera360/order/model/Transaction$3;

    new-instance v3, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyCode;

    iget-object v4, p0, Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/pinguo/camera360/order/model/Coupon$Info;->coupon:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyCode;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/order/model/Transaction$3;-><init>(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/lib/os/AsyncFuture;)V

    goto :goto_14
.end method
