.class public Lco/vine/android/widget/TooltipOverlayView;
.super Landroid/widget/FrameLayout;
.source "TooltipOverlayView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 10

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lco/vine/android/widget/TooltipOverlayView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lco/vine/android/widget/TooltipOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, p0}, Lco/vine/android/widget/TooltipOverlayView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Lco/vine/android/widget/TooltipOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lco/vine/android/widget/TooltipOverlayView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f03009c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f090083

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    iput-object v3, p0, Lco/vine/android/widget/TooltipOverlayView;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/view/View;

    iget-object v5, p0, Lco/vine/android/widget/TooltipOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, 0x7f090015

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lco/vine/android/widget/TooltipOverlayView;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lco/vine/android/widget/TooltipOverlayView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lco/vine/android/widget/TooltipOverlayView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 10

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lco/vine/android/widget/TooltipOverlayView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/widget/TooltipOverlayView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lco/vine/android/widget/TooltipOverlayView;->mTop:I

    invoke-virtual {p0}, Lco/vine/android/widget/TooltipOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    :cond_1b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/widget/TooltipOverlayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_22

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lco/vine/android/widget/TooltipOverlayView$2;

    invoke-direct {v1, p0}, Lco/vine/android/widget/TooltipOverlayView$2;-><init>(Lco/vine/android/widget/TooltipOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lco/vine/android/widget/TooltipOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method public showTooltip(I)V
    .registers 6

    iput p1, p0, Lco/vine/android/widget/TooltipOverlayView;->mTop:I

    iget-object v2, p0, Lco/vine/android/widget/TooltipOverlayView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lco/vine/android/widget/TooltipOverlayView;->requestLayout()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v2, Lco/vine/android/widget/TooltipOverlayView$1;

    invoke-direct {v2, p0}, Lco/vine/android/widget/TooltipOverlayView$1;-><init>(Lco/vine/android/widget/TooltipOverlayView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lco/vine/android/widget/TooltipOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
