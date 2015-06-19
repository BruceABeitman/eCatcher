.class public Lcom/umeng/analytics/MobclickAgent;
.super Ljava/lang/Object;
.source "MobclickAgent.java"
.field private static final a:Lcom/umeng/analytics/b;
.field private static final b:Lcom/umeng/analytics/onlineconfig/a;
.field private static synthetic c:[I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/umeng/analytics/b;
invoke-direct {v0}, Lcom/umeng/analytics/b;-><init>()V
sput-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
new-instance v0, Lcom/umeng/analytics/onlineconfig/a;
invoke-direct {v0}, Lcom/umeng/analytics/onlineconfig/a;-><init>()V
sput-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;
sget-object v1, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/c;)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a()Lcom/umeng/analytics/b;
.registers 1
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
return-object v0
.end method
.method static synthetic b()[I
.registers 3
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->c:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/umeng/analytics/Gender;->values()[Lcom/umeng/analytics/Gender;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;
invoke-virtual {v1}, Lcom/umeng/analytics/Gender;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e
:goto_15
sget-object v1, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;
invoke-virtual {v1}, Lcom/umeng/analytics/Gender;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_1e
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c
:goto_1e
sget-object v1, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;
invoke-virtual {v1}, Lcom/umeng/analytics/Gender;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_27
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a
sput-object v0, Lcom/umeng/analytics/MobclickAgent;->c:[I
goto :goto_4
:catch_2a
move-exception v1
goto :goto_27
:catch_2c
move-exception v1
goto :goto_1e
:catch_2e
move-exception v1
goto :goto_15
.end method
.method public static flush(Landroid/content/Context;)V
.registers 2
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;)V
return-void
.end method
.method public static getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, ""
invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static onError(Landroid/content/Context;)V
.registers 1
return-void
.end method
.method public static onError(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_12
:cond_8
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "unexpected empty appkey in onError"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_11
return-void
:cond_12
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
iput-object p1, v0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onError(Landroid/content/Context;)V
goto :goto_11
.end method
.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const/4 v3, 0x0
const-wide/16 v4, -0x1
const/4 v6, 0x1
move-object v1, p0
move-object v2, p1
invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
return-void
.end method
.method public static onEvent(Landroid/content/Context;Ljava/lang/String;I)V
.registers 10
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const/4 v3, 0x0
const-wide/16 v4, -0x1
move-object v1, p0
move-object v2, p1
move v6, p2
invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
return-void
.end method
.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_10
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "label is null or empty"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return-void
:cond_10
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const-wide/16 v4, -0x1
const/4 v6, 0x1
move-object v1, p0
move-object v2, p1
move-object v3, p2
invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
goto :goto_f
.end method
.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.registers 11
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_10
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "label is null or empty"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return-void
:cond_10
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const-wide/16 v4, -0x1
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v6, p3
invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
goto :goto_f
.end method
.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
.registers 9
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const-wide/16 v4, -0x1
move-object v1, p0
move-object v2, p1
move-object v3, p2
invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
return-void
.end method
.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;J)V
.registers 11
const-wide/16 v0, 0x0
cmp-long v0, p2, v0
if-gtz v0, :cond_10
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "duration is not valid in onEventDuration"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return-void
:cond_10
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const/4 v3, 0x0
const/4 v6, 0x1
move-object v1, p0
move-object v2, p1
move-wide v4, p2
invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
goto :goto_f
.end method
.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
.registers 12
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_10
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "label is null or empty"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return-void
:cond_10
const-wide/16 v0, 0x0
cmp-long v0, p3, v0
if-gtz v0, :cond_20
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "duration is not valid in onEventDuration"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
:cond_20
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const/4 v6, 0x1
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-wide v4, p3
invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
goto :goto_f
.end method
.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
.registers 11
const-wide/16 v0, 0x0
cmp-long v0, p3, v0
if-gtz v0, :cond_10
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "duration is not valid in onEventDuration"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return-void
:cond_10
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-wide v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
goto :goto_f
.end method
.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static onKVEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
.registers 5
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
return-void
.end method
.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static onKillProcess(Landroid/content/Context;)V
.registers 2
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;)V
return-void
.end method
.method public static onPause(Landroid/content/Context;)V
.registers 4
const-string v1, " + Lcom/umeng/analytics/MobclickAgent; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V
const-string v1, " - Lcom/umeng/analytics/MobclickAgent; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public static onResume(Landroid/content/Context;)V
.registers 4
const-string v1, " + Lcom/umeng/analytics/MobclickAgent; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;)V
const-string v1, " - Lcom/umeng/analytics/MobclickAgent; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public static onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const-string v1, " + Lcom/umeng/analytics/MobclickAgent; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_12
:cond_8
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "unexpected empty appkey in onResume"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_11
const-string v1, " - Lcom/umeng/analytics/MobclickAgent; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
iput-object p1, v0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
iput-object p2, v0, Lcom/umeng/analytics/b;->j:Ljava/lang/String;
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;)V
goto :goto_11
.end method
.method public static openActivityDurationTrack(Z)V
.registers 1
sput-boolean p0, Lcom/umeng/analytics/f;->j:Z
return-void
.end method
.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
.registers 3
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
return-void
.end method
.method public static setAutoLocation(Z)V
.registers 1
sput-boolean p0, Lcom/umeng/analytics/f;->i:Z
return-void
.end method
.method public static setDebugMode(Z)V
.registers 1
sput-boolean p0, Lcom/umeng/common/Log;->LOG:Z
return-void
.end method
.method public static setDefaultReportPolicy(Landroid/content/Context;I)V
.registers 4
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "\u6b64\u65b9\u6cd5\u4e0d\u518d\u4f7f\u7528\uff0c\u8bf7\u4f7f\u7528\u5728\u7ebf\u53c2\u6570\u914d\u7f6e\uff0c\u53d1\u9001\u7b56\u7565"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static setEnableEventBuffer(Z)V
.registers 1
sput-boolean p0, Lcom/umeng/analytics/f;->m:Z
return-void
.end method
.method public static setOnlineConfigureListener(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
.registers 2
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-virtual {v0, p0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
return-void
.end method
.method public static setOpenGLContext(Ljavax/microedition/khronos/opengles/GL10;)V
.registers 4
if-eqz p0, :cond_18
invoke-static {p0}, Lcom/umeng/common/b;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
move-result-object v0
array-length v1, v0
const/4 v2, 0x2
if-ne v1, v2, :cond_18
sget-object v1, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const/4 v2, 0x0
aget-object v2, v0, v2
iput-object v2, v1, Lcom/umeng/analytics/b;->a:Ljava/lang/String;
sget-object v1, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
const/4 v2, 0x1
aget-object v0, v0, v2
iput-object v0, v1, Lcom/umeng/analytics/b;->b:Ljava/lang/String;
:cond_18
return-void
.end method
.method public static setSessionContinueMillis(J)V
.registers 2
sput-wide p0, Lcom/umeng/analytics/f;->d:J
return-void
.end method
.method public static setWrapper(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;
invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static updateOnlineConfig(Landroid/content/Context;)V
.registers 2
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-virtual {v0, p0}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;)V
return-void
.end method
.method public static updateOnlineConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_12
:cond_8
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "unexpected empty appkey in onResume"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_11
return-void
:cond_12
sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;
invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method public setAge(Landroid/content/Context;I)V
.registers 5
invoke-static {p1}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
if-ltz p2, :cond_a
const/16 v1, 0xc8
if-le p2, v1, :cond_14
:cond_a
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "not a valid age!"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_13
return-void
:cond_14
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "age"
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_13
.end method
.method public setGender(Landroid/content/Context;Lcom/umeng/analytics/Gender;)V
.registers 7
const/4 v0, 0x0
invoke-static {p1}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->b()[I
move-result-object v2
invoke-virtual {p2}, Lcom/umeng/analytics/Gender;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_26
:pswitch_12
:goto_12
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string/jumbo v2, "gender"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
:pswitch_21
const/4 v0, 0x1
goto :goto_12
:pswitch_23
const/4 v0, 0x2
goto :goto_12
nop
:pswitch_data_26
.packed-switch 0x1
:pswitch_21
:pswitch_23
:pswitch_12
.end packed-switch
.end method
.method public setUserID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-static {p1}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_14
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "userID is null or empty"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_13
return-void
:cond_14
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string/jumbo v2, "user_id"
invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_32
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "id source is null or empty"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13
:cond_32
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "id_source"
invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_13
.end method