.class public Lcom/sina/weibo/sdk/auth/WeiboDialog;
.super Landroid/app/Dialog;
.source "WeiboDialog.java"
.field private static final TAG:Ljava/lang/String; = "WeiboDialog"
.field private static final WEBVIEW_CONTAINER_MARGIN_TOP:I = 0x19
.field private static final WEBVIEW_MARGIN:I = 0xa
.field private static theme:I
.field private mAuthUrl:Ljava/lang/String;
.field private mContext:Landroid/content/Context;
.field private mIsDetached:Z
.field private mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
.field private mLoadingDlg:Landroid/app/ProgressDialog;
.field private mRootContainer:Landroid/widget/RelativeLayout;
.field private mWebView:Landroid/webkit/WebView;
.field private mWebViewContainer:Landroid/widget/RelativeLayout;
.field private mWeibo:Lcom/sina/weibo/sdk/auth/WeiboAuth;
.method static constructor <clinit>()V
.registers 1
const v0, 0x1030010
sput v0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->theme:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V
.registers 6
sget v0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->theme:I
invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z
iput-object p2, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mAuthUrl:Ljava/lang/String;
iput-object p3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;
iput-object p4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWeibo:Lcom/sina/weibo/sdk/auth/WeiboAuth;
return-void
.end method
.method static synthetic access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
return-object v0
.end method
.method static synthetic access$1(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuth;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWeibo:Lcom/sina/weibo/sdk/auth/WeiboAuth;
return-object v0
.end method
.method static synthetic access$2(Lcom/sina/weibo/sdk/auth/WeiboDialog;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->handleRedirectUrl(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$3(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Z
.registers 2
iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z
return v0
.end method
.method static synthetic access$4(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;
return-object v0
.end method
.method static synthetic access$5(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
return-object v0
.end method
.method private handleRedirectUrl(Ljava/lang/String;)V
.registers 8
invoke-static {p1}, Lcom/sina/weibo/sdk/utils/Utility;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "error"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v4, "error_code"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "error_description"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v2, :cond_23
if-nez v0, :cond_23
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-interface {v4, v3}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V
:goto_22
return-void
:cond_23
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
new-instance v5, Lcom/sina/weibo/sdk/exception/WeiboAuthException;
invoke-direct {v5, v0, v2, v1}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
goto :goto_22
.end method
.method private initCloseButton()V
.registers 8
const/4 v6, -0x2
new-instance v0, Landroid/widget/ImageView;
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;
invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;
const/4 v5, 0x2
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v4, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;
invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;-><init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;
iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v5
div-int/lit8 v5, v5, 0x2
sub-int/2addr v4, v5
add-int/lit8 v4, v4, 0x5
iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v5
div-int/lit8 v5, v5, 0x2
sub-int/2addr v4, v5
add-int/lit8 v4, v4, 0x5
iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private initLoadingDlg()V
.registers 4
const/4 v2, 0x1
new-instance v0, Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;
invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
return-void
.end method
.method private initWebView()V
.registers 15
const/4 v13, 0x1
const/4 v12, 0x0
const/4 v11, -0x1
new-instance v8, Landroid/widget/RelativeLayout;
invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;
move-result-object v9
invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
iput-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;
new-instance v8, Landroid/webkit/WebView;
invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;
move-result-object v9
invoke-direct {v8, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v8
invoke-virtual {v8, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v8
invoke-virtual {v8, v12}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
new-instance v9, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;
const/4 v10, 0x0
invoke-direct {v9, p0, v10}, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;-><init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;)V
invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v8}, Landroid/webkit/WebView;->requestFocus()Z
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v8, v12}, Landroid/webkit/WebView;->setScrollBarStyle(I)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
const/4 v9, 0x4
invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;
iget-object v9, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mAuthUrl:Ljava/lang/String;
invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->clearCookies(Landroid/content/Context;Ljava/lang/String;)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
iget-object v9, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mAuthUrl:Ljava/lang/String;
invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v6, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;
move-result-object v8
invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v8
invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v1, v2, Landroid/util/DisplayMetrics;->density:F
const/high16 v8, 0x4120
mul-float/2addr v8, v1
float-to-int v4, v8
invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;
invoke-static {v8, v13}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;
iget-object v9, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v8, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;
const/16 v9, 0x11
invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;
const/4 v9, 0x2
invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v8
div-int/lit8 v8, v8, 0x2
add-int/lit8 v7, v8, 0x1
const/high16 v8, 0x41c8
iget v9, v2, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v8, v9
float-to-int v8, v8
invoke-virtual {v5, v7, v8, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
iget-object v8, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;
iget-object v9, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v8, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private initWindow()V
.registers 5
const/4 v3, -0x1
const/4 v2, 0x0
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->requestWindowFeature(I)Z
invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V
invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
new-instance v0, Landroid/widget/RelativeLayout;
invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public dismiss()V
.registers 2
iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z
if-nez v0, :cond_18
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_15
invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
:cond_18
return-void
.end method
.method public onAttachedToWindow()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z
invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V
return-void
.end method
.method public onBackPressed()V
.registers 2
invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V
:cond_c
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/sina/weibo/sdk/auth/WeiboDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initWindow()V
invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initLoadingDlg()V
invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initWebView()V
invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initCloseButton()V
const-string v1, " - Lcom/sina/weibo/sdk/auth/WeiboDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDetachedFromWindow()V
.registers 3
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;
:cond_1d
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z
invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V
return-void
.end method