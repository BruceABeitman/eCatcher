.class public Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;
.super Landroid/app/ListActivity;
.field private a:Lcom/lenovo/lps/reaper/sdk/b/i;
.field private b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/i;->a()Lcom/lenovo/lps/reaper/sdk/b/i;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->a:Lcom/lenovo/lps/reaper/sdk/b/i;
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->a:Lcom/lenovo/lps/reaper/sdk/b/i;
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/i;->c()Landroid/app/Activity;
move-result-object v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->a:Lcom/lenovo/lps/reaper/sdk/b/i;
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/b/i;->a(Landroid/app/Activity;)V
:cond_15
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->a:Lcom/lenovo/lps/reaper/sdk/b/i;
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/b/i;->b(Landroid/app/Activity;)V
const-string v1, " - Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->a:Lcom/lenovo/lps/reaper/sdk/b/i;
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/b/i;->c(Landroid/app/Activity;)Z
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->a:Lcom/lenovo/lps/reaper/sdk/b/i;
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/i;->c()Landroid/app/Activity;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->a:Lcom/lenovo/lps/reaper/sdk/b/i;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/i;->a(Landroid/app/Activity;)V
:cond_1a
const-string v1, " - Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V
invoke-super {p0}, Landroid/app/ListActivity;->onPause()V
const-string v1, " - Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/ListActivity;->onResume()V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperListActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V
const-string v1, " - Lcom/lenovo/lps/reaper/sdk/ReaperListActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method