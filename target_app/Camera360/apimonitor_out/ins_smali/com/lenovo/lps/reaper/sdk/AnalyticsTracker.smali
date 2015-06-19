.class public final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.super Ljava/lang/Object;
.field private static a:Z
.field private static final b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Z
new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;-><init>()V
sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.registers 1
sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
return-object v0
.end method
.method public final addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/b;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when addUploadMsg."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method public final countEvent()I
.registers 4
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b;->b()I
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9
move-result v0
:goto_8
return v0
:catch_9
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when countEvent."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, -0x1
goto :goto_8
.end method
.method public final disableReport()V
.registers 2
const/4 v0, 0x0
sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Z
return-void
.end method
.method public final dispatch()V
.registers 4
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b;->c()V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when dispatch."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method public final enableReport()V
.registers 2
const/4 v0, 0x1
sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Z
return-void
.end method
.method public final getOnlineConfiguration(Ljava/lang/String;)Ljava/lang/Object;
.registers 5
:try_start_0
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b;->f(Ljava/lang/String;)Ljava/lang/Object;
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when get online configuration."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_4
.end method
.method public final initialize(Landroid/content/Context;)V
.registers 5
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b;->b(Landroid/content/Context;)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when initialize."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method public final declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;I)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V
invoke-static {p2}, Lcom/lenovo/lps/reaper/sdk/b;->c(Ljava/lang/String;)V
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V
invoke-static {p2}, Lcom/lenovo/lps/reaper/sdk/b;->c(Ljava/lang/String;)V
invoke-static {p3}, Lcom/lenovo/lps/reaper/sdk/b;->d(Ljava/lang/String;)V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final isPermitReportData()Z
.registers 2
sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Z
return v0
.end method
.method public final isTrackerInitialized()Z
.registers 2
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/i;->a()Lcom/lenovo/lps/reaper/sdk/b/i;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/i;->b()Z
move-result v0
return v0
.end method
.method public final needReport(Ljava/lang/String;Ljava/lang/String;)Z
.registers 6
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v0
const-wide/16 v1, 0x0
invoke-virtual {v0, p1, p2, v1, v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;D)Z
move-result v0
return v0
.end method
.method public final setAppChannel(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b;->d(Ljava/lang/String;)V
return-void
.end method
.method public final setAppToken(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b;->c(Ljava/lang/String;)V
return-void
.end method
.method public final setAppVersion(Ljava/lang/String;I)V
.registers 3
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b;->e(Ljava/lang/String;)V
invoke-static {p2}, Lcom/lenovo/lps/reaper/sdk/b;->a(I)V
return-void
.end method
.method public final setAppVersionCode(I)V
.registers 2
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b;->a(I)V
return-void
.end method
.method public final setAppVersionName(Ljava/lang/String;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b;->e(Ljava/lang/String;)V
return-void
.end method
.method public final setOnMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
.registers 5
:try_start_0
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b;->a(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when setOnMsgListener."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3
.end method
.method public final setParam(ILjava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/b;->a(ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final setUserId(J)V
.registers 5
const-wide/16 v0, -0x1
cmp-long v0, p1, v0
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_7
const-string/jumbo v1, "LenovoID"
invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_e
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method public final setUserId(Ljava/lang/String;)V
.registers 3
const-string/jumbo v0, "LenovoID"
invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final setUserId(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {p1, p2}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when setUserId."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3
.end method
.method public final shutdown()V
.registers 1
return-void
.end method
.method public final smartInitialize(Landroid/content/Context;)V
.registers 5
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b;->a(Landroid/content/Context;)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when smartInitialize."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method public final trackActivity(Ljava/lang/String;)V
.registers 10
const/4 v3, 0x0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
const-string/jumbo v1, "__PAGEVIEW__"
const-wide/high16 v4, 0x3ff0
const/4 v7, 0x0
move-object v2, p1
move-object v6, v3
invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
return-void
.end method
.method public final trackDomainDetectEvent(Ljava/lang/String;)V
.registers 6
const/4 v3, -0x1
if-eqz p1, :cond_9
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
const-string/jumbo v0, "http://"
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-eq v1, v3, :cond_41
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_1b
const-string/jumbo v1, "https://"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-eq v2, v3, :cond_2c
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_2c
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v1
sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/t;->a:Lcom/lenovo/lps/reaper/sdk/b/t;
invoke-virtual {v1, v0, v2}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/b/t;)V
:try_end_35
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_36
goto :goto_9
:catch_36
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackDomainDetectEvent."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
:cond_41
move-object v0, p1
goto :goto_1b
.end method
.method public final trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 13
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
int-to-double v4, p4
const/4 v6, 0x0
const/4 v7, 0x0
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEvent."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
.end method
.method public final trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
.registers 14
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
int-to-double v4, p4
const/4 v7, 0x0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v6, p5
invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEvent."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
.end method
.method public final trackEventBegin(Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_23
:cond_8
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, eventAction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_22
return-void
:cond_23
:try_start_23
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;)V
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b
goto :goto_22
:catch_2b
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEventBegin."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
.end method
.method public final trackEventBySync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
.registers 14
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
int-to-double v4, p4
const/4 v7, 0x1
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v6, p5
invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEvent."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
.end method
.method public final trackEventDuration(Ljava/lang/String;DJ)V
.registers 12
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_23
:cond_8
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, eventAction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_22
return-void
:cond_23
const-wide/16 v0, 0x0
cmpg-double v0, p2, v0
if-gez v0, :cond_44
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, dataLength: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_22
:cond_44
const-wide/16 v0, 0x0
cmp-long v0, p4, v0
if-gez v0, :cond_65
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, duration: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_22
:try_start_65
:cond_65
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;DJ)V
:try_end_6f
.catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6f} :catch_70
goto :goto_22
:catch_70
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEventDuration."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
.end method
.method public final trackEventDuration(Ljava/lang/String;J)V
.registers 7
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_23
:cond_8
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, eventAction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_22
return-void
:cond_23
const-wide/16 v0, 0x0
cmp-long v0, p2, v0
if-gez v0, :cond_44
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, duration: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_22
:cond_44
:try_start_44
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;J)V
:try_end_4b
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_4c
goto :goto_22
:catch_4c
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEventDuration."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
.end method
.method public final trackEventEnd(Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_23
:cond_8
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, eventAction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_22
return-void
:cond_23
:try_start_23
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b;->b(Ljava/lang/String;)V
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b
goto :goto_22
:catch_2b
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEventEnd."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
.end method
.method public final trackEventEnd(Ljava/lang/String;D)V
.registers 7
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_23
:cond_8
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, eventAction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_22
return-void
:cond_23
const-wide/16 v0, 0x0
cmpg-double v0, p2, v0
if-gez v0, :cond_44
const-string/jumbo v0, "AnalyticsTracker"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "error parameter value, dataLength: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_22
:cond_44
:try_start_44
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;D)V
:try_end_4b
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_4c
goto :goto_22
:catch_4c
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackEventEnd."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
.end method
.method public final trackFeedback(Ljava/lang/String;)V
.registers 5
const-string/jumbo v0, "__FEEDBACK__"
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, p1, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public final trackHttpDetectEvent(Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_8
:try_start_2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
sget-object v1, Lcom/lenovo/lps/reaper/sdk/b/t;->b:Lcom/lenovo/lps/reaper/sdk/b/t;
invoke-virtual {v0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/b/t;)V
:try_end_12
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13
goto :goto_8
:catch_13
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackHttpDetectEvent."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method
.method public final trackInstalledApps(Z)V
.registers 5
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b;->a(Z)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackInstalledApps."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method public final trackPagePause(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final trackPagePause(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/lps/reaper/sdk/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackPagePause."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method
.method public final trackPageResume(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final trackPageResume(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackPageResume."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method
.method public final trackPause(Landroid/content/Context;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final trackResume(Landroid/content/Context;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final trackThrowable(Ljava/lang/Throwable;)V
.registers 5
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b;->a(Ljava/lang/Throwable;)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackThrowable."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method public final trackUserAction(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public final trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->a()Lcom/lenovo/lps/reaper/sdk/b;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/lps/reaper/sdk/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when trackUserAction."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method
.method public final updateOnlineConfiguration()V
.registers 4
:try_start_0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b;->d()V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string/jumbo v1, "AnalyticsTracker"
const-string/jumbo v2, "Exception when update online configuration."
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3
.end method