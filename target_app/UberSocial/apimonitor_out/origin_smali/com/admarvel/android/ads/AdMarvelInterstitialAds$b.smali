.class Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/ref/WeakReference;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/ref/WeakReference;

.field private final k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelInterstitialAds;ILjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->d:Ljava/lang/String;

    iput p5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->e:I

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->g:Ljava/lang/ref/WeakReference;

    iput p8, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->h:I

    iput-object p9, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->j:Ljava/lang/ref/WeakReference;

    iput-object p11, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->k:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_5c

    if-eqz v1, :cond_5c

    new-instance v2, Lcom/admarvel/android/ads/j;

    invoke-direct {v2, v1}, Lcom/admarvel/android/ads/j;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->a:Ljava/util/Map;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object v0, v3, v4

    const/4 v0, 0x7

    iget v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->i:Ljava/lang/String;

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;->k:Landroid/os/Handler;

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/admarvel/android/ads/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5c
    return-void
.end method
