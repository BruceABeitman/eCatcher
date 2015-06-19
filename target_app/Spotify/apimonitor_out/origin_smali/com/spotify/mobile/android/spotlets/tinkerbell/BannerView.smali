.class public Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/Button;

.field private e:F

.field private f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0219

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->b:Landroid/widget/TextView;

    const v0, 0x7f0a033a

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->d:Landroid/widget/Button;

    const v0, 0x7f0a0223

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(ZLandroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0, v3, v0, v3, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->d:Landroid/widget/Button;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->c:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$2;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;F)F
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->e:F

    return p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    return-object v0
.end method

.method private a(ZLandroid/view/animation/Animation;)V
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_25

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_1f

    if-eqz p1, :cond_23

    move v0, v1

    :goto_17
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1f

    invoke-virtual {v4, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_23
    const/4 v0, 0x4

    goto :goto_17

    :cond_25
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const-string v0, "Hiding item: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_52

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$3;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$3;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-direct {p0, v3, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(ZLandroid/view/animation/Animation;)V

    goto :goto_5

    nop

    :array_52
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    const/4 v4, 0x1

    instance-of v0, p1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;

    if-eqz v0, :cond_53

    check-cast p1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;

    const-string v0, "Restoring, current item: %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    if-eqz v1, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->b:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->d:Landroid/widget/Button;

    iget-object v0, v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x8

    :goto_38
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->d:Landroid/widget/Button;

    iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->e:I

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->setBackgroundColor(I)V

    :cond_47
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    if-eqz v0, :cond_53

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->e:F

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(ZLandroid/view/animation/Animation;)V

    :cond_53
    return-void

    :cond_54
    const/4 v0, 0x4

    goto :goto_38
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->f:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$SavedState;-><init>(Landroid/os/Parcelable;Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;)V

    return-object v0
.end method
