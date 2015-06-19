.class public Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;
.super Landroid/app/Activity;
.source "PGLoginWebActivity.java"
.implements Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;
.field public static final BIND_ACCOUNT:Ljava/lang/String; = "bind_account"
.field public static final LOGIN_MODE:Ljava/lang/String; = "loginmode"
.field public static final LOGIN_SUCCESS_URL:Ljava/lang/String; = "success_url"
.field public static final PATH:Ljava/lang/String; = "WEB_PATH"
.field public static final SUCCESS_URL:Ljava/lang/String; = "http://success.callback.html"
.field private mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private mIsBindAccount:Z
.field private mLoadUrl:Ljava/lang/String;
.field private mLoadingPage:Landroid/widget/LinearLayout;
.field private mLoginMode:Ljava/lang/String;
.field private mRootView:Landroid/view/View;
.field private mSuccesUrl:Ljava/lang/String;
.field private mWebView:Landroid/webkit/WebView;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mSuccesUrl:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoadingPage:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mSuccesUrl:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mIsBindAccount:Z
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoginMode:Ljava/lang/String;
return-object v0
.end method
.method private initView()V
.registers 4
const v2, 0x7f0a0039
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/login/view/TitleView;
const v2, 0x7f0a0035
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/login/view/TitleView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f08019d
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/login/view/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;)V
const v2, 0x7f0a003a
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/LinearLayout;
iput-object v2, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoadingPage:Landroid/widget/LinearLayout;
const v2, 0x7f0a003b
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/webkit/WebView;
iput-object v2, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
const v2, 0x7f0a003c
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mRootView:Landroid/view/View;
iget-object v2, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mRootView:Landroid/view/View;
invoke-direct {p0, v2}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->setRootViewBackground(Landroid/view/View;)V
return-void
.end method
.method private setRootViewBackground(Landroid/view/View;)V
.registers 8
:try_start_0
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f020200
invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_18
:try_end_18
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_25
return-void
:catch_19
move-exception v2
const-string/jumbo v5, "#60495b"
invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v5
invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V
goto :goto_18
:catch_25
move-exception v2
const-string/jumbo v5, "#60495b"
invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v5
invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V
goto :goto_18
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->finish()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/login/ui/PGLoginWebActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03009d
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->initView()V
invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "WEB_PATH"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoadUrl:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "success_url"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mSuccesUrl:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "loginmode"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoginMode:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "bind_account"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mIsBindAccount:Z
iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mSuccesUrl:Ljava/lang/String;
if-nez v0, :cond_4a
const-string/jumbo v0, "http://success.callback.html"
iput-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mSuccesUrl:Ljava/lang/String;
:cond_4a
const-string v1, " - Lcom/pinguo/camera360/login/ui/PGLoginWebActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/login/ui/PGLoginWebActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
iget-object v4, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
:try_start_6
iget-object v4, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mRootView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v4, :cond_23
move-object v0, v1
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
move-object v3, v0
invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_23
invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v4
if-nez v4, :cond_23
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
:cond_23
:goto_23
:try_end_23
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_42
iget-object v4, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v4, v5}, Landroid/webkit/WebView;->clearCache(Z)V
iget-object v4, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v4}, Landroid/webkit/WebView;->clearHistory()V
invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
move-result-object v4
invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->startSync()V
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v4
invoke-virtual {v4}, Landroid/webkit/CookieManager;->removeSessionCookie()V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/login/ui/PGLoginWebActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_42
move-exception v4
goto :goto_23
.end method
.method public onRightBtnClick()V
.registers 1
return-void
.end method
.method protected onStart()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/login/ui/PGLoginWebActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
invoke-super {p0}, Landroid/app/Activity;->onStart()V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->clearFormData()V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocusFromTouch()Z
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
new-instance v2, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$1;-><init>(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)V
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
iget-object v2, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoadUrl:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;-><init>(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
const-string v1, " - Lcom/pinguo/camera360/login/ui/PGLoginWebActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method