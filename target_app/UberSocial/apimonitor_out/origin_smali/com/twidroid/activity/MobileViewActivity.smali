.class public Lcom/twidroid/activity/MobileViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "MobileViewActivity"


# instance fields
.field protected a:Lcom/twidroid/ui/themes/r;

.field protected b:Landroid/os/Handler;

.field protected c:Landroid/widget/ProgressBar;

.field d:Lcom/admarvel/android/ads/AdMarvelView;

.field e:Ljava/util/HashMap;

.field f:Ljava/util/TimerTask;

.field private h:Lcom/twidroid/d/v;

.field private i:Lcom/twidroid/UberSocialApplication;

.field private j:Z

.field private k:Z

.field private l:Landroid/webkit/WebView;

.field private m:Z

.field private n:Ljava/util/Timer;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->j:Z

    iput-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/twidroid/activity/MobileViewActivity;)Lcom/twidroid/d/v;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    return-object v0
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/activity/MobileViewActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/activity/MobileViewActivity;->a(I)V

    return-void
.end method

.method private a(Z)V
    .registers 8

    invoke-static {p0}, Lcom/ubermedia/b/h;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "GEOLOCATION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bs()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "GEOLOCATION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_32

    new-instance v0, Lcom/twidroid/net/c/a;

    const-string v1, "network"

    new-instance v2, Lcom/twidroid/activity/MobileViewActivity$3;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/MobileViewActivity$3;-><init>(Lcom/twidroid/activity/MobileViewActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/net/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/c;)V

    goto :goto_32
.end method

.method static synthetic a(Lcom/twidroid/activity/MobileViewActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/activity/MobileViewActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/twidroid/activity/MobileViewActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/activity/MobileViewActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/activity/MobileViewActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/twidroid/activity/MobileViewActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;

    return-object v0
.end method

.method private d()V
    .registers 5

    const/4 v3, 0x1

    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    new-instance v1, Lcom/twidroid/activity/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/twidroid/activity/k;-><init>(Lcom/twidroid/activity/MobileViewActivity;Lcom/twidroid/activity/MobileViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/activity/MobileViewActivity;->a()V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    new-instance v1, Lcom/twidroid/activity/MobileViewActivity$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/MobileViewActivity$1;-><init>(Lcom/twidroid/activity/MobileViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic d(Lcom/twidroid/activity/MobileViewActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->j:Z

    return v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/twidroid/activity/MobileViewActivity;->g()V

    :cond_23
    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;

    if-eqz v0, :cond_1c

    :try_start_14
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method private g()V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;

    if-eqz v0, :cond_11

    :try_start_9
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_2f

    :cond_11
    :goto_11
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;

    new-instance v0, Lcom/twidroid/activity/MobileViewActivity$5;

    invoke-direct {v0, p0}, Lcom/twidroid/activity/MobileViewActivity$5;-><init>(Lcom/twidroid/activity/MobileViewActivity;)V

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->f:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->n:Ljava/util/Timer;

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->f:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->bF()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->c:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->a:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->C()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/Display;)V
    .registers 7

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/twidroid/activity/MobileViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ubersocial.theme."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twidroid/net/c/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->a(Z)V
    :try_end_21
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_21} :catch_12d

    :goto_21
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "USER_ID"

    iget-object v3, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "USER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "twitter/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "WIDTH"

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "USER_NAME"

    iget-object v3, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "THEME"

    iget-object v3, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twidroid/ui/themes/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "POSTAL_CODE"

    iget-object v3, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    invoke-virtual {v3}, Lcom/twidroid/d/v;->aY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "UBERAPI"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_144

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_13a

    iget-object v2, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v3, "NT"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_137

    const-string v0, "2"

    :goto_d5
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14e

    move v0, v1

    :goto_e9
    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "DPARAM26"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->a(Landroid/widget/FrameLayout;)V

    :try_start_100
    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelView;->setEnableClickRedirect(Z)V

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelView;->setDisableAnimation(Z)V

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    new-instance v2, Lcom/twidroid/activity/MobileViewActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/activity/MobileViewActivity$4;-><init>(Lcom/twidroid/activity/MobileViewActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelView;->setListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->b(Landroid/widget/FrameLayout;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_12c} :catch_1c6

    :goto_12c
    return-void

    :catch_12d
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    goto/16 :goto_21

    :cond_137
    const-string v0, "1"

    goto :goto_d5

    :cond_13a
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "NT"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_144
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;

    const-string v2, "NT"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_14e
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15c

    const/4 v0, 0x2

    goto :goto_e9

    :cond_15c
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16a

    const/4 v0, 0x3

    goto :goto_e9

    :cond_16a
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_179

    const/4 v0, 0x4

    goto/16 :goto_e9

    :cond_179
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_188

    const/4 v0, 0x5

    goto/16 :goto_e9

    :cond_188
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_197

    const/4 v0, 0x6

    goto/16 :goto_e9

    :cond_197
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    const/4 v0, 0x7

    goto/16 :goto_e9

    :cond_1a6
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    const/16 v0, 0x8

    goto/16 :goto_e9

    :cond_1b6
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    const/16 v0, 0x9

    goto/16 :goto_e9

    :catch_1c6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12c

    :cond_1cc
    move v0, v1

    goto/16 :goto_e9
.end method

.method public a(Landroid/widget/FrameLayout;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/widget/FrameLayout;)V
    .registers 6

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x4214

    invoke-virtual {p0}, Lcom/twidroid/activity/MobileViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/twidroid/activity/MobileViewActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/MobileViewActivity$2;-><init>(Lcom/twidroid/activity/MobileViewActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected c()V
    .registers 4

    const v2, 0x7f0900f2

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/MobileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->a(Landroid/view/Display;)V

    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0, v2}, Lcom/twidroid/activity/MobileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->h:Lcom/twidroid/d/v;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->i:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->a:Lcom/twidroid/ui/themes/r;

    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/MobileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/twidroid/activity/MobileViewActivity;->d()V

    invoke-virtual {p0}, Lcom/twidroid/activity/MobileViewActivity;->c()V

    invoke-direct {p0}, Lcom/twidroid/activity/MobileViewActivity;->e()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    packed-switch p1, :pswitch_data_24

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_d
    return v0

    :pswitch_e
    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/twidroid/activity/MobileViewActivity;->a()V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_1e
    const/4 v0, 0x1

    goto :goto_d

    :cond_20
    invoke-virtual {p0}, Lcom/twidroid/activity/MobileViewActivity;->finish()V

    goto :goto_1e

    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_e
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->j:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->j:Z

    iget-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->k:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/twidroid/activity/MobileViewActivity;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/activity/MobileViewActivity;->k:Z

    :cond_10
    return-void
.end method
