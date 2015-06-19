.class public Lcom/pinguo/camera360/push/business/web/PushWebActivity;
.super Landroid/app/Activity;
.source "PushWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA:Ljava/lang/String; = "app://pinguo.android.team.cameraView"

.field private static final ACTION_CLOUD:Ljava/lang/String; = "app://pinguo.android.team.cloud"

.field private static final ACTION_GALLERy:Ljava/lang/String; = "app://pinguo.android.team.albumView"

.field private static final KEY_BACK_LINK:Ljava/lang/String; = "return"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "newpush"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private backLink:Ljava/lang/String;

.field private process:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->backLink:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->process:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private doReturnLink()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->backLink:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->backLink:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_11

    :cond_d
    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->finish()V

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->backLink:Ljava/lang/String;

    const-string/jumbo v2, "app://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->finish()V

    goto :goto_10

    :cond_20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "app://pinguo.android.team.cameraView"

    iget-object v2, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->backLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :cond_34
    const-string/jumbo v1, "app://pinguo.android.team.albumView"

    iget-object v2, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->backLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_46
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->finish()V

    goto :goto_10
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->doReturnLink()V

    goto :goto_8

    :pswitch_d
    iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->process:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->process:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_8

    nop

    :pswitch_data_1e
    .packed-switch 0x7f0a0564
        :pswitch_9
        :pswitch_8
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushWeb(I)V

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushWebView(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_16
    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "return"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->backLink:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_ac

    :goto_39
    const-string/jumbo v5, "newpush"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/pinguo/camera360/push/utils/PushUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c8

    const v5, 0x7f0300f1

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->setContentView(I)V

    const v5, 0x7f0a0567

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->process:Landroid/widget/ProgressBar;

    const v5, 0x7f0a0565

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a0568

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object v5, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;-><init>(Lcom/pinguo/camera360/push/business/web/PushWebActivity;Lcom/pinguo/camera360/push/business/web/PushWebActivity$MyWebViewClient;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Lcom/pinguo/camera360/push/business/web/PushWebActivity$1;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity$1;-><init>(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_ab
    return-void

    :catch_ac
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v5, "newpush"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_c8
    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->finish()V

    goto :goto_ab
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_c
    return v0

    :pswitch_d
    iget-object v1, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string/jumbo v1, "can go back"

    const-string/jumbo v2, "newpush"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_c

    :cond_24
    const-string/jumbo v1, "newpush"

    const-string/jumbo v2, "do link"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->doReturnLink()V

    goto :goto_c

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
