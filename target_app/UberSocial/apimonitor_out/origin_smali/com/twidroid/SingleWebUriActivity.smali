.class public Lcom/twidroid/SingleWebUriActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "EXTRA_URL"


# instance fields
.field c:Ljava/lang/String;

.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->J:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic b(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->J:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->J:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/net/c/a/f;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/SingleWebUriActivity;->l()Lcom/twidroid/net/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twidroid/SingleWebUriActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public d()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/twidroid/SingleWebUriActivity;->setContentView(I)V

    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/twidroid/SingleWebUriActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twidroid/SingleWebUriActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/twidroid/SingleWebUriActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->e:Ljava/lang/String;

    :cond_31
    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/twidroid/SingleWebUriActivity$1;

    invoke-direct {v1, p0}, Lcom/twidroid/SingleWebUriActivity$1;-><init>(Lcom/twidroid/SingleWebUriActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/twidroid/SingleWebUriActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Lcom/twidroid/activity/UberSocialBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/twidroid/SingleWebUriActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method
