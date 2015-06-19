.class Lcom/admarvel/android/ads/AdMarvelWebView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
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

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/f;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/admarvel/android/ads/f;->c()V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/f;->b()V

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;

    :cond_34
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->H(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$al;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->H(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$al;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelWebView$al;)Lcom/admarvel/android/ads/AdMarvelWebView$al;

    :cond_49
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->m(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->g()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->invalidate()V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->requestLayout()V

    :cond_79
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->forceLayout()V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestLayout()V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->invalidate()V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestFocus()Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_96} :catch_98

    goto/16 :goto_a

    :catch_98
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_a
.end method
