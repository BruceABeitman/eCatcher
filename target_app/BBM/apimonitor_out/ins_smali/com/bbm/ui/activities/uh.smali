.class final Lcom/bbm/ui/activities/uh;
.super Ljava/lang/Object;
.source "InAppUpgradeActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/InAppUpgradeActivity;
.method constructor <init>(Lcom/bbm/ui/activities/InAppUpgradeActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/uh;->a:Lcom/bbm/ui/activities/InAppUpgradeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/uh; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/uh;->a:Lcom/bbm/ui/activities/InAppUpgradeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InAppUpgradeActivity;->a(Lcom/bbm/ui/activities/InAppUpgradeActivity;)Z
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "inapp_upgrade_notification_last_show_timestamp"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/bbm/ui/activities/uh;->a:Lcom/bbm/ui/activities/InAppUpgradeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InAppUpgradeActivity;->b(Lcom/bbm/ui/activities/InAppUpgradeActivity;)V
const-string v1, " - Lcom/bbm/ui/activities/uh; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method