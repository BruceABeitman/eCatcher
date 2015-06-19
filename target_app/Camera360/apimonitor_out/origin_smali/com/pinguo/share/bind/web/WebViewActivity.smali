.class public Lcom/pinguo/share/bind/web/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# static fields
.field public static final BIND_RESULT:Ljava/lang/String; = "bind_result"

.field public static final PATH:Ljava/lang/String; = "WEB_PATH"

.field public static final SUCCESS_URL:Ljava/lang/String; = "http://success.callback.html"

.field private static final TAG:Ljava/lang/String; = "WebViewActivity"

.field public static final TITLE:Ljava/lang/String; = "WEB_TITLE"

.field public static final sub:Ljava/lang/String; = "?value="


# instance fields
.field private mPgLL:Landroid/view/View;

.field private mSuccessUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleRL:Landroid/view/View;

.field private mTitleTX:Landroid/widget/TextView;

.field private mWebLL:Landroid/view/View;

.field private path:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/bind/web/WebViewActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mTitleRL:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mTitleTX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mWebLL:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mPgLL:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/share/bind/web/WebViewActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mSuccessUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->requestWindowFeature(I)Z

    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->setContentView(I)V

    const v1, 0x7f0a007b

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    const v1, 0x7f0a00e2

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mWebLL:Landroid/view/View;

    const v1, 0x7f0a00e0

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mPgLL:Landroid/view/View;

    const v1, 0x7f0a00e3

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mTitleRL:Landroid/view/View;

    const v1, 0x7f0a00c1

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mTitleTX:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/share/bind/web/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "WEB_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/share/bind/web/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "WEB_TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mTitle:Ljava/lang/String;

    const-string/jumbo v1, "http://success.callback.html"

    iput-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mSuccessUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_70

    const v1, 0x7f0a00c0

    invoke-virtual {p0, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pinguo/share/bind/web/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/pinguo/share/bind/web/WebViewActivity$1;-><init>(Lcom/pinguo/share/bind/web/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_70
    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFormData()V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/share/bind/web/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/pinguo/share/bind/web/WebViewActivity$2;-><init>(Lcom/pinguo/share/bind/web/WebViewActivity;)V

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public resultActivity(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "WebViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resultActivity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2a

    const-string/jumbo v2, "bind_result"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2a
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/share/bind/web/WebViewActivity;->finish()V

    return-void
.end method
