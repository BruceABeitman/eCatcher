.class Lcom/admarvel/android/ads/AdMarvelWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView;->a(IIIILcom/admarvel/android/ads/AdMarvelView;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelWebView;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;I)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    iput p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/16 v7, 0xb

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setClickable(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->a:I

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-ge v0, v7, :cond_ee

    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$c;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-direct {v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$c;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_5e
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/os/Handler;Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ADMARVEL"

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->b:Z

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getOfflineBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_ed
    return-void

    :cond_ee
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$b;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-direct {v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$b;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_5e

    :cond_10b
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-ge v0, v7, :cond_149

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AdMarvelLocalFileContentProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ed

    :cond_149
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-result-object v0

    const-string v1, "http://baseurl.admarvel.com"

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->e(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ed
.end method
