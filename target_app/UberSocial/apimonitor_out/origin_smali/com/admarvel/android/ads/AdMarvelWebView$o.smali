.class Lcom/admarvel/android/ads/AdMarvelWebView$o;
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

.field private final g:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IIIILcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->a:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->b:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->c:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->f:Ljava/lang/ref/WeakReference;

    iput p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->a:I

    iput p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->b:I

    iput p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->c:I

    iput p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->d:I

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->g:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method

.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;IILcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->a:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->b:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->c:I

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->f:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->a:I

    iput p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->b:I

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->g:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    move-object v11, v0

    if-nez v11, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v12, v0

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "INTERNAL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-object v14, v0

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isAdExpanding:Z

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "EXPAND_BG"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$o$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/admarvel/android/ads/AdMarvelWebView$o$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$o;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestFocus()Z

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$o$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v11}, Lcom/admarvel/android/ads/AdMarvelWebView$o$2;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$o;Lcom/admarvel/android/ads/AdMarvelWebView;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v15, Landroid/widget/RelativeLayout;

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "EXPAND_LAYOUT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->a:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->b:I

    invoke-direct {v5, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->c:I

    if-nez v1, :cond_23c

    const/4 v1, 0x1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_cf
    :goto_cf
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->c:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->d:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getChildCount()I

    move-result v6

    move v1, v2

    :goto_e4
    if-ge v1, v6, :cond_ec

    invoke-virtual {v11, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, v14, :cond_24a

    :cond_ec
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EXPAND_PLACE_HOLDER"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v14}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getWidth()I

    move-result v7

    invoke-virtual {v14}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2, v1, v6}, Lcom/admarvel/android/ads/AdMarvelWebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v14}, Lcom/admarvel/android/ads/AdMarvelWebView;->removeView(Landroid/view/View;)V

    if-eqz v14, :cond_135

    move-object/from16 v0, p0

    iget v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->c:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->a:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->b:I

    invoke-virtual {v14, v1, v2, v6, v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(IIII)V

    :cond_135
    invoke-virtual {v15, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-static {v11, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->b(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z

    invoke-virtual {v3, v15, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->bringToFront()V

    invoke-static {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->p(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    invoke-static {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->q(Lcom/admarvel/android/ads/AdMarvelWebView;)Z

    move-result v1

    if-nez v1, :cond_1ef

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BTN_CLOSE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x4248

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/admarvel/android/ads/ab;->a(FLandroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x4248

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->a(FLandroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    const/4 v3, 0x1

    const/high16 v4, 0x41f0

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    invoke-static {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->r(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->a:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->b:I

    float-to-int v10, v10

    invoke-static/range {v1 .. v10}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;IIIIIII)V

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$i;

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Lcom/admarvel/android/ads/AdMarvelWebView$i;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelWebView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-static {v11, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$z;

    const/4 v2, 0x3

    invoke-direct {v1, v11, v12, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$z;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Landroid/app/Activity;I)V

    invoke-static {v11, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelWebView$z;)Lcom/admarvel/android/ads/AdMarvelWebView$z;

    invoke-static {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->s(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView$z;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_1ef

    invoke-static {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->s(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelWebView$z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView$z;->enable()V

    :cond_1ef
    invoke-virtual {v13}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {v13}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v1, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->invalidate()V

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestLayout()V

    iget-object v1, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    if-eqz v1, :cond_212

    iget-object v1, v11, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v1

    invoke-interface {v1}, Lcom/admarvel/android/ads/s;->a()V

    :cond_212
    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->invalidate()V

    invoke-virtual {v11}, Lcom/admarvel/android/ads/AdMarvelWebView;->requestLayout()V

    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isAdExpanding:Z

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelWebView$m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelWebView$o;->g:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v2, v3, v12}, Lcom/admarvel/android/ads/AdMarvelWebView$m;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_234} :catch_236

    goto/16 :goto_f

    :catch_236
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_23c
    :try_start_23c
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v6, 0xb

    if-ge v1, v6, :cond_cf

    const/16 v1, 0x30

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_248} :catch_236

    goto/16 :goto_cf

    :cond_24a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e4
.end method
