.class public Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;
.super Landroid/app/Activity;
.source "Camera360CommonProblemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CN_FILE_NAME:Ljava/lang/String; = "faq.html"

.field private static final CN_FILE_URL:Ljava/lang/String; = "http://appres.camera360.com/faq/page/index"

.field private static final DEFAULT_HTML_FILE_PATH:Ljava/lang/String; = "file:///android_asset/www/"

.field private static final EN_FILE_NAME:Ljava/lang/String; = "faq_en.html"

.field private static final EN_FILE_URL:Ljava/lang/String; = "http://appres.camera360.com/faq/page/index?locale=en_us"

.field private static final HK_FILE_NAME:Ljava/lang/String; = "faq_hk.html"

.field private static final HK_FILE_URL:Ljava/lang/String; = "http://appres.camera360.com/faq/page/index?locale=zh_hk"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackBtn:Landroid/view/View;

.field private mFileUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNextBtn:Landroid/view/View;

.field private mOfflineHtmlUrl:Ljava/lang/String;

.field private mRefreshBtn:Landroid/view/View;

.field private mRotationAnim:Landroid/view/animation/Animation;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRefreshBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mOfflineHtmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method private initAnim()V
    .registers 3

    const v1, 0x7f040007

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRotationAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRotationAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initData()V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "http://appres.camera360.com/faq/page/index"

    iput-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mFileUrl:Ljava/lang/String;

    const-string/jumbo v1, "file:///android_asset/www/faq.html"

    iput-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mOfflineHtmlUrl:Ljava/lang/String;

    :goto_16
    return-void

    :cond_17
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_2c
    const-string/jumbo v1, "http://appres.camera360.com/faq/page/index?locale=zh_hk"

    iput-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mFileUrl:Ljava/lang/String;

    const-string/jumbo v1, "file:///android_asset/www/faq_hk.html"

    iput-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mOfflineHtmlUrl:Ljava/lang/String;

    goto :goto_16

    :cond_37
    const-string/jumbo v1, "http://appres.camera360.com/faq/page/index?locale=en_us"

    iput-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mFileUrl:Ljava/lang/String;

    const-string/jumbo v1, "file:///android_asset/www/faq_en.html"

    iput-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mOfflineHtmlUrl:Ljava/lang/String;

    goto :goto_16
.end method

.method private initUI()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const v3, 0x7f0a0281

    const/4 v4, 0x1

    const v2, 0x7f0a027f

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    const v2, 0x7f08016d

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    const v2, 0x7f08016e

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V

    new-instance v2, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$1;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$1;-><init>(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)V

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v2, 0x7f0a0283

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mNextBtn:Landroid/view/View;

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mNextBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRefreshBtn:Landroid/view/View;

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRefreshBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0282

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mBackBtn:Landroid/view/View;

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mBackBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0284

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$2;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$2;-><init>(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->initAnim()V

    return-void
.end method

.method private updateBtns()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mBackBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mNextBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mBackBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_22
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mNextBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b
.end method

.method private updateWebview()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->updateBtns()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRefreshBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mRotationAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {p0}, Lcom/pinguo/Camera360Lib/utils/SystemUtils;->hasNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$3;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity$3;-><init>(Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_22
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_2a
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->updateWebview()V

    goto :goto_7

    :pswitch_33
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->updateWebview()V

    goto :goto_7

    :pswitch_data_3c
    .packed-switch 0x7f0a0281
        :pswitch_8
        :pswitch_2a
        :pswitch_33
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->initUI()V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360CommonProblemActivity;->updateWebview()V

    return-void
.end method
