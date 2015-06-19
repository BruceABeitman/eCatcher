.class Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$000()Lcom/admarvel/android/b/c;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$000()Lcom/admarvel/android/b/c;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/b/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->b:Ljava/lang/String;

    if-eqz v0, :cond_12

    new-instance v1, Lcom/admarvel/android/b/c;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$002(Lcom/admarvel/android/b/c;)Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$000()Lcom/admarvel/android/b/c;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/b/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method
