.class  Lcom/admarvel/android/ads/AdMarvelActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/admarvel/android/ads/g;
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$b;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$b;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
if-eqz v0, :cond_a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_a
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_a
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInAppBrowserCloseCallback:Ljava/lang/String;
if-eqz v1, :cond_a
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInAppBrowserCloseCallback:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInAppBrowserCloseCallback:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
goto :goto_a
.end method