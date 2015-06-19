.class  Lcom/tencent/open/TDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"
.field final synthetic this$0:Lcom/tencent/open/TDialog;
.method private constructor <init>(Lcom/tencent/open/TDialog;)V
.registers 2
iput-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$FbWebViewClient;-><init>(Lcom/tencent/open/TDialog;)V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_22
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_22
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_22
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-static {v0}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Landroid/webkit/WebView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
return-void
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 7
const-string/jumbo v0, "TDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Webview loading URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/utils/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_3b
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_3b
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_3b
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-static {v0}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;
move-result-object v0
new-instance v1, Lcom/tencent/tauth/UiError;
invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/tencent/open/TDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_36
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_36
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_36
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 7
const/4 v1, 0x1
const-string/jumbo v0, "TDialog"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Redirect URL: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/tencent/utils/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v2
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string/jumbo v3, "auth://tauth.qq.com/"
invoke-virtual {v2, v0, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_52
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-static {v0}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;
move-result-object v0
invoke-static {p2}, Lcom/tencent/utils/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V
:cond_50
move v0, v1
:goto_51
return v0
:cond_52
const-string/jumbo v0, "auth://cancel"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-static {v0}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onCancel()V
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V
:cond_71
move v0, v1
goto :goto_51
:cond_73
const-string/jumbo v0, "auth://close"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8b
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_89
iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;
invoke-virtual {v0}, Lcom/tencent/open/TDialog;->dismiss()V
:cond_89
move v0, v1
goto :goto_51
:cond_8b
const-string/jumbo v0, "download://"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ce
const-string/jumbo v0, "download://"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v2, Landroid/content/Intent;
const-string/jumbo v3, "android.intent.action.VIEW"
invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_cc
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_cc
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_cc
move v0, v1
goto :goto_51
:cond_ce
const/4 v0, 0x0
goto :goto_51
.end method