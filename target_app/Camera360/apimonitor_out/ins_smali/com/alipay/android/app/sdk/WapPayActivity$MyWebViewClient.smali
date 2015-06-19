.class  Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WapPayActivity.java"
.field final synthetic this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
.method private constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;)V
.registers 3
invoke-direct {p0, p1}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
return-void
.end method
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.registers 4
return-void
.end method
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#calls: Lcom/alipay/android/app/sdk/WapPayActivity;->dismissLoading()V
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$1(Lcom/alipay/android/app/sdk/WapPayActivity;)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$0(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$3(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mDelayRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$4(Lcom/alipay/android/app/sdk/WapPayActivity;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
const-string/jumbo v0, "javascript:window.local_obj.showSource(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"
invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-void
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 8
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#calls: Lcom/alipay/android/app/sdk/WapPayActivity;->showLoading()V
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$2(Lcom/alipay/android/app/sdk/WapPayActivity;)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$0(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$3(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mDelayRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$4(Lcom/alipay/android/app/sdk/WapPayActivity;)Ljava/lang/Runnable;
move-result-object v1
iget-object v2, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mTimeout:I
invoke-static {v2}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$5(Lcom/alipay/android/app/sdk/WapPayActivity;)I
move-result v2
mul-int/lit16 v2, v2, 0x3e8
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 4
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 4
invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
const/4 v0, 0x1
return v0
.end method