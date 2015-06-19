.class Lcom/admarvel/android/ads/AdMarvelWebView$an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$an;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$an;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$an;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$an;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
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

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$an;->b:Ljava/lang/String;

    const-string v3, "show"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    if-eqz v1, :cond_3c

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVisibility(I)V

    :cond_3c
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$an;->b:Ljava/lang/String;

    const-string v3, "hide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v1, :cond_a

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVisibility(I)V

    goto :goto_a
.end method
