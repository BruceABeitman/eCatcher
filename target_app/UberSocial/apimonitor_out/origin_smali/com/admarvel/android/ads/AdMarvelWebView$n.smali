.class Lcom/admarvel/android/ads/AdMarvelWebView$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/lang/ref/WeakReference;

.field private final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;II)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->a:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->b:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->c:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->f:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->a:I

    iput p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIII)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->a:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->b:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->c:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->f:Ljava/lang/ref/WeakReference;

    iput p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->a:I

    iput p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->b:I

    iput p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->c:I

    iput p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v5, -0x2

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/admarvel/android/ads/AdMarvelWebView;

    if-nez v10, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v10, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EXPAND_LAYOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EXPAND_BG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestFocus()Z

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_ae

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->a:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->b:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->c:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->d:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->c:I

    if-eqz v2, :cond_ae

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_ae
    iget v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->c:I

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->d:I

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->a:I

    iget v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(IIII)V

    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->t(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v0

    if-eqz v0, :cond_11a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v10, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BTN_CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    const/high16 v2, 0x41f0

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v12, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->r(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->c:I

    iget v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->d:I

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->a:I

    iget v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$n;->b:I

    float-to-int v9, v9

    invoke-static/range {v0 .. v9}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$i;

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/admarvel/android/ads/AdMarvelWebView$i;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_11a
    invoke-static {v10, v12}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z

    invoke-virtual {v11}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {v11}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, v10, Lcom/admarvel/android/ads/AdMarvelWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->invalidate()V

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestLayout()V

    iget-object v0, v10, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_13f

    iget-object v0, v10, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/admarvel/android/ads/s;->a()V

    :cond_13f
    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->invalidate()V

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestLayout()V

    goto/16 :goto_d
.end method
