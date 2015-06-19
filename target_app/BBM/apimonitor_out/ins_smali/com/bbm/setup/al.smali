.class final Lcom/bbm/setup/al;
.super Ljava/lang/Object;
.source "UpgradeActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/setup/UpgradeActivity;
.method constructor <init>(Lcom/bbm/setup/UpgradeActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/al;->a:Lcom/bbm/setup/UpgradeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/setup/al; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x2
const/4 v0, 0x1
const/4 v1, 0x0
const-string v2, "Upgrade Clicked"
const-class v4, Lcom/bbm/setup/UpgradeActivity;
invoke-static {v2, v4}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v4
iget-object v2, p0, Lcom/bbm/setup/al;->a:Lcom/bbm/setup/UpgradeActivity;
invoke-static {v2}, Lcom/bbm/util/a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_36
move v2, v1
:goto_1f
if-ne v2, v3, :cond_70
:goto_21
if-eqz v0, :cond_86
:try_start_23
iget-object v0, p0, Lcom/bbm/setup/al;->a:Lcom/bbm/setup/UpgradeActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const-string v3, "amzn://apps/android?p=com.bbm"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/bbm/setup/UpgradeActivity;->startActivity(Landroid/content/Intent;)V
:goto_35
:try_end_35
.catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_35} :catch_72
const-string v1, " - Lcom/bbm/setup/al; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_36
const-string v5, "com.amazon.venezia"
invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_40
move v2, v3
goto :goto_1f
:cond_40
const-string v5, "com.android.vending"
invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_58
const-string v5, "com.google.android.feedback"
invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_58
const-string v5, "com.google.market"
invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_5a
:cond_58
move v2, v0
goto :goto_1f
:cond_5a
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Unknown installer package name: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-array v5, v1, [Ljava/lang/Object;
invoke-static {v2, v5}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v2, 0x3
goto :goto_1f
:cond_70
move v0, v1
goto :goto_21
:catch_72
move-exception v0
iget-object v0, p0, Lcom/bbm/setup/al;->a:Lcom/bbm/setup/UpgradeActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.bbm"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/bbm/setup/UpgradeActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_35
:cond_86
:try_start_86
iget-object v0, p0, Lcom/bbm/setup/al;->a:Lcom/bbm/setup/UpgradeActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "market://details?id=com.bbm&hl="
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/bbm/setup/UpgradeActivity;->startActivity(Landroid/content/Intent;)V
:try_end_a5
.catch Landroid/content/ActivityNotFoundException; {:try_start_86 .. :try_end_a5} :catch_a6
goto :goto_35
:catch_a6
move-exception v0
iget-object v0, p0, Lcom/bbm/setup/al;->a:Lcom/bbm/setup/UpgradeActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "http://play.google.com/store/apps/details?id=com.bbm&hl="
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/bbm/setup/UpgradeActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_35
.end method