.class public Lcom/tencent/stat/StatService;
.super Ljava/lang/Object;
.field private static a:Landroid/os/Handler;
.field private static volatile b:Ljava/util/Map;
.field private static volatile c:J
.field private static volatile d:J
.field private static volatile e:I
.field private static volatile f:Ljava/lang/String;
.field private static volatile g:Ljava/lang/String;
.field private static h:Ljava/util/Map;
.field private static i:Lcom/tencent/stat/common/StatLogger;
.field private static j:Ljava/lang/Thread$UncaughtExceptionHandler;
.field private static volatile k:Z
.method static constructor <clinit>()V
.registers 3
const-wide/16 v1, 0x0
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
sput-wide v1, Lcom/tencent/stat/StatService;->c:J
sput-wide v1, Lcom/tencent/stat/StatService;->d:J
const/4 v0, 0x0
sput v0, Lcom/tencent/stat/StatService;->e:I
const-string/jumbo v0, ""
sput-object v0, Lcom/tencent/stat/StatService;->f:Ljava/lang/String;
const-string/jumbo v0, ""
sput-object v0, Lcom/tencent/stat/StatService;->g:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const/4 v0, 0x0
sput-object v0, Lcom/tencent/stat/StatService;->j:Ljava/lang/Thread$UncaughtExceptionHandler;
const/4 v0, 0x1
sput-boolean v0, Lcom/tencent/stat/StatService;->k:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Landroid/content/Context;Z)I
.registers 11
const/4 v2, 0x0
const/4 v1, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
if-eqz p1, :cond_85
sget-wide v5, Lcom/tencent/stat/StatService;->c:J
sub-long v5, v3, v5
invoke-static {}, Lcom/tencent/stat/StatConfig;->getSessionTimoutMillis()I
move-result v0
int-to-long v7, v0
cmp-long v0, v5, v7
if-ltz v0, :cond_85
move v0, v1
:goto_16
sput-wide v3, Lcom/tencent/stat/StatService;->c:J
sget-wide v5, Lcom/tencent/stat/StatService;->d:J
const-wide/16 v7, 0x0
cmp-long v5, v5, v7
if-nez v5, :cond_26
invoke-static {}, Lcom/tencent/stat/common/k;->c()J
move-result-wide v5
sput-wide v5, Lcom/tencent/stat/StatService;->d:J
:cond_26
sget-wide v5, Lcom/tencent/stat/StatService;->d:J
cmp-long v3, v3, v5
if-ltz v3, :cond_52
invoke-static {}, Lcom/tencent/stat/common/k;->c()J
move-result-wide v3
sput-wide v3, Lcom/tencent/stat/StatService;->d:J
invoke-static {p0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/tencent/stat/n;->b(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/stat/DeviceInfo;->getUserType()I
move-result v0
if-eq v0, v1, :cond_4b
invoke-static {p0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/tencent/stat/n;->b(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/tencent/stat/DeviceInfo;->b(I)V
:cond_4b
invoke-static {v2}, Lcom/tencent/stat/StatConfig;->b(I)V
invoke-static {p0}, Lcom/tencent/stat/StatMid;->a(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
move v0, v1
:cond_52
sget-boolean v3, Lcom/tencent/stat/StatService;->k:Z
if-eqz v3, :cond_83
:goto_56
if-eqz v1, :cond_68
invoke-static {}, Lcom/tencent/stat/StatConfig;->e()I
move-result v0
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxDaySessionNumbers()I
move-result v1
if-ge v0, v1, :cond_7a
invoke-static {p0}, Lcom/tencent/stat/common/k;->F(Landroid/content/Context;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->d(Landroid/content/Context;)V
:cond_68
:goto_68
sget-boolean v0, Lcom/tencent/stat/StatService;->k:Z
if-eqz v0, :cond_77
invoke-static {p0}, Lcom/tencent/stat/common/f;->b(Landroid/content/Context;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->testSpeed(Landroid/content/Context;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->e(Landroid/content/Context;)V
sput-boolean v2, Lcom/tencent/stat/StatService;->k:Z
:cond_77
sget v0, Lcom/tencent/stat/StatService;->e:I
return v0
:cond_7a
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Exceed StatConfig.getMaxDaySessionNumbers()."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_68
:cond_83
move v1, v0
goto :goto_56
:cond_85
move v0, v2
goto :goto_16
.end method
.method static a()Lorg/json/JSONObject;
.registers 4
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
sget-object v2, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget v2, v2, Lcom/tencent/stat/b;->d:I
if-eqz v2, :cond_1a
const-string/jumbo v2, "v"
sget-object v3, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget v3, v3, Lcom/tencent/stat/b;->d:I
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_1a
sget-object v2, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget v2, v2, Lcom/tencent/stat/b;->a:I
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
sget-object v2, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
iget v2, v2, Lcom/tencent/stat/b;->d:I
if-eqz v2, :cond_3a
const-string/jumbo v2, "v"
sget-object v3, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
iget v3, v3, Lcom/tencent/stat/b;->d:I
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_3a
sget-object v2, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
iget v2, v2, Lcom/tencent/stat/b;->a:I
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_45
:try_end_45
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_45} :catch_46
return-object v1
:catch_46
move-exception v0
sget-object v2, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
goto :goto_45
.end method
.method static declared-synchronized a(Landroid/content/Context;)V
.registers 4
const-class v1, Lcom/tencent/stat/StatService;
monitor-enter v1
if-nez p0, :cond_7
:goto_5
:cond_5
monitor-exit v1
return-void
:try_start_7
:cond_7
sget-object v0, Lcom/tencent/stat/StatService;->a:Landroid/os/Handler;
if-nez v0, :cond_5
invoke-static {p0}, Lcom/tencent/stat/StatService;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_5
invoke-static {p0}, Lcom/tencent/stat/common/f;->a(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_2f
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "ooh, Compatibility problem was found in this device!"
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "If you are on debug mode, please delete apk and try again."
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
const/4 v0, 0x0
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V
:try_end_2b
.catchall {:try_start_7 .. :try_end_2b} :catchall_2c
goto :goto_5
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
:try_start_2f
:cond_2f
new-instance v0, Landroid/os/HandlerThread;
const-string/jumbo v2, "StatService"
invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v2, Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
sput-object v2, Lcom/tencent/stat/StatService;->a:Landroid/os/Handler;
invoke-static {p0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
invoke-static {p0}, Lcom/tencent/stat/d;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/tencent/stat/d;->b()Lcom/tencent/stat/d;
invoke-static {p0}, Lcom/tencent/stat/StatConfig;->getDeviceInfo(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatService;->j:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-static {}, Lcom/tencent/stat/StatConfig;->isAutoExceptionCaught()Z
move-result v0
if-eqz v0, :cond_89
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
new-instance v2, Lcom/tencent/stat/g;
invoke-direct {v2, v0}, Lcom/tencent/stat/g;-><init>(Landroid/content/Context;)V
invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
:goto_69
invoke-static {}, Lcom/tencent/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/stat/StatReportStrategy;
move-result-object v0
sget-object v2, Lcom/tencent/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/stat/StatReportStrategy;
if-ne v0, v2, :cond_7f
invoke-static {p0}, Lcom/tencent/stat/common/k;->h(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_7f
invoke-static {p0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
move-result-object v0
const/4 v2, -0x1
invoke-virtual {v0, v2}, Lcom/tencent/stat/n;->a(I)V
:cond_7f
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "Init MTA StatService success."
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
goto/16 :goto_5
:cond_89
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "MTA SDK AutoExceptionCaught is disable"
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
:try_end_91
.catchall {:try_start_2f .. :try_end_91} :catchall_2c
goto :goto_69
.end method
.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
.registers 6
:try_start_0
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:cond_6
:goto_6
return-void
:cond_7
if-nez p0, :cond_2d
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.reportSdkSelfException() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:try_end_11
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12
goto :goto_6
:catch_12
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "reportSdkSelfException error: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_6
:try_start_2d
:cond_2d
new-instance v0, Lcom/tencent/stat/a/d;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
const/16 v2, 0x63
invoke-direct {v0, p0, v1, v2, p1}, Lcom/tencent/stat/a/d;-><init>(Landroid/content/Context;IILjava/lang/Throwable;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_4b
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_4b} :catch_12
goto :goto_6
.end method
.method static a(Landroid/content/Context;Ljava/util/Map;)V
.registers 5
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.sendAdditionEvent() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
:try_start_12
new-instance v0, Lcom/tencent/stat/a/a;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
invoke-direct {v0, p0, v1, p1}, Lcom/tencent/stat/a/a;-><init>(Landroid/content/Context;ILjava/util/Map;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_2e
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2e} :catch_2f
goto :goto_6
:catch_2f
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method static a(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method static synthetic b()Lcom/tencent/stat/common/StatLogger;
.registers 1
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
return-object v0
.end method
.method static b(Landroid/content/Context;)Z
.registers 6
const/4 v0, 0x0
sget-object v1, Lcom/tencent/stat/StatConfig;->c:Ljava/lang/String;
const-wide/16 v2, 0x0
invoke-static {p0, v1, v2, v3}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;J)J
move-result-wide v1
const-string/jumbo v3, "1.6.2"
invoke-static {v3}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J
move-result-wide v3
cmp-long v1, v3, v1
if-gtz v1, :cond_18
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V
:goto_17
return v0
:cond_18
const/4 v0, 0x1
goto :goto_17
.end method
.method static c(Landroid/content/Context;)Landroid/os/Handler;
.registers 2
sget-object v0, Lcom/tencent/stat/StatService;->a:Landroid/os/Handler;
if-nez v0, :cond_7
invoke-static {p0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;)V
:cond_7
sget-object v0, Lcom/tencent/stat/StatService;->a:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic c()Ljava/lang/Thread$UncaughtExceptionHandler;
.registers 1
sget-object v0, Lcom/tencent/stat/StatService;->j:Ljava/lang/Thread$UncaughtExceptionHandler;
return-object v0
.end method
.method public static commitEvents(Landroid/content/Context;I)V
.registers 4
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.commitEvents() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
const/4 v0, -0x1
if-lt p1, v0, :cond_17
if-nez p1, :cond_20
:cond_17
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:try_start_20
:cond_20
invoke-static {p0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/tencent/stat/n;->a(I)V
:try_end_27
.catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_27} :catch_28
goto :goto_6
:catch_28
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method static d(Landroid/content/Context;)V
.registers 6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_32
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "start new session."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
invoke-static {}, Lcom/tencent/stat/common/k;->a()I
move-result v0
sput v0, Lcom/tencent/stat/StatService;->e:I
const/4 v0, 0x0
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->a(I)V
invoke-static {}, Lcom/tencent/stat/StatConfig;->d()V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/tencent/stat/k;
new-instance v2, Lcom/tencent/stat/a/k;
sget v3, Lcom/tencent/stat/StatService;->e:I
invoke-static {}, Lcom/tencent/stat/StatService;->a()Lorg/json/JSONObject;
move-result-object v4
invoke-direct {v2, p0, v3, v4}, Lcom/tencent/stat/a/k;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V
invoke-direct {v1, v2}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_32
return-void
.end method
.method static e(Landroid/content/Context;)V
.registers 3
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.reportNativeCrash() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
:try_start_12
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/tencent/stat/i;
invoke-direct {v1, p0}, Lcom/tencent/stat/i;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_24
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_24} :catch_25
goto :goto_6
:catch_25
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static onPause(Landroid/content/Context;)V
.registers 4
const-string v1, " + Lcom/tencent/stat/StatService; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
const-string v1, " - Lcom/tencent/stat/StatService; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.onPause() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p0}, Lcom/tencent/stat/common/k;->k(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->trackEndPage(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_6
.end method
.method public static onResume(Landroid/content/Context;)V
.registers 4
const-string v1, " + Lcom/tencent/stat/StatService; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
const-string v1, " - Lcom/tencent/stat/StatService; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.onResume() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p0}, Lcom/tencent/stat/common/k;->k(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->trackBeginPage(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_6
.end method
.method public static reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/stat/StatAppMonitor;)V
.registers 5
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.reportAppMonitorStat() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
if-nez p1, :cond_1d
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_1d
invoke-virtual {p1}, Lcom/tencent/stat/StatAppMonitor;->getInterfaceName()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_2c
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:try_start_2c
:cond_2c
new-instance v0, Lcom/tencent/stat/a/h;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
invoke-direct {v0, p0, v1, p1}, Lcom/tencent/stat/a/h;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatAppMonitor;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_48
.catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_48} :catch_49
goto :goto_6
:catch_49
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
.registers 8
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.reportError() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p1}, Lcom/tencent/stat/StatService;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Error message in StatService.reportError() is empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_21
:try_start_21
new-instance v0, Lcom/tencent/stat/a/d;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v2
const/4 v4, 0x0
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxReportEventLength()I
move-result v5
move-object v1, p0
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/tencent/stat/a/d;-><init>(Landroid/content/Context;ILjava/lang/String;II)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_44
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_44} :catch_45
goto :goto_6
:catch_45
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static reportException(Landroid/content/Context;Ljava/lang/Throwable;)V
.registers 5
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.reportException() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
if-nez p1, :cond_1d
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Throwable error message of StatService.reportException() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_1d
new-instance v0, Lcom/tencent/stat/a/d;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
const/4 v2, 0x1
invoke-direct {v0, p0, v1, v2, p1}, Lcom/tencent/stat/a/d;-><init>(Landroid/content/Context;IILjava/lang/Throwable;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_6
.end method
.method public static reportGameUser(Landroid/content/Context;Lcom/tencent/stat/StatGameUser;)V
.registers 5
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.reportGameUser() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
if-nez p1, :cond_1d
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The gameUser of StatService.reportGameUser() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_1d
invoke-virtual {p1}, Lcom/tencent/stat/StatGameUser;->getAccount()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2d
invoke-virtual {p1}, Lcom/tencent/stat/StatGameUser;->getAccount()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_36
:cond_2d
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The account of gameUser on StatService.reportGameUser() can not be null or empty!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_36
:try_start_36
new-instance v0, Lcom/tencent/stat/a/g;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
invoke-direct {v0, p0, v1, p1}, Lcom/tencent/stat/a/g;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatGameUser;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_52
.catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_52} :catch_53
goto :goto_6
:catch_53
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static reportQQ(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_5
const-string/jumbo p1, ""
:cond_5
sget-object v0, Lcom/tencent/stat/StatConfig;->d:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/tencent/stat/StatConfig;->d:Ljava/lang/String;
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/util/Map;)V
:cond_18
return-void
.end method
.method public static setEnvAttributes(Landroid/content/Context;Ljava/util/Map;)V
.registers 4
if-eqz p1, :cond_a
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v0
const/16 v1, 0x200
if-le v0, v1, :cond_13
:cond_a
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The map in setEnvAttributes can\'t be null or its size can\'t exceed 512."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_12
return-void
:cond_13
:try_start_13
invoke-static {p0, p1}, Lcom/tencent/stat/common/a;->a(Landroid/content/Context;Ljava/util/Map;)V
:try_end_16
.catch Lorg/json/JSONException; {:try_start_13 .. :try_end_16} :catch_17
goto :goto_12
:catch_17
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
goto :goto_12
.end method
.method public static startNewSession(Landroid/content/Context;)V
.registers 3
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.startNewSession() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
:try_start_12
invoke-static {}, Lcom/tencent/stat/StatService;->stopSession()V
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
:try_end_19
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_1a
goto :goto_6
:catch_1a
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.registers 9
const/4 v0, 0x0
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v1
if-nez v1, :cond_10
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "MTA StatService is disable."
invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_f
return v0
:cond_10
const-string/jumbo v1, "1.6.2"
sget-object v2, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "MTA SDK version, current: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " ,required: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
const-string/jumbo v2, ""
if-eqz p0, :cond_3e
if-nez p2, :cond_4f
:cond_3e
const-string/jumbo v1, "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!"
sget-object v2, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V
new-instance v0, Lcom/tencent/stat/MtaSDkException;
invoke-direct {v0, v1}, Lcom/tencent/stat/MtaSDkException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4f
invoke-static {v1}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J
move-result-wide v2
invoke-static {p2}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J
move-result-wide v4
cmp-long v2, v2, v4
if-gez v2, :cond_9c
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "MTA SDK version conflicted, current: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ",required: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V
new-instance v0, Lcom/tencent/stat/MtaSDkException;
invoke-direct {v0, v1}, Lcom/tencent/stat/MtaSDkException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_9c
:cond_9c
invoke-static {p0}, Lcom/tencent/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_a8
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_ae
:cond_a8
const-string/jumbo v1, "-"
invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setInstallChannel(Ljava/lang/String;)V
:cond_ae
if-eqz p1, :cond_b3
invoke-static {p0, p1}, Lcom/tencent/stat/StatConfig;->setAppKey(Landroid/content/Context;Ljava/lang/String;)V
:cond_b3
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
:try_end_ba
.catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_ba} :catch_bd
const/4 v0, 0x1
goto/16 :goto_f
:catch_bd
move-exception v1
sget-object v2, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto/16 :goto_f
.end method
.method public static stopSession()V
.registers 2
const-wide/16 v0, 0x0
sput-wide v0, Lcom/tencent/stat/StatService;->c:J
return-void
.end method
.method public static testSpeed(Landroid/content/Context;)V
.registers 4
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.testSpeed() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
:try_start_12
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/tencent/stat/j;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/tencent/stat/j;-><init>(Landroid/content/Context;Ljava/util/Map;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_25
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_25} :catch_26
goto :goto_6
:catch_26
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static testSpeed(Landroid/content/Context;Ljava/util/Map;)V
.registers 4
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.testSpeed() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
if-eqz p1, :cond_1a
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_23
:cond_1a
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The domainMap of StatService.testSpeed() can not be null or empty!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_23
:try_start_23
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/tencent/stat/j;
invoke-direct {v1, p0, p1}, Lcom/tencent/stat/j;-><init>(Landroid/content/Context;Ljava/util/Map;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_35
.catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_35} :catch_36
goto :goto_6
:catch_36
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static trackBeginPage(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
if-eqz p0, :cond_11
if-eqz p1, :cond_11
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1a
:cond_11
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context or pageName of StatService.trackBeginPage() can not be null or empty!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:try_start_1a
:cond_1a
sget-object v1, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;
monitor-enter v1
:try_start_1d
:try_end_1d
.catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_4f
sget-object v0, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxParallelTimmingEvents()I
move-result v2
if-lt v0, v2, :cond_59
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "The number of page events exceeds the maximum value "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxParallelTimmingEvents()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
monitor-exit v1
goto :goto_6
:catchall_4c
move-exception v0
monitor-exit v1
:try_end_4e
.catchall {:try_start_1d .. :try_end_4e} :catchall_4c
:try_start_4e
throw v0
:try_end_4f
.catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4f} :catch_4f
:catch_4f
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
:try_start_59
:cond_59
sput-object p1, Lcom/tencent/stat/StatService;->f:Ljava/lang/String;
sget-object v0, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;
sget-object v2, Lcom/tencent/stat/StatService;->f:Ljava/lang/String;
invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8a
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Duplicate PageID : "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/tencent/stat/StatService;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", onResume() repeated?"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
monitor-exit v1
goto/16 :goto_6
:cond_8a
sget-object v0, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;
sget-object v2, Lcom/tencent/stat/StatService;->f:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_9a
.catchall {:try_start_59 .. :try_end_9a} :catchall_4c
const/4 v0, 0x1
:try_start_9b
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
:try_end_9e
.catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9e} :catch_4f
goto/16 :goto_6
.end method
.method public static varargs trackCustomBeginEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.registers 7
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.trackCustomBeginEvent() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p1}, Lcom/tencent/stat/StatService;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The event_id of StatService.trackCustomBeginEvent() can not be null or empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_21
:try_start_21
new-instance v0, Lcom/tencent/stat/a/c;
const/4 v1, 0x0
invoke-direct {v0, p1, p2, v1}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V
sget-object v1, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5e
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Duplicate CustomEvent key: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/tencent/stat/a/c;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ", trackCustomBeginEvent() repeated?"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:try_end_53
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_53} :catch_54
goto :goto_6
:catch_54
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
:cond_5e
:try_start_5e
sget-object v1, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxParallelTimmingEvents()I
move-result v2
if-gt v1, v2, :cond_78
sget-object v1, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6
:cond_78
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "The number of timedEvent exceeds the maximum value "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxParallelTimmingEvents()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:try_end_99
.catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_99} :catch_54
goto/16 :goto_6
.end method
.method public static trackCustomBeginKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V
.registers 7
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.trackCustomBeginEvent() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p1}, Lcom/tencent/stat/StatService;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The event_id of StatService.trackCustomBeginEvent() can not be null or empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_21
:try_start_21
new-instance v0, Lcom/tencent/stat/a/c;
const/4 v1, 0x0
invoke-direct {v0, p1, v1, p2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V
sget-object v1, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5e
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Duplicate CustomEvent key: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/tencent/stat/a/c;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ", trackCustomBeginKVEvent() repeated?"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:try_end_53
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_53} :catch_54
goto :goto_6
:catch_54
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
:cond_5e
:try_start_5e
sget-object v1, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxParallelTimmingEvents()I
move-result v2
if-gt v1, v2, :cond_78
sget-object v1, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6
:cond_78
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "The number of timedEvent exceeds the maximum value "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxParallelTimmingEvents()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:try_end_99
.catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_99} :catch_54
goto/16 :goto_6
.end method
.method public static varargs trackCustomEndEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.registers 10
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.trackCustomEndEvent() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p1}, Lcom/tencent/stat/StatService;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The event_id of StatService.trackCustomEndEvent() can not be null or empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_21
:try_start_21
new-instance v1, Lcom/tencent/stat/a/c;
const/4 v0, 0x0
invoke-direct {v1, p1, p2, v0}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V
sget-object v0, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-eqz v0, :cond_88
new-instance v2, Lcom/tencent/stat/a/b;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
invoke-direct {v2, p0, v1, p1}, Lcom/tencent/stat/a/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V
invoke-virtual {v2, p2}, Lcom/tencent/stat/a/b;->a([Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
sub-long v0, v3, v0
const-wide/16 v3, 0x3e8
div-long/2addr v0, v3
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
const-wide/16 v5, 0x0
cmp-long v1, v3, v5
if-nez v1, :cond_83
const-wide/16 v0, 0x1
:goto_5b
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Lcom/tencent/stat/a/b;->a(J)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/tencent/stat/k;
invoke-direct {v1, v2}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_78
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_78} :catch_79
goto :goto_6
:catch_79
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
:try_start_83
:cond_83
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
goto :goto_5b
:cond_88
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "No start time found for custom event: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/tencent/stat/a/c;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", lost trackCustomBeginEvent()?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:try_end_ac
.catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_ac} :catch_79
goto/16 :goto_6
.end method
.method public static trackCustomEndKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V
.registers 10
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.trackCustomEndEvent() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p1}, Lcom/tencent/stat/StatService;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The event_id of StatService.trackCustomEndEvent() can not be null or empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_21
:try_start_21
new-instance v1, Lcom/tencent/stat/a/c;
const/4 v0, 0x0
invoke-direct {v1, p1, v0, p2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V
sget-object v0, Lcom/tencent/stat/StatService;->b:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-eqz v0, :cond_88
new-instance v2, Lcom/tencent/stat/a/b;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
invoke-direct {v2, p0, v1, p1}, Lcom/tencent/stat/a/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V
invoke-virtual {v2, p2}, Lcom/tencent/stat/a/b;->a(Ljava/util/Properties;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
sub-long v0, v3, v0
const-wide/16 v3, 0x3e8
div-long/2addr v0, v3
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
const-wide/16 v5, 0x0
cmp-long v1, v3, v5
if-nez v1, :cond_83
const-wide/16 v0, 0x1
:goto_5b
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Lcom/tencent/stat/a/b;->a(J)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/tencent/stat/k;
invoke-direct {v1, v2}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_78
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_78} :catch_79
goto :goto_6
:catch_79
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
:try_start_83
:cond_83
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
goto :goto_5b
:cond_88
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "No start time found for custom event: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/tencent/stat/a/c;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", lost trackCustomBeginKVEvent()?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:try_end_ac
.catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_ac} :catch_79
goto/16 :goto_6
.end method
.method public static varargs trackCustomEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.registers 6
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.trackCustomEvent() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p1}, Lcom/tencent/stat/StatService;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_21
:try_start_21
new-instance v0, Lcom/tencent/stat/a/b;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
invoke-direct {v0, p0, v1, p1}, Lcom/tencent/stat/a/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V
invoke-virtual {v0, p2}, Lcom/tencent/stat/a/b;->a([Ljava/lang/String;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_40
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_40} :catch_41
goto :goto_6
:catch_41
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V
.registers 6
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatService.trackCustomEvent() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p1}, Lcom/tencent/stat/StatService;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_21
:try_start_21
new-instance v0, Lcom/tencent/stat/a/b;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v1
invoke-direct {v0, p0, v1, p1}, Lcom/tencent/stat/a/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V
invoke-virtual {v0, p2}, Lcom/tencent/stat/a/b;->a(Ljava/util/Properties;)V
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_6
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_40
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_40} :catch_41
goto :goto_6
:catch_41
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method public static trackEndPage(Landroid/content/Context;Ljava/lang/String;)V
.registers 8
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
if-eqz p0, :cond_11
if-eqz p1, :cond_11
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1a
:cond_11
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:try_start_1a
:cond_1a
sget-object v1, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;
monitor-enter v1
:try_start_1d
:try_end_1d
.catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_89
sget-object v0, Lcom/tencent/stat/StatService;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
monitor-exit v1
:try_end_26
.catchall {:try_start_1d .. :try_end_26} :catchall_94
if-eqz v0, :cond_97
:try_start_28
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
sub-long v0, v1, v3
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gtz v0, :cond_49
const-wide/16 v0, 0x1
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
:cond_49
sget-object v2, Lcom/tencent/stat/StatService;->g:Ljava/lang/String;
if-eqz v2, :cond_57
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_57
const-string/jumbo v2, "-"
:cond_57
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_85
new-instance v0, Lcom/tencent/stat/a/j;
const/4 v1, 0x0
invoke-static {p0, v1}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v4
move-object v1, p0
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/tencent/stat/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)V
sget-object v1, Lcom/tencent/stat/StatService;->f:Ljava/lang/String;
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_79
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "Invalid invocation since previous onResume on diff page."
invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
:cond_79
invoke-static {p0}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_85
sput-object p1, Lcom/tencent/stat/StatService;->g:Ljava/lang/String;
:try_end_87
.catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_87} :catch_89
goto/16 :goto_6
:catch_89
move-exception v0
sget-object v1, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
goto/16 :goto_6
:catchall_94
move-exception v0
:try_start_95
monitor-exit v1
:try_start_96
:try_end_96
.catchall {:try_start_95 .. :try_end_96} :catchall_94
throw v0
:cond_97
sget-object v0, Lcom/tencent/stat/StatService;->i:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Starttime for PageID:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " not found, lost onResume()?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_b7
.catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_b7} :catch_89
goto/16 :goto_6
.end method