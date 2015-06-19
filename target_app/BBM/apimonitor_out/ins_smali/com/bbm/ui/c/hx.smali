.class final Lcom/bbm/ui/c/hx;
.super Lcom/bbm/j/k;
.source "UpdatesFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/hk;
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/hx;->a:Lcom/bbm/ui/c/hk;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 14
const-wide/16 v11, 0x0
const/4 v10, 0x1
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/c/hx;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->b(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/ThreeButtonSegmentedControl;
move-result-object v3
sget-object v0, Lcom/bbm/util/ay;->a:Lcom/bbm/util/ay;
if-ne v2, v0, :cond_5c
const/16 v0, 0x8
:goto_18
invoke-virtual {v3, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->setVisibility(I)V
sget-object v0, Lcom/bbm/util/ay;->c:Lcom/bbm/util/ay;
if-ne v2, v0, :cond_5b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->q()J
move-result-wide v4
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->r()J
move-result-wide v6
iget-object v0, p0, Lcom/bbm/ui/c/hx;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
cmp-long v8, v4, v11
if-eqz v8, :cond_49
cmp-long v8, v6, v11
if-nez v8, :cond_5e
:cond_49
const-string v1, "channel_sixty_days_time_stamp"
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v1, "channel_three_days_time_stamp"
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v1, "channel_show_promotion"
invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
:goto_58
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_5b
return-void
:cond_5c
move v0, v1
goto :goto_18
:cond_5e
const-wide v8, 0x134fd9000L
add-long/2addr v4, v8
cmp-long v4, v2, v4
if-gez v4, :cond_7b
const-wide/32 v4, 0xf731400
add-long/2addr v4, v6
cmp-long v4, v2, v4
if-lez v4, :cond_7b
const-string v1, "channel_three_days_time_stamp"
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v1, "channel_show_promotion"
invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_58
:cond_7b
const-string v2, "channel_show_promotion"
invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_58
.end method