.class public Lcom/tencent/stat/StatMid;
.super Ljava/lang/Object;
.field private static a:Lcom/tencent/stat/common/StatLogger;
.field private static b:Lcom/tencent/stat/DeviceInfo;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
const/4 v0, 0x0
sput-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
.registers 8
const-class v1, Lcom/tencent/stat/StatMid;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/tencent/stat/a;->a(Landroid/content/Context;)Lcom/tencent/stat/a;
move-result-object v0
const-string/jumbo v2, "__MTA_DEVICE_INFO__"
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Lcom/tencent/stat/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/tencent/stat/StatMid;->a(Ljava/lang/String;)Lcom/tencent/stat/DeviceInfo;
move-result-object v2
sget-object v3, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "get device info from internal storage:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
const-string/jumbo v3, "__MTA_DEVICE_INFO__"
const/4 v4, 0x0
invoke-virtual {v0, v3, v4}, Lcom/tencent/stat/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/tencent/stat/StatMid;->a(Ljava/lang/String;)Lcom/tencent/stat/DeviceInfo;
move-result-object v3
sget-object v4, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "get device info from setting.system:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
const-string/jumbo v4, "__MTA_DEVICE_INFO__"
const/4 v5, 0x0
invoke-virtual {v0, v4, v5}, Lcom/tencent/stat/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/stat/StatMid;->a(Ljava/lang/String;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
sget-object v4, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "get device info from SharedPreference:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
invoke-static {v0, v3, v2}, Lcom/tencent/stat/StatMid;->a(Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
if-nez v0, :cond_87
new-instance v0, Lcom/tencent/stat/DeviceInfo;
invoke-direct {v0}, Lcom/tencent/stat/DeviceInfo;-><init>()V
sput-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
:cond_87
invoke-static {p0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/tencent/stat/n;->b(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
if-eqz v0, :cond_ac
sget-object v2, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-virtual {v0}, Lcom/tencent/stat/DeviceInfo;->getImei()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/tencent/stat/DeviceInfo;->d(Ljava/lang/String;)V
sget-object v2, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-virtual {v0}, Lcom/tencent/stat/DeviceInfo;->getMac()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/tencent/stat/DeviceInfo;->e(Ljava/lang/String;)V
sget-object v2, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-virtual {v0}, Lcom/tencent/stat/DeviceInfo;->getUserType()I
move-result v0
invoke-virtual {v2, v0}, Lcom/tencent/stat/DeviceInfo;->b(I)V
:cond_ac
:try_start_ac
:try_end_ac
.catchall {:try_start_3 .. :try_end_ac} :catchall_b7
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_ac} :catch_b0
:goto_ac
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
:try_end_ae
.catchall {:try_start_ac .. :try_end_ae} :catchall_b7
monitor-exit v1
return-object v0
:catch_b0
move-exception v0
:try_start_b1
sget-object v2, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_b6
.catchall {:try_start_b1 .. :try_end_b6} :catchall_b7
goto :goto_ac
:catchall_b7
move-exception v0
monitor-exit v1
throw v0
.end method
.method static a(Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;)Lcom/tencent/stat/DeviceInfo;
.registers 3
if-eqz p0, :cond_d
if-eqz p1, :cond_d
invoke-virtual {p0, p1}, Lcom/tencent/stat/DeviceInfo;->a(Lcom/tencent/stat/DeviceInfo;)I
move-result v0
if-ltz v0, :cond_b
:cond_a
:goto_a
return-object p0
:cond_b
move-object p0, p1
goto :goto_a
:cond_d
if-nez p0, :cond_a
if-eqz p1, :cond_13
move-object p0, p1
goto :goto_a
:cond_13
const/4 p0, 0x0
goto :goto_a
.end method
.method static a(Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;)Lcom/tencent/stat/DeviceInfo;
.registers 5
invoke-static {p0, p1}, Lcom/tencent/stat/StatMid;->a(Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
invoke-static {p1, p2}, Lcom/tencent/stat/StatMid;->a(Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;)Lcom/tencent/stat/DeviceInfo;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/stat/StatMid;->a(Lcom/tencent/stat/DeviceInfo;Lcom/tencent/stat/DeviceInfo;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/lang/String;)Lcom/tencent/stat/DeviceInfo;
.registers 2
if-eqz p0, :cond_b
invoke-static {p0}, Lcom/tencent/stat/common/k;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/stat/DeviceInfo;->a(Ljava/lang/String;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public static getDeviceInfo(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
.registers 3
if-nez p0, :cond_c
sget-object v0, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Context for StatConfig.getDeviceInfo is null."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
if-nez v0, :cond_13
invoke-static {p0}, Lcom/tencent/stat/StatMid;->a(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
:cond_13
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
goto :goto_b
.end method
.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
.registers 2
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
if-nez v0, :cond_7
invoke-static {p0}, Lcom/tencent/stat/StatMid;->getDeviceInfo(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
:cond_7
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-virtual {v0}, Lcom/tencent/stat/DeviceInfo;->getMid()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static updateDeviceInfo(Landroid/content/Context;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {p0}, Lcom/tencent/stat/StatMid;->getDeviceInfo(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-virtual {v0, p1}, Lcom/tencent/stat/DeviceInfo;->c(Ljava/lang/String;)V
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
sget-object v1, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-virtual {v1}, Lcom/tencent/stat/DeviceInfo;->a()I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Lcom/tencent/stat/DeviceInfo;->a(I)V
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/tencent/stat/DeviceInfo;->a(J)V
sget-object v0, Lcom/tencent/stat/StatMid;->b:Lcom/tencent/stat/DeviceInfo;
invoke-virtual {v0}, Lcom/tencent/stat/DeviceInfo;->c()Lorg/json/JSONObject;
move-result-object v0
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "save DeviceInfo:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
invoke-static {v0}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "\n"
const-string/jumbo v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Lcom/tencent/stat/a;->a(Landroid/content/Context;)Lcom/tencent/stat/a;
move-result-object v1
const-string/jumbo v2, "__MTA_DEVICE_INFO__"
invoke-virtual {v1, v2, v0}, Lcom/tencent/stat/a;->c(Ljava/lang/String;Ljava/lang/String;)Z
const-string/jumbo v2, "__MTA_DEVICE_INFO__"
invoke-virtual {v1, v2, v0}, Lcom/tencent/stat/a;->e(Ljava/lang/String;Ljava/lang/String;)Z
const-string/jumbo v2, "__MTA_DEVICE_INFO__"
invoke-virtual {v1, v2, v0}, Lcom/tencent/stat/a;->a(Ljava/lang/String;Ljava/lang/String;)Z
:goto_65
:try_end_65
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_65} :catch_66
return-void
:catch_66
move-exception v0
sget-object v1, Lcom/tencent/stat/StatMid;->a:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_65
.end method