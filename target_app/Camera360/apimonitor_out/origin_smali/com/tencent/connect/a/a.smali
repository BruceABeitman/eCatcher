.class public Lcom/tencent/connect/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1}, Lcom/tencent/connect/a/a;->b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    invoke-static {p0, p2, p3}, Lcom/tencent/stat/StatService;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;

    move-result-object v0

    const-string/jumbo v1, "Common_ta_enable"

    invoke-virtual {v0, v1}, Lcom/tencent/utils/OpenConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    goto :goto_a
.end method

.method public static c(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 5

    invoke-static {p0, p1}, Lcom/tencent/connect/a/a;->b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Aqc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setAutoExceptionCaught(Z)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setEnableSmartReporting(Z)V

    const/16 v1, 0x5a0

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setSendPeriodMinutes(I)V

    sget-object v1, Lcom/tencent/stat/StatReportStrategy;->PERIOD:Lcom/tencent/stat/StatReportStrategy;

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/stat/StatReportStrategy;)V

    const-string/jumbo v1, "http://cgi.connect.qq.com/qqconnectutil/sdk"

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setStatReportUrl(Ljava/lang/String;)V

    const-string/jumbo v1, "1.6.2"

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatService;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/tencent/connect/a/a;->b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->reportQQ(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
