.class  Lcom/admarvel/android/ads/AdMarvelWebView$z$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;
.field final synthetic b:I
.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelWebView$z;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$z;Lcom/admarvel/android/ads/AdMarvelWebView;I)V
.registers 4
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->c:Lcom/admarvel/android/ads/AdMarvelWebView$z;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iput p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->b:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 11
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->c:Lcom/admarvel/android/ads/AdMarvelWebView$z;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$z;->a(Lcom/admarvel/android/ads/AdMarvelWebView$z;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
if-eqz v0, :cond_9f
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v1
if-eqz v1, :cond_9f
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
const v1, 0x1020002
invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v0
move-object v2, v0
check-cast v2, Landroid/view/ViewGroup;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "EXPAND_LAYOUT"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
if-nez v0, :cond_44
:goto_43
:cond_43
return-void
:cond_44
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
move-object v6, v0
check-cast v6, Landroid/widget/FrameLayout$LayoutParams;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "BTN_CLOSE"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
if-eqz v0, :cond_43
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I
move-result v8
invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I
move-result v7
const/4 v2, 0x1
const/high16 v3, 0x41f0
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v9
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->r(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
iget v3, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
iget v4, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I
iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I
float-to-int v9, v9
invoke-static/range {v0 .. v9}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;IIIIIII)V
:cond_9f
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->c:Lcom/admarvel/android/ads/AdMarvelWebView$z;
iget v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$z$1;->b:I
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$z;->a(Lcom/admarvel/android/ads/AdMarvelWebView$z;I)I
goto :goto_43
.end method