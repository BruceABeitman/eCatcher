.class public Lcom/tencent/weibo/sdk/android/component/Authorize;
.super Landroid/app/Activity;
.source "Authorize.java"
.field public static final ALERT_DOWNLOAD:I = 0x0
.field public static final ALERT_FAV:I = 0x1
.field public static final ALERT_NETWORK:I = 0x4
.field public static final PROGRESS_H:I = 0x3
.field public static WEBVIEWSTATE_1:I
.field  _dialog:Landroid/app/Dialog;
.field  _fileName:Ljava/lang/String;
.field  _url:Ljava/lang/String;
.field private clientId:Ljava/lang/String;
.field private dialog:Landroid/app/ProgressDialog;
.field  handle:Landroid/os/Handler;
.field private isShow:Z
.field private layout:Landroid/widget/LinearLayout;
.field  path:Ljava/lang/String;
.field private redirectUri:Ljava/lang/String;
.field  webView:Landroid/webkit/WebView;
.field  webview_state:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/tencent/weibo/sdk/android/component/Authorize;->WEBVIEWSTATE_1:I
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
iput v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webview_state:I
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->layout:Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->redirectUri:Ljava/lang/String;
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->clientId:Ljava/lang/String;
iput-boolean v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->isShow:Z
new-instance v0, Lcom/tencent/weibo/sdk/android/component/Authorize$1;
invoke-direct {v0, p0}, Lcom/tencent/weibo/sdk/android/component/Authorize$1;-><init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->handle:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/component/Authorize;)Z
.registers 2
iget-boolean v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->isShow:Z
return v0
.end method
.method static synthetic access$1(Lcom/tencent/weibo/sdk/android/component/Authorize;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
return-object v0
.end method
.method public initLayout()V
.registers 13
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v10, -0x1
const/4 v11, -0x1
invoke-direct {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v10, -0x1
const/4 v11, -0x2
invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v10, -0x2
const/4 v11, -0x2
invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
const/4 v11, 0x0
invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
const/4 v11, 0x1
invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
const-string/jumbo v11, "\u8bf7\u7a0d\u540e..."
invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
const/4 v11, 0x0
invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
const/4 v11, 0x0
invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V
new-instance v10, Landroid/widget/LinearLayout;
invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->layout:Landroid/widget/LinearLayout;
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->layout:Landroid/widget/LinearLayout;
invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->layout:Landroid/widget/LinearLayout;
const/4 v11, 0x1
invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v0, Landroid/widget/RelativeLayout;
invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const-string/jumbo v10, "up_bg2x"
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->getApplication()Landroid/app/Application;
move-result-object v11
invoke-static {v10, v11}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v10
invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v10, 0x0
invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V
new-instance v4, Landroid/widget/Button;
invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const/4 v10, 0x2
new-array v3, v10, [Ljava/lang/String;
const/4 v10, 0x0
const-string/jumbo v11, "quxiao_btn2x"
aput-object v11, v3, v10
const/4 v10, 0x1
const-string/jumbo v11, "quxiao_btn_hover"
aput-object v11, v3, v10
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->getApplication()Landroid/app/Application;
move-result-object v10
invoke-static {v3, v10}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
move-result-object v10
invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const-string/jumbo v10, "\u53d6\u6d88"
invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
const/16 v10, 0x9
const/4 v11, -0x1
invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/16 v10, 0xf
const/4 v11, -0x1
invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/16 v10, 0xa
iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
const/16 v10, 0xa
iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
const/16 v10, 0xa
iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
invoke-virtual {v4, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v10, Lcom/tencent/weibo/sdk/android/component/Authorize$2;
invoke-direct {v10, p0}, Lcom/tencent/weibo/sdk/android/component/Authorize$2;-><init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
new-instance v5, Landroid/widget/TextView;
invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const-string/jumbo v10, "\u6388\u6743"
invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v10, -0x1
invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V
const/high16 v10, 0x41c0
invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V
new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v10, -0x2
const/4 v11, -0x2
invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v10, 0xd
const/4 v11, -0x1
invoke-virtual {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->layout:Landroid/widget/LinearLayout;
invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v10, Landroid/webkit/WebView;
invoke-direct {v10, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
const/4 v10, -0x2
const/4 v11, -0x2
invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
invoke-virtual {v10, v9}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v7
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
const/4 v11, 0x0
invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V
const/4 v10, 0x1
invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
const/4 v10, 0x1
invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
const/4 v10, 0x0
invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
iget-object v11, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->path:Ljava/lang/String;
invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
new-instance v11, Lcom/tencent/weibo/sdk/android/component/Authorize$3;
invoke-direct {v11, p0}, Lcom/tencent/weibo/sdk/android/component/Authorize$3;-><init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
new-instance v11, Lcom/tencent/weibo/sdk/android/component/Authorize$4;
invoke-direct {v11, p0}, Lcom/tencent/weibo/sdk/android/component/Authorize$4;-><init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->layout:Landroid/widget/LinearLayout;
iget-object v11, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->webView:Landroid/webkit/WebView;
invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v10, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->layout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v10}, Lcom/tencent/weibo/sdk/android/component/Authorize;->setContentView(Landroid/view/View;)V
return-void
.end method
.method public jumpResultParser(Ljava/lang/String;)V
.registers 19
const-string/jumbo v12, "#"
move-object/from16 v0, p1
invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v10, v12, v13
const-string/jumbo v12, "&"
invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v8
const/4 v12, 0x0
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v1, v12, v13
const/4 v12, 0x1
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v3, v12, v13
const/4 v12, 0x2
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v6, v12, v13
const/4 v12, 0x3
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v7, v12, v13
const/4 v12, 0x4
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v9, v12, v13
const/4 v12, 0x5
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v11, v12, v13
const/4 v12, 0x6
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v4, v12, v13
const/4 v12, 0x7
aget-object v12, v8, v12
const-string/jumbo v13, "="
invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
aget-object v5, v12, v13
invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->getApplicationContext()Landroid/content/Context;
move-result-object v2
if-eqz v1, :cond_d7
const-string/jumbo v12, ""
invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_d7
const-string/jumbo v12, "ACCESS_TOKEN"
invoke-static {v2, v12, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "EXPIRES_IN"
invoke-static {v2, v12, v3}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "OPEN_ID"
invoke-static {v2, v12, v6}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "OPEN_KEY"
invoke-static {v2, v12, v7}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "REFRESH_TOKEN"
invoke-static {v2, v12, v9}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "NAME"
invoke-static {v2, v12, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "NICK"
invoke-static {v2, v12, v5}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "CLIENT_ID"
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/Authorize;->clientId:Ljava/lang/String;
invoke-static {v2, v12, v13}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v12, "AUTHORIZETIME"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
const-wide/16 v15, 0x3e8
div-long/2addr v13, v15
invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v13
invoke-static {v2, v12, v13}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->finish()V
const/4 v12, 0x1
move-object/from16 v0, p0
iput-boolean v12, v0, Lcom/tencent/weibo/sdk/android/component/Authorize;->isShow:Z
:cond_d7
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/tencent/weibo/sdk/android/component/Authorize; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/tencent/weibo/sdk/android/api/util/Util;->isNetworkAvailable(Landroid/app/Activity;)Z
move-result v4
if-nez v4, :cond_e
const/4 v4, 0x4
invoke-virtual {p0, v4}, Lcom/tencent/weibo/sdk/android/component/Authorize;->showDialog(I)V
:goto_d
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/Authorize; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->getWindowManager()Landroid/view/WindowManager;
move-result-object v4
invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v4
invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
new-instance v4, Ljava/lang/StringBuilder;
iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "x"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->setPix(Ljava/lang/String;)V
:try_start_3d
invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getConfig()Ljava/util/Properties;
move-result-object v4
const-string/jumbo v5, "APP_KEY"
invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->clientId:Ljava/lang/String;
invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getConfig()Ljava/util/Properties;
move-result-object v4
const-string/jumbo v5, "REDIRECT_URI"
invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->redirectUri:Ljava/lang/String;
iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->clientId:Ljava/lang/String;
if-eqz v4, :cond_75
const-string/jumbo v4, ""
iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->clientId:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_75
iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->redirectUri:Ljava/lang/String;
if-eqz v4, :cond_75
const-string/jumbo v4, ""
iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->redirectUri:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_80
:cond_75
const-string/jumbo v4, "\u8bf7\u5728\u914d\u7f6e\u6587\u4ef6\u4e2d\u586b\u5199\u76f8\u5e94\u7684\u4fe1\u606f"
const/4 v5, 0x0
invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/Toast;->show()V
:cond_80
const-string/jumbo v4, "redirectUri"
iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->redirectUri:Ljava/lang/String;
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->getWindow()Landroid/view/Window;
move-result-object v4
const/16 v5, 0x400
const/16 v6, 0x400
invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V
const/4 v4, 0x1
invoke-virtual {p0, v4}, Lcom/tencent/weibo/sdk/android/component/Authorize;->requestWindowFeature(I)Z
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v4
double-to-int v4, v4
mul-int/lit16 v4, v4, 0x3e8
add-int/lit8 v3, v4, 0x6f
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "https://open.t.qq.com/cgi-bin/oauth2/authorize?client_id="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->clientId:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "&response_type=token&redirect_uri="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->redirectUri:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "&state="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->path:Ljava/lang/String;
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/Authorize;->initLayout()V
:try_end_cf
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_cf} :catch_d1
goto/16 :goto_d
:catch_d1
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_d
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
packed-switch p1, :pswitch_data_40
:goto_3
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->_dialog:Landroid/app/Dialog;
return-object v1
:pswitch_6
new-instance v1, Landroid/app/ProgressDialog;
invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->_dialog:Landroid/app/Dialog;
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->_dialog:Landroid/app/Dialog;
check-cast v1, Landroid/app/ProgressDialog;
const-string/jumbo v2, "\u52a0\u8f7d\u4e2d..."
invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_3
:pswitch_18
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u662f\u5426\u91cd\u65b0\u8fde\u63a5\uff1f"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
const-string/jumbo v1, "\u662f"
new-instance v2, Lcom/tencent/weibo/sdk/android/component/Authorize$5;
invoke-direct {v2, p0}, Lcom/tencent/weibo/sdk/android/component/Authorize$5;-><init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const-string/jumbo v1, "\u5426"
new-instance v2, Lcom/tencent/weibo/sdk/android/component/Authorize$6;
invoke-direct {v2, p0}, Lcom/tencent/weibo/sdk/android/component/Authorize$6;-><init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v1
iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize;->_dialog:Landroid/app/Dialog;
goto :goto_3
:pswitch_data_40
.packed-switch 0x3
:pswitch_6
:pswitch_18
.end packed-switch
.end method