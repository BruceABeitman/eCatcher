.class  Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11$1;->this$1:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11$1;->this$1:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11$1;->this$1:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;
iget-object v2, v2, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;->val$callback:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "(\"NO\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
return-void
.end method