.class final Lcom/bbm/ui/activities/ug;
.super Ljava/lang/Object;
.source "InAppUpgradeActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Landroid/content/DialogInterface$OnClickListener;
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ug;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/ui/activities/ug;->b:Landroid/content/DialogInterface$OnClickListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ug; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, -0x1
if-ne p2, v0, :cond_16
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
const-string v2, "http://global.blackberry.com/static-pages/bbm/upgrade/index.html"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ug;->a:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_15
const-string v1, " - Lcom/bbm/ui/activities/ug; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/ug;->b:Landroid/content/DialogInterface$OnClickListener;
invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
goto :goto_15
.end method