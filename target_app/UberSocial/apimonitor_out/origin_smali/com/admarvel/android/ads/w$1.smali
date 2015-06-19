.class Lcom/admarvel/android/ads/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/w;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/w;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/w;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/w$1;->a:Lcom/admarvel/android/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/w$1;->a:Lcom/admarvel/android/ads/w;

    invoke-static {v0}, Lcom/admarvel/android/ads/w;->a(Lcom/admarvel/android/ads/w;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_3b

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_3b

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/i;->b()Z

    :goto_22
    iget-object v0, p0, Lcom/admarvel/android/ads/w$1;->a:Lcom/admarvel/android/ads/w;

    iget-object v0, v0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Ljava/lang/String;)Lcom/admarvel/android/ads/g;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/admarvel/android/ads/w$1;->a:Lcom/admarvel/android/ads/w;

    iget-object v0, v0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Ljava/lang/String;)Lcom/admarvel/android/ads/g;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/w$1;->a:Lcom/admarvel/android/ads/w;

    iget-object v1, v1, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/admarvel/android/ads/g;->a(Ljava/lang/String;)V

    :cond_3b
    return-void

    :cond_3c
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    goto :goto_22
.end method
