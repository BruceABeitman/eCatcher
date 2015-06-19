.class Lcom/admarvel/android/ads/AdMarvelWebView$o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$o;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelWebView$o;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$o;Lcom/admarvel/android/ads/AdMarvelWebView;)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o$2;->b:Lcom/admarvel/android/ads/AdMarvelWebView$o;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d()V

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
