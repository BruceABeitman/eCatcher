.class  Lcom/tencent/open/yyb/c;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/webkit/DownloadListener;
.field final synthetic a:Lcom/tencent/open/yyb/AppbarActivity;
.method constructor <init>(Lcom/tencent/open/yyb/AppbarActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/open/yyb/c;->a:Lcom/tencent/open/yyb/AppbarActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/open/yyb/c; onDownloadStart "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->(AppbarActivity)onDownloadStart : url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
:try_start_26
iget-object v0, p0, Lcom/tencent/open/yyb/c;->a:Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0, v1}, Lcom/tencent/open/yyb/AppbarActivity;->startActivity(Landroid/content/Intent;)V
:goto_2b
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_41
iget-object v0, p0, Lcom/tencent/open/yyb/c;->a:Lcom/tencent/open/yyb/AppbarActivity;
#calls: Lcom/tencent/open/yyb/AppbarActivity;->getToken()Lcom/tencent/connect/auth/QQToken;
invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$500(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/connect/auth/QQToken;
move-result-object v0
if-eqz v0, :cond_40
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "200"
const-string/jumbo v2, "SDK.APPBAR.HOME ACTION"
invoke-static {v0, v1, v2}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_40
const-string v1, " - Lcom/tencent/open/yyb/c; onDownloadStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_41
move-exception v0
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "-->(AppbarActivity)onDownloadStart : activity aciton_view not found."
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2b
.end method