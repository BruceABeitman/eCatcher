.class public Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;
.super Landroid/widget/ImageView;
.source "SpinnerImageView.java"


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->rotate_spinner:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->clearAnimation()V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_18

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_18

    if-nez p2, :cond_19

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->clearAnimation()V

    goto :goto_18
.end method
