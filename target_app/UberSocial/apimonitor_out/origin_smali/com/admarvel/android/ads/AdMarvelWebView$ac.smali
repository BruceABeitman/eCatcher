.class Lcom/admarvel/android/ads/AdMarvelWebView$ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;IIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->b:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->c:I

    iput p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->d:I

    iput p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->e:I

    iput p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->f:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_14

    if-nez v1, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EMBEDDED_VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/f;

    :goto_33
    if-eqz v0, :cond_14

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->e:I

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->f:I

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->c:I

    iget v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ac;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/admarvel/android/ads/f;->a(IIII)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->i()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_14

    :catch_44
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_14

    :cond_4d
    move-object v0, v1

    goto :goto_33
.end method
