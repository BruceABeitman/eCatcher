.class  Lcom/tencent/weibo/sdk/android/component/Authorize$5;
.super Ljava/lang/Object;
.source "Authorize.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$5;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/Authorize$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$5;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->isNetworkAvailable(Landroid/app/Activity;)Z
move-result v1
if-eqz v1, :cond_14
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$5;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
iget-object v1, v1, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$5;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
iget-object v2, v2, Lcom/tencent/weibo/sdk/android/component/Authorize;->path:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:goto_13
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/Authorize$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_14
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
const/16 v1, 0x64
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$5;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;
iget-object v1, v1, Lcom/tencent/weibo/sdk/android/component/Authorize;->handle:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_13
.end method