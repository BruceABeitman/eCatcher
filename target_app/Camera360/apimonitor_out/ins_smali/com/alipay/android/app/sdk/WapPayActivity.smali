.class public Lcom/alipay/android/app/sdk/WapPayActivity;
.super Landroid/app/Activity;
.source "WapPayActivity.java"
.field private static final PAY_RESULT_TAG:Ljava/lang/String; = "sdk_result_code:"
.field private mDelayRunnable:Ljava/lang/Runnable;
.field private mHandler:Landroid/os/Handler;
.field private mLoading:Lcom/alipay/android/app/widget/Loading;
.field private mRefreshButton:Landroid/widget/Button;
.field private mTimeout:I
.field private mWebView:Landroid/webkit/WebView;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/alipay/android/app/sdk/WapPayActivity$1;
invoke-direct {v0, p0}, Lcom/alipay/android/app/sdk/WapPayActivity$1;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
iput-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mDelayRunnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$0(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic access$1(Lcom/alipay/android/app/sdk/WapPayActivity;)V
.registers 1
invoke-direct {p0}, Lcom/alipay/android/app/sdk/WapPayActivity;->dismissLoading()V
return-void
.end method
.method static synthetic access$2(Lcom/alipay/android/app/sdk/WapPayActivity;)V
.registers 1
invoke-direct {p0}, Lcom/alipay/android/app/sdk/WapPayActivity;->showLoading()V
return-void
.end method
.method static synthetic access$3(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$4(Lcom/alipay/android/app/sdk/WapPayActivity;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mDelayRunnable:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic access$5(Lcom/alipay/android/app/sdk/WapPayActivity;)I
.registers 2
iget v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mTimeout:I
return v0
.end method
.method static synthetic access$6(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
return-object v0
.end method
.method private dismissLoading()V
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mLoading:Lcom/alipay/android/app/widget/Loading;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mLoading:Lcom/alipay/android/app/widget/Loading;
invoke-virtual {v0}, Lcom/alipay/android/app/widget/Loading;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mLoading:Lcom/alipay/android/app/widget/Loading;
invoke-virtual {v0}, Lcom/alipay/android/app/widget/Loading;->dismiss()V
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mLoading:Lcom/alipay/android/app/widget/Loading;
return-void
.end method
.method private showLoading()V
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mLoading:Lcom/alipay/android/app/widget/Loading;
if-nez v0, :cond_b
new-instance v0, Lcom/alipay/android/app/widget/Loading;
invoke-direct {v0, p0}, Lcom/alipay/android/app/widget/Loading;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mLoading:Lcom/alipay/android/app/widget/Loading;
:cond_b
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mLoading:Lcom/alipay/android/app/widget/Loading;
invoke-virtual {v0}, Lcom/alipay/android/app/widget/Loading;->show()V
return-void
.end method
.method public finish()V
.registers 1
invoke-virtual {p0}, Lcom/alipay/android/app/sdk/WapPayActivity;->notifyCaller()V
invoke-super {p0}, Landroid/app/Activity;->finish()V
return-void
.end method
.method public notifyCaller()V
.registers 4
sget-object v1, Lcom/alipay/android/app/sdk/AliPay;->sLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {v1}, Ljava/lang/Object;->notify()V
:try_start_6
:goto_6
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_d
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8
monitor-exit v1
return-void
:catch_8
move-exception v0
invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V
goto :goto_6
:catchall_d
move-exception v2
monitor-exit v1
:try_end_f
.catchall {:try_start_6 .. :try_end_f} :catchall_d
throw v2
.end method
.method public onBackPressed()V
.registers 5
iget-object v1, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z
move-result v1
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V
:goto_d
return-void
:cond_e
const/16 v1, 0x1771
invoke-static {v1}, Lcom/alipay/android/app/sdk/ResultStatus;->getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
move-result-object v0
invoke-virtual {v0}, Lcom/alipay/android/app/sdk/ResultStatus;->getStatus()I
move-result v1
invoke-virtual {v0}, Lcom/alipay/android/app/sdk/ResultStatus;->getMsg()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, ""
invoke-static {v1, v2, v3}, Lcom/alipay/android/app/sdk/Result;->parseResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/alipay/android/app/sdk/Result;->setPayResult(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/alipay/android/app/sdk/WapPayActivity;->finish()V
goto :goto_d
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 2
invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/alipay/android/app/sdk/WapPayActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v6, 0x1
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/alipay/android/app/sdk/WapPayActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "url"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "timeout"
const/16 v5, 0xf
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v3
iput v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mTimeout:I
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getLayout_pay_main()I
move-result v3
invoke-virtual {p0, v3}, Lcom/alipay/android/app/sdk/WapPayActivity;->setContentView(I)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_webView()I
move-result v3
invoke-virtual {p0, v3}, Lcom/alipay/android/app/sdk/WapPayActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/webkit/WebView;
iput-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
iget-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
new-instance v4, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;
invoke-direct {v4, p0, v7}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity;Lcom/alipay/android/app/sdk/WapPayActivity$MyWebViewClient;)V
invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
new-instance v4, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;
invoke-direct {v4, p0, v7}, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity;Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;)V
invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
iget-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
new-instance v4, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;
invoke-direct {v4, p0}, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
const-string/jumbo v5, "local_obj"
invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMinimumFontSize()I
move-result v3
add-int/lit8 v3, v3, 0x8
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V
iget-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_btn_refresh()I
move-result v3
invoke-virtual {p0, v3}, Lcom/alipay/android/app/sdk/WapPayActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
iput-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
iget-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
new-instance v4, Lcom/alipay/android/app/sdk/WapPayActivity$2;
invoke-direct {v4, p0}, Lcom/alipay/android/app/sdk/WapPayActivity$2;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, p0, Lcom/alipay/android/app/sdk/WapPayActivity;->mRefreshButton:Landroid/widget/Button;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V
const-string v1, " - Lcom/alipay/android/app/sdk/WapPayActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method