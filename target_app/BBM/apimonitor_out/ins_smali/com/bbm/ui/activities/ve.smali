.class final Lcom/bbm/ui/activities/ve;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ve;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 7
const/4 v5, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/ve;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
new-instance v1, Lcom/bbm/util/bz;
iget-object v2, p0, Lcom/bbm/ui/activities/ve;->a:Lcom/bbm/ui/activities/MainActivity;
const/4 v3, 0x1
sget-object v4, Lcom/bbm/util/br;->b:Lcom/bbm/util/br;
invoke-direct {v1, v2, v3, v5, v4}, Lcom/bbm/util/bz;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/bbm/l/c/e;->a(Lcom/bbm/util/bo;Lcom/bbm/l/c/i;)V
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "stickers_last_fetch_time"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
const-string v1, "stickers_fetch_period"
const-wide/32 v2, 0x240c8400
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "STICKERS: poll scheduled in"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v5, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/bbm/ui/activities/ve;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;)Landroid/os/Handler;
move-result-object v2
invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method