.class public Lcom/tencent/open/LocationApi;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"
.implements Lcom/tencent/open/d$a;
.field private a:Landroid/os/HandlerThread;
.field private b:Landroid/os/Handler;
.field private c:Landroid/os/Handler;
.field private d:Lcom/tencent/open/d;
.field private e:Landroid/os/Bundle;
.field private f:Lcom/tencent/tauth/IUiListener;
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
invoke-direct {p0}, Lcom/tencent/open/LocationApi;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
invoke-direct {p0}, Lcom/tencent/open/LocationApi;->a()V
return-void
.end method
.method static synthetic a(Lcom/tencent/open/LocationApi;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/tencent/open/LocationApi;->mContext:Landroid/content/Context;
return-object v0
.end method
.method private a()V
.registers 3
new-instance v0, Lcom/tencent/open/d;
invoke-direct {v0}, Lcom/tencent/open/d;-><init>()V
iput-object v0, p0, Lcom/tencent/open/LocationApi;->d:Lcom/tencent/open/d;
new-instance v0, Landroid/os/HandlerThread;
const-string/jumbo v1, "get_location"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/tencent/open/LocationApi;->a:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/tencent/open/LocationApi;->a:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Landroid/os/Handler;
iget-object v1, p0, Lcom/tencent/open/LocationApi;->a:Landroid/os/HandlerThread;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/tencent/open/LocationApi;->b:Landroid/os/Handler;
new-instance v0, Lcom/tencent/open/LocationApi$3;
iget-object v1, p0, Lcom/tencent/open/LocationApi;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/tencent/open/LocationApi$3;-><init>(Lcom/tencent/open/LocationApi;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/tencent/open/LocationApi;->c:Landroid/os/Handler;
return-void
.end method
.method private a(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/tencent/open/LocationApi;->d:Lcom/tencent/open/d;
invoke-virtual {v0}, Lcom/tencent/open/d;->b()V
iget-object v0, p0, Lcom/tencent/open/LocationApi;->f:Lcom/tencent/tauth/IUiListener;
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_f
const-string/jumbo v0, "ret"
invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v0, "errMsg"
invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_1b
.catch Lorg/json/JSONException; {:try_start_f .. :try_end_1b} :catch_21
:goto_1b
iget-object v0, p0, Lcom/tencent/open/LocationApi;->f:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
goto :goto_9
:catch_21
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_1b
.end method
.method private a(Landroid/location/Location;)V
.registers 8
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "location: search mParams: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/LocationApi;->e:Landroid/os/Bundle;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/LocationApi;->e:Landroid/os/Bundle;
if-eqz v0, :cond_ea
new-instance v3, Landroid/os/Bundle;
iget-object v0, p0, Lcom/tencent/open/LocationApi;->e:Landroid/os/Bundle;
invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/tencent/open/LocationApi;->composeCGIParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:goto_2e
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v0
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "appid"
iget-object v4, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "latitude"
invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_59
const-string/jumbo v2, "latitude"
invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_59
const-string/jumbo v0, "longitude"
invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_68
const-string/jumbo v0, "longitude"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_68
const-string/jumbo v0, "page"
invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7c
const-string/jumbo v0, "page"
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_7c
const-string/jumbo v0, "tencent&sdk&qazxc***14969%%"
const-string/jumbo v1, "qzone3.4"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "encrytoken"
invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "location: search params: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/tencent/open/LocationApi$a;
iget-object v0, p0, Lcom/tencent/open/LocationApi;->f:Lcom/tencent/tauth/IUiListener;
invoke-direct {v5, p0, v0}, Lcom/tencent/open/LocationApi$a;-><init>(Lcom/tencent/open/LocationApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/open/LocationApi;->mContext:Landroid/content/Context;
const-string/jumbo v2, "http://fusion.qq.com/cgi-bin/qzapps/mapp_lbs_getnear.cgi"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
:cond_ea
invoke-virtual {p0}, Lcom/tencent/open/LocationApi;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
goto/16 :goto_2e
.end method
.method static synthetic a(Lcom/tencent/open/LocationApi;ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/open/LocationApi;->a(ILjava/lang/String;)V
return-void
.end method
.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/tencent/open/LocationApi;->b:Landroid/os/Handler;
new-instance v1, Lcom/tencent/open/LocationApi$1;
invoke-direct {v1, p0, p2, p1}, Lcom/tencent/open/LocationApi$1;-><init>(Lcom/tencent/open/LocationApi;[Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic b(Lcom/tencent/open/LocationApi;)Lcom/tencent/open/d;
.registers 2
iget-object v0, p0, Lcom/tencent/open/LocationApi;->d:Lcom/tencent/open/d;
return-object v0
.end method
.method private b()V
.registers 2
iget-object v0, p0, Lcom/tencent/open/LocationApi;->d:Lcom/tencent/open/d;
invoke-virtual {v0}, Lcom/tencent/open/d;->b()V
return-void
.end method
.method static synthetic c(Lcom/tencent/open/LocationApi;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/tencent/open/LocationApi;->c:Landroid/os/Handler;
return-object v0
.end method
.method private c()Z
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/tencent/open/LocationApi;->mContext:Landroid/content/Context;
const-string/jumbo v2, "connectivity"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-eqz v0, :cond_1e
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v0
if-nez v0, :cond_1c
:cond_1a
move v0, v1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x1
goto :goto_1b
:cond_1e
move v0, v1
goto :goto_1b
.end method
.method static synthetic d(Lcom/tencent/open/LocationApi;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/tencent/open/LocationApi;->mContext:Landroid/content/Context;
return-object v0
.end method
.method private d()Lorg/json/JSONObject;
.registers 4
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string/jumbo v0, "ret"
const/16 v2, -0x9
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v0, "errMsg"
const-string/jumbo v2, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5!"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_16
:try_end_16
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_16} :catch_17
return-object v1
:catch_17
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_16
.end method
.method static synthetic e(Lcom/tencent/open/LocationApi;)Lcom/tencent/connect/auth/QQToken;
.registers 2
iget-object v0, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
return-object v0
.end method
.method public deleteLocation(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 10
invoke-direct {p0}, Lcom/tencent/open/LocationApi;->c()Z
move-result v0
if-nez v0, :cond_10
if-eqz p3, :cond_f
invoke-direct {p0}, Lcom/tencent/open/LocationApi;->d()Lorg/json/JSONObject;
move-result-object v0
invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:goto_f
:cond_f
return-void
:cond_10
if-eqz p2, :cond_b4
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/tencent/open/LocationApi;->composeCGIParams()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:goto_1e
const-string/jumbo v0, "appid"
iget-object v1, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "timestamp"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "tencent&sdk&qazxc***14969%%"
const-string/jumbo v1, "qzone3.4"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "encrytoken"
invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "location: delete params: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/tencent/open/LocationApi$a;
invoke-direct {v5, p0, p3}, Lcom/tencent/open/LocationApi$a;-><init>(Lcom/tencent/open/LocationApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/open/LocationApi;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/open/LocationApi;->mContext:Landroid/content/Context;
const-string/jumbo v2, "http://fusion.qq.com/cgi-bin/qzapps/mapp_lbs_delete.cgi"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
const-string/jumbo v0, "delete_location"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string/jumbo v3, "success"
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/tencent/open/LocationApi;->a(Ljava/lang/String;[Ljava/lang/String;)V
goto/16 :goto_f
:cond_b4
invoke-virtual {p0}, Lcom/tencent/open/LocationApi;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
goto/16 :goto_1e
.end method
.method public onLocationUpdate(Landroid/location/Location;)V
.registers 4
invoke-direct {p0, p1}, Lcom/tencent/open/LocationApi;->a(Landroid/location/Location;)V
invoke-direct {p0}, Lcom/tencent/open/LocationApi;->b()V
iget-object v0, p0, Lcom/tencent/open/LocationApi;->c:Landroid/os/Handler;
const/16 v1, 0x65
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.method public searchNearby(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.registers 6
invoke-direct {p0}, Lcom/tencent/open/LocationApi;->c()Z
move-result v0
if-nez v0, :cond_10
if-eqz p3, :cond_f
invoke-direct {p0}, Lcom/tencent/open/LocationApi;->d()Lorg/json/JSONObject;
move-result-object v0
invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:goto_f
:cond_f
return-void
:cond_10
iput-object p2, p0, Lcom/tencent/open/LocationApi;->e:Landroid/os/Bundle;
iput-object p3, p0, Lcom/tencent/open/LocationApi;->f:Lcom/tencent/tauth/IUiListener;
iget-object v0, p0, Lcom/tencent/open/LocationApi;->b:Landroid/os/Handler;
new-instance v1, Lcom/tencent/open/LocationApi$2;
invoke-direct {v1, p0}, Lcom/tencent/open/LocationApi$2;-><init>(Lcom/tencent/open/LocationApi;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_f
.end method