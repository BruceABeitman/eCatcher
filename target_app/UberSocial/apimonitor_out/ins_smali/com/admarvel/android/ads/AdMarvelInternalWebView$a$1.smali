.class  Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnErrorListener;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$1;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onError(Landroid/media/MediaPlayer;II)Z
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$1;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a()V
const/4 v0, 0x1
return v0
.end method