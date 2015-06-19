.class Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->checkForApplicationSupportedOrientations(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

.field final synthetic val$mCallback:Ljava/lang/String;

.field final synthetic val$supportedScreenOrientationParam:Ljava/lang/String;

.field final synthetic val$view:Lcom/admarvel/android/ads/AdMarvelInternalWebView;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;->val$view:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;->val$mCallback:Ljava/lang/String;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;->val$supportedScreenOrientationParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;->val$view:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;->val$mCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$1;->val$supportedScreenOrientationParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
