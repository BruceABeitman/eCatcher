.class Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->a(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;->b(Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_33

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_33

    move-object v1, v0

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/o;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/admarvel/android/ads/o;->a()V

    :cond_30
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_33
    :goto_33
    return-void

    :cond_34
    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/admarvel/android/ads/i;->b()Z

    move-result v2

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->b()V

    iget-object v3, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;

    if-eqz v3, :cond_6b

    iget-object v3, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6b

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_6b
    if-nez v2, :cond_70

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_70
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->a()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_33

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    goto :goto_33
.end method
