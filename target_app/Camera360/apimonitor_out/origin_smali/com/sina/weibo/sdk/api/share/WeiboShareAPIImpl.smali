.class Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;
.super Ljava/lang/Object;
.source "WeiboShareAPIImpl.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeiboApiImpl"


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadConfirmDialog:Landroid/app/Dialog;

.field private mDownloadListener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

.field private mNeedDownloadWeibo:Z

.field private mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mNeedDownloadWeibo:Z

    iput-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mNeedDownloadWeibo:Z

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "WeiboApiImpl"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    const-string/jumbo v0, "WeiboApiImpl"

    const-string/jumbo v1, "WeiboInfo: is null"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method private launchWeiboActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 13

    const/4 v3, 0x0

    if-eqz p1, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_15
    const-string/jumbo v4, "ActivityHandler"

    const-string/jumbo v5, "send fail, invalid arguments"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return v3

    :cond_1f
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "_weibo_sdkVersion"

    const/16 v5, 0x16

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "_weibo_appPackage"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "_weibo_appKey"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "_weibo_flag"

    const v5, 0x20130329

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "_weibo_sign"

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_5e

    invoke-virtual {v2, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5e
    :try_start_5e
    const-string/jumbo v4, "WeiboApiImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "intent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", extra="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2fd

    invoke-virtual {p1, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_88
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5e .. :try_end_88} :catch_8a

    const/4 v3, 0x1

    goto :goto_1e

    :catch_8a
    move-exception v1

    const-string/jumbo v4, "WeiboApiImpl"

    const-string/jumbo v5, "Failed, target ActivityNotFound"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "_weibo_sdkVersion"

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "_weibo_appPackage"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "_weibo_appKey"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "_weibo_flag"

    const v3, 0x20130329

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "_weibo_sign"

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3d
    if-eqz p5, :cond_42

    invoke-virtual {v1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_42
    const-string/jumbo v2, "WeiboApiImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkEnvironment(Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboShareException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    if-nez v0, :cond_32

    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadListener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->createDownloadConfirmDialog(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_19
    :goto_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_19

    :cond_29
    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string/jumbo v1, "Weibo is NOT installed!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget v0, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I

    invoke-static {v0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->isWeiboAppSupportAPI(I)Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string/jumbo v1, "Weibo do NOT support Share API!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget-object v1, v1, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string/jumbo v1, "Weibo signature is incorrect!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public getWeiboAppSupportAPI()I
    .registers 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget v0, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I

    goto :goto_5
.end method

.method public handleWeiboRequest(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;)Z
    .registers 10

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return v3

    :cond_7
    const-string/jumbo v4, "_weibo_appPackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "_weibo_transaction"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_24

    const-string/jumbo v4, "WeiboApiImpl"

    const-string/jumbo v5, "requestListener() faild appPackage validateSign faild"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    goto :goto_6

    :cond_24
    if-nez v2, :cond_33

    const-string/jumbo v4, "WeiboApiImpl"

    const-string/jumbo v5, "requestListener() faild intent TRAN is null"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    goto :goto_6

    :cond_33
    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string/jumbo v4, "WeiboApiImpl"

    const-string/jumbo v5, "requestListener() faild appPackage validateSign faild"

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    goto :goto_6

    :cond_48
    new-instance v1, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Request;->onRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V

    const/4 v3, 0x1

    goto :goto_6
.end method

.method public handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z
    .registers 11

    const/4 v4, 0x0

    const-string/jumbo v5, "_weibo_appPackage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild appPackage is null"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return v4

    :cond_14
    instance-of v5, p2, Landroid/app/Activity;

    if-nez v5, :cond_22

    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild handler is not Activity"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_22
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "WeiboApiImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "responseListener() callPkg : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "_weibo_transaction"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_52

    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild intent TRAN is null"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_52
    iget-object v5, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild appPackage validateSign faild"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_64
    new-instance v3, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v3}, Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;->onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V

    const/4 v4, 0x1

    goto :goto_13
.end method

.method public isWeiboAppInstalled()Z
    .registers 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isWeiboAppSupportAPI()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->getWeiboAppSupportAPI()I

    move-result v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->isWeiboAppSupportAPI(I)Z

    move-result v0

    return v0
.end method

.method public launchWeibo()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    if-nez v2, :cond_f

    const-string/jumbo v2, "WeiboApiImpl"

    const-string/jumbo v3, "startWeibo() faild winfo is null"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return v1

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget-object v2, v2, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "WeiboApiImpl"

    const-string/jumbo v3, "startWeibo() faild packageName is null"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_e

    :catch_23
    move-exception v0

    const-string/jumbo v2, "WeiboApiImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget-object v4, v4, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_42} :catch_23

    const/4 v1, 0x1

    goto :goto_e
.end method

.method public registerApp()Z
    .registers 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mNeedDownloadWeibo:Z

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->checkEnvironment(Z)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public registerWeiboDownloadListener(Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mDownloadListener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    return-void
.end method

.method public sendRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v1, "WeiboApiImpl"

    const-string/jumbo v2, "sendRequest faild act == null or request == null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_c
    return v0

    :cond_d
    :try_start_d
    iget-boolean v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mNeedDownloadWeibo:Z

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->checkEnvironment(Z)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_30

    move-result v1

    if-eqz v1, :cond_c

    new-instance v6, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget-object v1, v1, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v6}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string/jumbo v1, "WeiboApiImpl"

    const-string/jumbo v2, "sendRequest faild request check faild"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_30
    move-exception v7

    goto :goto_c

    :cond_32
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v5}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->toBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v2, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mWeiboInfo:Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    iget-object v3, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->launchWeiboActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_c
.end method

.method public sendResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v1, "WeiboApiImpl"

    const-string/jumbo v2, "sendResponse failed response null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "WeiboApiImpl"

    const-string/jumbo v2, "sendResponse checkArgs fail"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_24
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v5}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->toBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_RESPONSE"

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->mAppKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->reqPackageName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/WeiboShareAPIImpl;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_c
.end method
