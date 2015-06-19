.class  Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/f;
.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelWebView;
.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field final synthetic d:Lcom/admarvel/android/ads/AdMarvelWebView$ab;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$ab;Lcom/admarvel/android/ads/f;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 5
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->d:Lcom/admarvel/android/ads/AdMarvelWebView$ab;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->a:Lcom/admarvel/android/ads/f;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;
iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->c:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->a:Lcom/admarvel/android/ads/f;
invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->getHeight()I
move-result v0
if-nez v0, :cond_3b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->D(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_3b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->c:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView;
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
:goto_3a
return-void
:cond_3b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;->a:Lcom/admarvel/android/ads/f;
invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->f()V
goto :goto_3a
.end method