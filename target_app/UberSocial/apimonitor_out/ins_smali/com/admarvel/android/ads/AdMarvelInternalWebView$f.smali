.class  Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.field private c:Z
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Ljava/lang/Boolean;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;->c:Z
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;->c:Z
return-void
.end method
.method public run()V
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
move-result v1
if-nez v1, :cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
check-cast v1, Landroid/app/Activity;
if-eqz v1, :cond_b
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$f;->c:Z
if-eqz v2, :cond_80
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
move-result v2
if-nez v2, :cond_5e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "BTN_CLOSE"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
if-eqz v1, :cond_b
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z
move-result v0
if-eqz v0, :cond_b
const/16 v0, 0x8
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto :goto_b
:cond_5e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "BTN_CLOSE_IMAGE"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-eqz v0, :cond_b
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_b
:cond_80
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "BTN_CLOSE"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/LinearLayout;
if-eqz v2, :cond_b
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v3
if-eqz v3, :cond_a6
invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_a6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "BTN_CLOSE_IMAGE"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-eqz v0, :cond_b
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v1
if-eqz v1, :cond_b
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_b
.end method