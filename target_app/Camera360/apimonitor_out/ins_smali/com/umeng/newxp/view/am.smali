.class  Lcom/umeng/newxp/view/am;
.super Ljava/lang/Object;
.source "LandingWebViewDialog.java"
.implements Landroid/webkit/DownloadListener;
.field final synthetic a:Lcom/umeng/newxp/view/LandingWebViewDialog;
.method constructor <init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/am;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/am; onDownloadStart "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v0, p0, Lcom/umeng/newxp/view/am;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;
invoke-static {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->b(Lcom/umeng/newxp/view/LandingWebViewDialog;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/umeng/newxp/view/am; onDownloadStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method