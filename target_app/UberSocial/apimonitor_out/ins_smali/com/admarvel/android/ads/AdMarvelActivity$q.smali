.class  Lcom/admarvel/android/ads/AdMarvelActivity$q;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.field private c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 10
const/4 v4, 0x0
:try_start_1
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_21
if-eqz v1, :cond_21
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->c:Ljava/lang/String;
if-eqz v2, :cond_21
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->c:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-gtz v2, :cond_22
:cond_21
:goto_21
return-void
:cond_22
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->c:Z
sget v2, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "BR_VIDEO"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v3
check-cast v3, Lcom/admarvel/android/ads/p;
if-nez v3, :cond_fc
new-instance v5, Lcom/admarvel/android/ads/p;
invoke-direct {v5, v0}, Lcom/admarvel/android/ads/p;-><init>(Landroid/content/Context;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, "BR_VIDEO"
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Lcom/admarvel/android/ads/p;->setTag(Ljava/lang/Object;)V
iget-boolean v3, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z
if-eqz v3, :cond_10f
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v6, -0x1
const/4 v7, -0x1
invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v6, 0xd
invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {v5, v3}, Lcom/admarvel/android/ads/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I
move-result v6
move v3, v4
:goto_83
if-ge v3, v6, :cond_8b
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;
move-result-object v4
if-ne v4, v1, :cond_10b
:cond_8b
invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V
invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
const/4 v3, 0x0
invoke-virtual {v1, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundColor(I)V
const/4 v3, 0x0
invoke-virtual {v1, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
:try_end_9c
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9c} :catch_f2
move-result v3
const/16 v4, 0xb
if-lt v3, v4, :cond_c8
:try_start_a1
const-class v3, Landroid/view/View;
const-string v4, "setLayerType"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Class;
const/4 v7, 0x0
sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v8, v6, v7
const/4 v7, 0x1
const-class v8, Landroid/graphics/Paint;
aput-object v8, v6, v7
invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v6, 0x0
const/4 v7, 0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v4, v6
const/4 v6, 0x1
const/4 v7, 0x0
aput-object v7, v4, v6
invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_start_c8
:try_end_c8
.catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c8} :catch_11d
:cond_c8
:goto_c8
invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
:goto_cb
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->c:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v5, v2}, Lcom/admarvel/android/ads/p;->a(Landroid/net/Uri;)V
const/4 v2, 0x0
invoke-virtual {v5, v2}, Lcom/admarvel/android/ads/p;->setVisibility(I)V
new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;
invoke-direct {v2, p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$q;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v5, v2}, Lcom/admarvel/android/ads/p;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V
new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$q$2;
invoke-direct {v2, p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$q$2;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$q;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v5, v2}, Lcom/admarvel/android/ads/p;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V
new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$q$3;
invoke-direct {v2, p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$q$3;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$q;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
invoke-virtual {v5, v2}, Lcom/admarvel/android/ads/p;->a(Landroid/media/MediaPlayer$OnErrorListener;)V
:try_end_f0
.catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_f0} :catch_f2
goto/16 :goto_21
:catch_f2
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_21
:try_start_fc
:cond_fc
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->c:Ljava/lang/String;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/admarvel/android/ads/p;->a(Landroid/net/Uri;)V
goto/16 :goto_21
:cond_10b
add-int/lit8 v3, v3, 0x1
goto/16 :goto_83
:cond_10f
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v4, 0x1
const/4 v6, 0x1
invoke-direct {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v3}, Lcom/admarvel/android/ads/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
:try_end_11c
.catch Ljava/lang/Exception; {:try_start_fc .. :try_end_11c} :catch_f2
goto :goto_cb
:catch_11d
move-exception v3
goto :goto_c8
.end method