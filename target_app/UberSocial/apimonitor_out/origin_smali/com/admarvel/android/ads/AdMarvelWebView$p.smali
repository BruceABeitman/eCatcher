.class Lcom/admarvel/android/ads/AdMarvelWebView$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->a:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_22
    iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->n(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/o;

    invoke-static {v2, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/o;)V

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "expand_url"

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "closeBtnEnabled"

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->u(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "closeAreaEnabled"

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->v(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->w(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, "orientationState"

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->x(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_69
    const-string v1, "isInterstitial"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isInterstitialClick"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "source"

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GUID"

    iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V

    :try_start_88
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$p;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a3} :catch_d1

    :goto_a3
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    if-eqz v1, :cond_bb

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    invoke-interface {v1}, Lcom/admarvel/android/ads/s;->a()V

    :cond_bb
    new-instance v1, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_d1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3
.end method
