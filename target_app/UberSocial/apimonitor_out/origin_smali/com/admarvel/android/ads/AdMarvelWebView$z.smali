.class Lcom/admarvel/android/ads/AdMarvelWebView$z;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;I)V
    .registers 5

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->c:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView$z;I)I
    .registers 2

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->c:I

    return p1
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelWebView$z;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 7

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->c:I

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->c:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->c:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x10e

    if-gt v0, v1, :cond_7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$z;Lcom/admarvel/android/ads/AdMarvelWebView;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method
