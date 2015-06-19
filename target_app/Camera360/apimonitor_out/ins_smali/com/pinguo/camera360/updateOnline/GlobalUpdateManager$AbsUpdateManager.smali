.class public abstract Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
.super Ljava/lang/Object;
.source "GlobalUpdateManager.java"
.field protected static final FAIL:I = 0x4
.field protected static final NO_UPDATE:I = 0x2
.field protected static final SHOW:I = 0x1
.field private mHandler:Landroid/os/Handler;
.field private mUpdateInterface:Lcom/pinguo/camera360/updateOnline/UpdateInterface;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;-><init>(Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->mHandler:Landroid/os/Handler;
return-void
.end method
.method protected getServiceInfo()Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
.registers 11
const v8, 0xea60
new-instance v5, Lcom/pinguo/camera360/push/utils/PushPreference;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v7
invoke-direct {v5, v7}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v7
invoke-static {v7, v5}, Lcom/pinguo/camera360/push/utils/PushParam;->getUpdateParam(Landroid/content/Context;Lcom/pinguo/camera360/push/utils/PushPreference;)Ljava/util/Map;
move-result-object v4
const-string/jumbo v7, "http://update.camera360.com/VersionCheck/VersionCheck.aspx"
invoke-static {v7, v4}, Lcom/pinguo/camera360/push/utils/PushUtils;->getPushUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, v8, v8}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->get(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v2
new-instance v6, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
invoke-direct {v6}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;-><init>()V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "ok"
const-string/jumbo v8, "Msg"
invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->setUpdate(Z)V
invoke-virtual {v6}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->isUpdate()Z
move-result v7
if-eqz v7, :cond_87
const-string/jumbo v7, "Feature"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->setTitle(Ljava/lang/String;)V
const-string/jumbo v7, "BugFix"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->setContext(Ljava/lang/String;)V
const-string/jumbo v7, "url"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->setPath(Ljava/lang/String;)V
const-string/jumbo v7, "VersionName"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->setNewVersionName(Ljava/lang/String;)V
const-string/jumbo v7, "VersionCode"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->setNewVersionCode(Ljava/lang/String;)V
:try_start_78
invoke-virtual {v6}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->getNewVersionCode()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCheckUpdateNewVersionCode(I)V
:goto_87
:try_end_87
.catch Ljava/lang/Exception; {:try_start_78 .. :try_end_87} :catch_88
:cond_87
return-object v6
:catch_88
move-exception v7
goto :goto_87
.end method
.method protected getUpdateInterface()Lcom/pinguo/camera360/updateOnline/UpdateInterface;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->mUpdateInterface:Lcom/pinguo/camera360/updateOnline/UpdateInterface;
return-object v0
.end method
.method abstract manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
.end method
.method protected sendMessage(Ljava/lang/Object;I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->mHandler:Landroid/os/Handler;
invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
move-result-object v0
iput p2, v0, Landroid/os/Message;->what:I
if-eqz p1, :cond_c
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
:cond_c
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method protected setUpdateInterface(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->mUpdateInterface:Lcom/pinguo/camera360/updateOnline/UpdateInterface;
return-void
.end method