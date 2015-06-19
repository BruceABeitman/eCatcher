.class  Lcom/admarvel/android/ads/AdMarvelActivity$t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.field private c:F
.field private d:F
.field private e:F
.field private f:F
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;FFFF)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->b:Ljava/lang/ref/WeakReference;
iput p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->c:F
iput p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->d:F
iput p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->e:F
iput p6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->f:F
return-void
.end method
.method public run()V
.registers 7
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_14
if-nez v1, :cond_15
:cond_14
:goto_14
return-void
:cond_15
const-string v2, "javascript:console.log(\"Window Innerwidth \"+window.innerWidth);"
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
const/4 v2, 0x0
if-eqz v1, :cond_42
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "BR_VIDEO"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/p;
:cond_42
if-eqz v2, :cond_14
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->z(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I
move-result v3
invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I
move-result v1
invoke-virtual {v2}, Lcom/admarvel/android/ads/p;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
int-to-float v4, v3
iget v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->e:F
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I
int-to-float v4, v1
iget v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->f:F
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
int-to-float v3, v3
iget v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->c:F
mul-float/2addr v3, v4
float-to-int v3, v3
iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
int-to-float v1, v1
iget v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$t;->d:F
mul-float/2addr v1, v3
float-to-int v1, v1
iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2}, Lcom/admarvel/android/ads/p;->forceLayout()V
:try_end_7a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7b
goto :goto_14
:catch_7b
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_14
.end method