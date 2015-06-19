.class Lcom/admarvel/android/ads/AdMarvelWebView$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$y;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$y;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->T(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPagFinished is not  called after delay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/admarvel/android/ads/u;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$y;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$y;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->n(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V

    :cond_27
    return-void
.end method
