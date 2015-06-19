.class  Lcom/admarvel/android/ads/AdMarvelWebView$v$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/admarvel/android/ads/f$a;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;
.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelWebView$v;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 4
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->c:Lcom/admarvel/android/ads/AdMarvelWebView$v;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_53
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
const/4 v1, 0x2
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayerType(ILandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
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
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->requestLayout()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->invalidate()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$v$1$1;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$v$1$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$v$1;)V
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_53
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$h;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-direct {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$h;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method