.class Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "ApiGetLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
        "<",
        "Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiGetLocation;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v9, "appKey"

    sget-object v10, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->GEO_APPKEY:Ljava/lang/String;

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    invoke-virtual {v9}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v8

    if-eqz v8, :cond_49

    iget-object v9, v8, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_49

    iget-object v9, v8, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_49

    const-string/jumbo v9, "uid"

    iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "userToken"

    iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    iget-object v9, p0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    invoke-virtual {v9}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/pinguo/cloudshare/support/ToolUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_63

    const-string/jumbo v9, "deviceId"

    invoke-static {v1}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_75

    const-string/jumbo v9, "device"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8d

    const-string/jumbo v9, "locale"

    invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    const-string/jumbo v9, "platform"

    const-string/jumbo v10, "android"

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "channel"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f080084

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c3

    const-string/jumbo v9, "appversion"

    invoke-static {v0}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    const-string/jumbo v9, "appname"

    const-string/jumbo v10, "camera360"

    invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCachedGeoLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f7

    const-string/jumbo v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ed

    array-length v9, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ed

    :cond_ed
    const-string/jumbo v9, "geoinfo"

    invoke-static {v3}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f7
    sget-object v9, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->GEO_APPSECRET:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "sig"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onResponse(Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;->onResponse(Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;)V

    return-void
.end method
