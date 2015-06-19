.class public Lcom/pinguo/camera360/order/model/WXPayWrapper;
.super Ljava/lang/Object;
.source "WXPayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;,
        Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final WX_DOWNLOAD_URL:Ljava/lang/String; = "http://weixin.qq.com/d"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
            "<",
            "Lcom/pinguo/camera360/order/model/WXPayWrapper$GenPrepayOrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field private wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/model/WXPayWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mContext:Landroid/content/Context;

    sget-object v2, LvStudio/Android/Camera360/wxapi/WXConstants;->APP_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    sget-object v2, LvStudio/Android/Camera360/wxapi/WXConstants;->APP_ID:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/pinguo/camera360/order/model/WXPayWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "res of registerApp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/order/model/WXPayWrapper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/order/model/WXPayWrapper;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->cancel()V

    :cond_9
    return-void
.end method

.method public isPaySupported()Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x22000001

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isWXAppInstalled()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method public pay(Ljava/lang/String;Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;)V
    .registers 9

    new-instance v0, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;

    const/4 v2, 0x1

    const-string/jumbo v3, "https://bstore.camera360.com/v1/order/genprepay"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/order/model/WXPayWrapper$1;-><init>(Lcom/pinguo/camera360/order/model/WXPayWrapper;ILjava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;)V

    iput-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    invoke-static {}, LvStudio/Android/Camera360/RemoteConstants;->getRetryPolity()Lcom/android/volley/RetryPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXPayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->execute()V

    return-void
.end method
