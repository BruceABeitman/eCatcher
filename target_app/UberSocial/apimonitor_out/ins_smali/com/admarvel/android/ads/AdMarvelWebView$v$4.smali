.class  Lcom/admarvel/android/ads/AdMarvelWebView$v$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnErrorListener;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;
.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelWebView$v;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 4
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;->c:Lcom/admarvel/android/ads/AdMarvelWebView$v;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onError(Landroid/media/MediaPlayer;II)Z
.registers 7
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_32
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V
:cond_32
const/4 v0, 0x0
return v0
.end method