.class public Lcom/instagram/android/activity/FoursquareAuthActivity;
.super Lcom/instagram/base/activity/d;
.source "FoursquareAuthActivity.java"


# instance fields
.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/activity/FoursquareAuthActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/activity/FoursquareAuthActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/support/v4/app/Fragment;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-class v2, Lcom/instagram/android/activity/FoursquareAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/activity/FoursquareAuthActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->setResult(ILandroid/content/Intent;)V

    :goto_b
    invoke-virtual {p0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->finish()V

    return-void

    :cond_f
    new-instance v1, Lcom/instagram/share/d/a;

    invoke-direct {v1, p1}, Lcom/instagram/share/d/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/instagram/share/d/a;->c()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_b
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "#access_token="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "#access_token="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_3

    :catch_15
    move-exception v1

    iget-object v1, p0, Lcom/instagram/android/activity/FoursquareAuthActivity;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to pull access_token from URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/aw;->foursquare_auth:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->setContentView(I)V

    sget v0, Lcom/facebook/av;->webView:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FoursquareAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Lcom/instagram/android/activity/k;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/k;-><init>(Lcom/instagram/android/activity/FoursquareAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://foursquare.com/oauth2/authenticate?client_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/share/d/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&response_type=token&redirect_uri=https://instagram.com/foursquare/oauth_callback/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
