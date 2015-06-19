.class public Lcom/pinguo/camera360/order/model/WXTimelineWrapper;
.super Ljava/lang/Object;
.source "WXTimelineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->mContext:Landroid/content/Context;

    sget-object v2, LvStudio/Android/Camera360/wxapi/WXConstants;->APP_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    sget-object v2, LvStudio/Android/Camera360/wxapi/WXConstants;->APP_ID:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->TAG:Ljava/lang/String;

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


# virtual methods
.method public isTimelineSupported()Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x21020001

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

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/WXTimelineWrapper;->wxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method
