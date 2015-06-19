.class public Lcom/pinguo/share/local/LocalWXShare;
.super Ljava/lang/Object;
.source "LocalWXShare.java"


# static fields
.field private static newFriendsIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

.field private static newLastIWXAPIHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

.field private static newWechatIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static newSendImage(Landroid/app/Activity;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15

    sget-object v5, Lcom/pinguo/share/ShareConstants;->WX_APP_ID:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    sget-object v5, Lcom/pinguo/share/ShareConstants;->WX_APP_ID:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/pinguo/share/local/LocalWXShare;->newLastIWXAPIHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    invoke-interface {v0, v5, v6}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    if-nez p7, :cond_44

    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>()V

    if-eqz p3, :cond_3f

    iput-object p3, v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;

    :cond_24
    :goto_24
    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    :cond_26
    :goto_26
    iput-object p1, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string/jumbo v5, "img"

    invoke-static {v5}, Lcom/pinguo/share/local/LocalWXShare;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iput p2, v3, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    invoke-interface {v0, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v5

    return v5

    :cond_3f
    if-eqz p4, :cond_24

    iput-object p4, v1, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;

    goto :goto_24

    :cond_44
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    iput-object p3, v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    if-eqz p5, :cond_51

    iput-object p5, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    :cond_51
    if-eqz p6, :cond_26

    iput-object p6, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    goto :goto_26
.end method

.method public static newSendImageForChats(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 15

    sget-object v0, Lcom/pinguo/share/local/LocalWXShare;->newWechatIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/pinguo/share/local/LocalWXShare$1;

    invoke-direct {v0}, Lcom/pinguo/share/local/LocalWXShare$1;-><init>()V

    sput-object v0, Lcom/pinguo/share/local/LocalWXShare;->newWechatIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    :cond_b
    sget-object v0, Lcom/pinguo/share/local/LocalWXShare;->newWechatIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    sput-object v0, Lcom/pinguo/share/local/LocalWXShare;->newLastIWXAPIHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    if-eqz p3, :cond_1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/pinguo/share/local/LocalWXShare;->newSendImage(Landroid/app/Activity;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/pinguo/share/local/LocalWXShare;->newSendImage(Landroid/app/Activity;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1d
.end method

.method public static newSendImageForFriends(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 15

    sget-object v0, Lcom/pinguo/share/local/LocalWXShare;->newFriendsIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/pinguo/share/local/LocalWXShare$2;

    invoke-direct {v0}, Lcom/pinguo/share/local/LocalWXShare$2;-><init>()V

    sput-object v0, Lcom/pinguo/share/local/LocalWXShare;->newFriendsIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    :cond_b
    sget-object v0, Lcom/pinguo/share/local/LocalWXShare;->newFriendsIWAPI:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    sput-object v0, Lcom/pinguo/share/local/LocalWXShare;->newLastIWXAPIHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    if-eqz p3, :cond_1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/pinguo/share/local/LocalWXShare;->newSendImage(Landroid/app/Activity;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/pinguo/share/local/LocalWXShare;->newSendImage(Landroid/app/Activity;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1d
.end method

.method public static sendImageToFriendsForOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/Activity;)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p3

    move-object v3, p2

    move-object v5, p0

    move-object v6, p1

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/pinguo/share/local/LocalWXShare;->newSendImage(Landroid/app/Activity;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static validateInstall(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.tencent.mm"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_19

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_13} :catch_1b

    const/16 v4, 0xff

    if-lt v3, v4, :cond_18

    const/4 v1, 0x1

    :cond_18
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18

    :catch_1b
    move-exception v0

    const/4 v1, 0x0

    goto :goto_18
.end method
