.class Lcom/admarvel/android/ads/AdMarvelWebView$v$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView$v$1;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$v$1;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView$v$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView$v$1;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
