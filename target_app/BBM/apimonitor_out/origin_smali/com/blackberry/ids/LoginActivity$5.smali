.class Lcom/blackberry/ids/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/LoginActivity;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v0, 0x0

    const/high16 v10, 0x4264

    const/high16 v9, 0x4000

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v2}, Lcom/blackberry/ids/LoginActivity;->e(Lcom/blackberry/ids/LoginActivity;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :cond_28
    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v2}, Lcom/blackberry/ids/LoginActivity;->b(Lcom/blackberry/ids/LoginActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v2}, Lcom/blackberry/ids/LoginActivity;->b(Lcom/blackberry/ids/LoginActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v1}, Lcom/blackberry/ids/LoginActivity;->c(Lcom/blackberry/ids/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v1}, Lcom/blackberry/ids/LoginActivity;->c(Lcom/blackberry/ids/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4d
    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v1}, Lcom/blackberry/ids/LoginActivity;->e(Lcom/blackberry/ids/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_105

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-virtual {v1}, Lcom/blackberry/ids/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v1, v1, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    const/high16 v2, 0x4248

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    div-float v3, v1, v9

    iget-object v7, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-virtual {v7}, Lcom/blackberry/ids/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v7

    if-eq v7, v5, :cond_91

    const/4 v8, 0x2

    if-ne v7, v8, :cond_92

    :cond_91
    move v0, v5

    :cond_92
    if-eqz v0, :cond_106

    mul-float v0, v4, v9

    neg-float v0, v0

    iget-object v7, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v7, v7, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getX()F

    move-result v7

    const/high16 v8, 0x4140

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v8, v4, v10

    add-float/2addr v7, v8

    neg-float v3, v3

    neg-float v1, v1

    invoke-virtual {v2, v0, v3, v7, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_ab
    new-instance v9, Lcom/blackberry/ids/WebActivity$PathAnimation;

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    const-wide/16 v7, 0x1f4

    invoke-direct {v9, v0, v2, v7, v8}, Lcom/blackberry/ids/WebActivity$PathAnimation;-><init>(Lcom/blackberry/ids/WebActivity;Landroid/graphics/Path;J)V

    invoke-virtual {v9, v5}, Lcom/blackberry/ids/WebActivity$PathAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v0, v0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v0, v0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleY()F

    move-result v3

    mul-float v0, v4, v10

    iget-object v2, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v2, v2, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    mul-float v0, v4, v10

    iget-object v4, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v4, v4, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v0, v4

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v0, v0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_105
    return-void

    :cond_106
    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$5;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v0, v0, Lcom/blackberry/ids/LoginActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    const/high16 v7, 0x4140

    mul-float/2addr v7, v4

    sub-float/2addr v0, v7

    mul-float v7, v4, v9

    neg-float v3, v3

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v7, v3, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_ab
.end method
