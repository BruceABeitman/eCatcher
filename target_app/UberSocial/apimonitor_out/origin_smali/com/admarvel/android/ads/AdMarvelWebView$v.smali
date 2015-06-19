.class Lcom/admarvel/android/ads/AdMarvelWebView$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->c:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EMBEDDED_VIDEO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/f;

    if-nez v2, :cond_e4

    new-instance v2, Lcom/admarvel/android/ads/f;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/admarvel/android/ads/f;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EMBEDDED_VIDEO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/f;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    :goto_63
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->y(Lcom/admarvel/android/ads/AdMarvelWebView;)I

    move-result v2

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->z(Lcom/admarvel/android/ads/AdMarvelWebView;)I

    move-result v4

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->A(Lcom/admarvel/android/ads/AdMarvelWebView;)I

    move-result v5

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->B(Lcom/admarvel/android/ads/AdMarvelWebView;)I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/admarvel/android/ads/f;->a(IIII)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->C(Lcom/admarvel/android/ads/AdMarvelWebView;)I

    move-result v2

    if-lez v2, :cond_9c

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->C(Lcom/admarvel/android/ads/AdMarvelWebView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9c
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->removeAllViews()V

    invoke-virtual {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;I)V

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$v$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-virtual {v3, v2}, Lcom/admarvel/android/ads/f;->a(Lcom/admarvel/android/ads/f$a;)V

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$v$2;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-virtual {v3, v2}, Lcom/admarvel/android/ads/f;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-virtual {v3, v2}, Lcom/admarvel/android/ads/f;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$v$4;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-virtual {v3, v2}, Lcom/admarvel/android/ads/f;->a(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d8} :catch_da

    goto/16 :goto_20

    :catch_da
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_e4
    move-object v3, v2

    goto/16 :goto_63
.end method
