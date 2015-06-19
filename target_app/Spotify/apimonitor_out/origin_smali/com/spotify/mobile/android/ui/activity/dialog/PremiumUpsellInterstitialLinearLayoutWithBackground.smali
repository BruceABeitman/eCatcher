.class public Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/graphics/Paint;

.field private final c:F

.field private final d:Landroid/view/animation/Interpolator;

.field private e:I

.field private f:I

.field private g:I

.field private final h:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground$2;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->h:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->h:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->c:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->b:Landroid/graphics/Paint;

    const v2, 0x7f090027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->e:I

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->g:I

    iget v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->c:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->f:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground$1;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method private a()V
    .registers 8

    const/high16 v4, 0x3f00

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->e:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_44

    move v0, v1

    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->f:I

    int-to-float v1, v1

    sub-float v3, v2, v0

    mul-float/2addr v1, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v3, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->g:I

    int-to-float v3, v3

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget v4, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->c:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a:Landroid/graphics/drawable/Drawable;

    neg-int v5, v1

    neg-int v6, v0

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_44
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1b

    move v0, v2

    goto :goto_1b

    :cond_4a
    move v0, v1

    goto :goto_1b
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->a()V

    return-void
.end method
