.class  Lcom/admarvel/android/ads/AdMarvelWebView$ah;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private b:Ljava/lang/String;
.field private c:Landroid/app/Activity;
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->a:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 9
const/16 v7, 0x9
const/4 v6, 0x1
const/16 v5, 0x8
const/4 v4, 0x3
const/4 v3, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
if-nez v0, :cond_16
:cond_15
:goto_15
return-void
:cond_16
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;
const-string v2, "Portrait"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_34
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_15
:cond_34
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;
const-string v2, "LandscapeLeft"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4f
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V
invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
move-result v0
if-eq v0, v6, :cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_15
:cond_4f
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;
const-string v2, "PortraitUpSideDown"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5f
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_15
:cond_5f
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;
const-string v2, "LandscapeRight"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v1, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
move-result v0
if-eq v0, v4, :cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_15
:cond_7a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;
const-string v2, "none"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_15
invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_91
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto :goto_15
:cond_91
invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
move-result v1
if-ne v1, v4, :cond_15
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v1, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V
invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
move-result v0
if-eq v0, v4, :cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;
invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V
goto/16 :goto_15
.end method