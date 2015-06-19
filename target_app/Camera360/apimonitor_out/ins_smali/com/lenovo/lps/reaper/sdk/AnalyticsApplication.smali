.class public Lcom/lenovo/lps/reaper/sdk/AnalyticsApplication;
.super Landroid/app/Application;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Application;-><init>()V
return-void
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/lenovo/lps/reaper/sdk/AnalyticsApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Application;->onCreate()V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->smartInitialize(Landroid/content/Context;)V
const-string v1, " - Lcom/lenovo/lps/reaper/sdk/AnalyticsApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method