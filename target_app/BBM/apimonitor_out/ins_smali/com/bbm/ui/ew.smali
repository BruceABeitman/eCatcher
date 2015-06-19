.class final Lcom/bbm/ui/ew;
.super Ljava/lang/Object;
.source "QuickShareGlympseView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/QuickShareGlympseView;
.method constructor <init>(Lcom/bbm/ui/QuickShareGlympseView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ew;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/ew; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Upgrading button Clicked"
const-class v1, Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
if-eqz p1, :cond_38
instance-of v0, p1, Landroid/widget/Button;
if-eqz v0, :cond_38
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v0
:try_start_15
iget-object v1, p0, Lcom/bbm/ui/ew;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-virtual {v1}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "market://details?id=com.google.android.gms&hl="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_38
:try_end_38
.catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_38} :catch_39
:cond_38
const-string v1, " - Lcom/bbm/ui/ew; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_39
move-exception v1
iget-object v1, p0, Lcom/bbm/ui/ew;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-virtual {v1}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "http://play.google.com/store/apps/details?id=com.google.android.gms&hl="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_38
.end method