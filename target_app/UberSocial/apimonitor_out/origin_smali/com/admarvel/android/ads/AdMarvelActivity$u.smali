.class Lcom/admarvel/android/ads/AdMarvelActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    move-object v1, v0

    :goto_d
    if-nez v1, :cond_12

    :goto_f
    return-void

    :cond_10
    const/4 v1, 0x0

    goto :goto_d

    :cond_12
    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getEnableClickRedirect()Z

    move-result v0

    if-eqz v0, :cond_75

    :try_start_18
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    if-eqz v0, :cond_eb

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_eb

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_59} :catch_5a

    goto :goto_f

    :catch_5a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Exception in RedirectRunnable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :cond_75
    :goto_75
    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->getOfflinekeyUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_eb
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_132

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_132

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_132
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    if-eqz v0, :cond_185

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v2, "admarvelsdk"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_185

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v3, "admarvelsdk"

    const-string v4, ""

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v6, "admarvelsdk"

    invoke-static {v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_185
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    if-eqz v0, :cond_1d8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v2, "admarvelinternal"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_1d8

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v3, "admarvelinternal"

    const-string v4, ""

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v6, "admarvelinternal"

    invoke-static {v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1d8
    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_234

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    if-eqz v0, :cond_234

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v2, "admarvelvideo"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_234

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v2, "admarvelvideo"

    const-string v3, "http://"

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

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

    if-eqz v0, :cond_222

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    :cond_222
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_75

    :cond_234
    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    if-eqz v0, :cond_28b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v2, "admarvelexternal"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_28b

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v4, "admarvelexternal"

    const-string v5, ""

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    const-string v7, "admarvelexternal"

    invoke-static {v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

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

    if-eqz v2, :cond_279

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    :cond_279
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_75

    :cond_28b
    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_75

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "url"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isInterstitial"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isInterstitialClick"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V
    :try_end_2d7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_2d7} :catch_5a

    :try_start_2d7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$u;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_2f2
    .catch Ljava/io/IOException; {:try_start_2d7 .. :try_end_2f2} :catch_316
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2f2} :catch_5a

    :goto_2f2
    :try_start_2f2
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_301

    const-string v0, "source"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->t(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_301
    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_75

    :catch_316
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_31a} :catch_5a

    goto :goto_2f2
.end method
