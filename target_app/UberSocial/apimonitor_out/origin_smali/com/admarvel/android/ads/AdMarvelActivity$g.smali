.class public Lcom/admarvel/android/ads/AdMarvelActivity$g;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ProgressBar;

.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelActivity;

.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;Landroid/content/Context;)V
    .registers 12

    const/16 v8, 0xd

    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->e:Z

    iput-boolean v7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->f:Z

    iput-boolean v7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->g:Z

    iput v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->h:I

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->d:Landroid/content/Context;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42c8

    invoke-direct {p0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_c9

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_64
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    const v3, 0xb4be5ec

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;)Z

    move-result v0

    if-eqz v0, :cond_c8

    iput-boolean v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->f:Z

    invoke-static {p1, v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    invoke-static {p1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Lcom/admarvel/android/ads/AdMarvelActivity;->E(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c8
    return-void

    :cond_c9
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x1010289

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x4248

    invoke-direct {p0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a(F)I

    move-result v2

    const/high16 v3, 0x4248

    invoke-direct {p0, v3}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_64
.end method

.method private a(F)I
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelActivity$g;)V
    .registers 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->d()V

    return-void
.end method

.method private d()V
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v2, v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    sget v0, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "CONTROLS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/w;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WEBVIEW"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->e:Z

    if-nez v3, :cond_61

    if-eqz v1, :cond_60

    if-eqz v2, :cond_60

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->clearHistory()V

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Lcom/admarvel/android/ads/w;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_60
    :goto_60
    return-void

    :cond_61
    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->stopLoading()V

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d()V

    invoke-virtual {v2, v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVisibility(I)V

    :cond_6c
    if-eqz v1, :cond_71

    invoke-virtual {v1, v5}, Lcom/admarvel/android/ads/w;->setVisibility(I)V

    :cond_71
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_60
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->g:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->e:Z

    return-void
.end method

.method public c()V
    .registers 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->setShowing(Z)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->setVisibility(I)V

    return-void
.end method

.method public getProgress()I
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->h:I

    return v0
.end method

.method public setCancelable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->f:Z

    return-void
.end method

.method public setProgress(I)V
    .registers 5

    iput p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->h:I

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->c()V

    :cond_e
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$g;->g:Z

    return-void
.end method
