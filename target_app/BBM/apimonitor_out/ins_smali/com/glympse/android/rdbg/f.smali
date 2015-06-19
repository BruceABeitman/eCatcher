.class  Lcom/glympse/android/rdbg/f;
.super Ljava/lang/Object;
.source "RDbgGatewayDevice.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static j(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
.registers 5
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v1
const/4 v2, 0x2
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
const-string v3, "device_id"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getDeviceId()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v3, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "device_name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/glympse/android/hal/Platform;->getDeviceName()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "device_model"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/glympse/android/hal/Platform;->getDeviceModel()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "app_id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/hal/Platform;->getAppId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "app_name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/hal/Platform;->getAppName(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "app_version"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Platform;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getApiKey()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Platform;->sha1(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "api_key"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
const-string v1, "user_nickname"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-object v2
.end method