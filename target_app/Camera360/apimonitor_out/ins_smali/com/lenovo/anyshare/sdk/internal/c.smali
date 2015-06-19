.class public Lcom/lenovo/anyshare/sdk/internal/c;
.super Ljava/lang/Object;
.source "LenovoCollector.java"
.implements Lcom/lenovo/anyshare/sdk/internal/b;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2d
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2d
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
if-eqz p4, :cond_2c
invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2c
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0, p4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppVersionCode(I)V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0, p5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppVersionName(Ljava/lang/String;)V
:cond_2c
:goto_2c
return-void
:cond_2d
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V
goto :goto_2c
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
.registers 2
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getOnlineConfiguration(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static a()V
.registers 1
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->updateOnlineConfiguration()V
return-void
.end method
.method public a(Landroid/content/Context;)V
.registers 2
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
const-string/jumbo v1, "AnyShare"
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, p2, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
const-string/jumbo v1, "AnyShare"
const/4 v2, 0x0
invoke-virtual {v0, v1, p2, p3, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
.registers 11
const/4 v2, 0x1
invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v5
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v5, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V
add-int/lit8 v2, v2, 0x1
const/4 v3, 0x5
if-le v2, v3, :cond_9
:cond_2d
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v3
const-string/jumbo v4, "AnyShare"
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v3, v4, p2, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method public b(Landroid/content/Context;)V
.registers 2
return-void
.end method
.method public c()V
.registers 3
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->dispatch()V
const-string/jumbo v0, "LenovoCollector"
const-string/jumbo v1, "lenovo collector dispatch!"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public d()I
.registers 2
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->countEvent()I
move-result v0
return v0
.end method