.class Lcom/admarvel/android/ads/AdMarvelActivity$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    move-object v1, v0

    :goto_e
    if-nez v1, :cond_13

    :cond_10
    :goto_10
    return-object v7

    :cond_11
    move-object v1, v7

    goto :goto_e

    :cond_13
    :try_start_13
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "admarvelsdk"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_ab

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->s(Lcom/admarvel/android/ads/AdMarvelActivity;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "admarvelsdk"

    const-string v4, ""

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "admarvelsdk"

    invoke-static {v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_68
    :goto_68
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_70} :catch_71

    goto :goto_10

    :catch_71
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    goto :goto_10

    :cond_7d
    :try_start_7d
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "admarvelsdk"

    const-string v5, ""

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "admarvelsdk"

    invoke-static {v6, v8}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_68

    :cond_ab
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_132

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "admarvelinternal"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_132

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->s(Lcom/admarvel/android/ads/AdMarvelActivity;)Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "admarvelinternal"

    const-string v4, ""

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "admarvelinternal"

    invoke-static {v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_fa
    :goto_fa
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    :cond_104
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_fa

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "admarvelinternal"

    const-string v5, ""

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "admarvelinternal"

    invoke-static {v6, v8}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_fa

    :cond_132
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1cd

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "admarvelvideo"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_1cd

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->s(Lcom/admarvel/android/ads/AdMarvelActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_16f
    :goto_16f
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "admarvelvideo"

    const-string v3, "http://"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "admarvelvideo"

    invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "video/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1a7
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    :cond_1b1
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_16f

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_16f

    :cond_1cd
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29f

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "admarvelcustomvideo"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_29f

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->s(Lcom/admarvel/android/ads/AdMarvelActivity;)Z

    move-result v0

    if-eqz v0, :cond_27d

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_20a
    :goto_20a
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_216} :catch_71

    :try_start_216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_216 .. :try_end_231} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_231} :catch_71

    :goto_231
    const/high16 v0, 0x1000

    :try_start_233
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "url"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isCustomUrl"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "source"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->t(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    :cond_27d
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_20a

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto/16 :goto_20a

    :catch_29a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_231

    :cond_29f
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_306

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "admarvelexternal"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_306

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "admarvelexternal"

    const-string v5, ""

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "admarvelexternal"

    invoke-static {v6, v8}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2e6
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2fc

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    :cond_2fc
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    :cond_306
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_345

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$a;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_345
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->u(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_34d
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_34d} :catch_71

    goto/16 :goto_10
.end method
