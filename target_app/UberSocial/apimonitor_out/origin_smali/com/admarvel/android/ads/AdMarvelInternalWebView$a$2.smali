.class Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a()V

    const/4 v0, 0x1

    goto :goto_15

    :cond_1d
    const/4 v0, 0x0

    goto :goto_15
.end method
