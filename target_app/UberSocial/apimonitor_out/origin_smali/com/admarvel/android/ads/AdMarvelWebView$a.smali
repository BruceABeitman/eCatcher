.class Lcom/admarvel/android/ads/AdMarvelWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->e:I

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v2, Lcom/admarvel/android/ads/k;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->f:Ljava/io/File;

    invoke-direct {v2, v0, v1, v3}, Lcom/admarvel/android/ads/k;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/io/File;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->c:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->d:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$a;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/admarvel/android/ads/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_42
    return-void
.end method
