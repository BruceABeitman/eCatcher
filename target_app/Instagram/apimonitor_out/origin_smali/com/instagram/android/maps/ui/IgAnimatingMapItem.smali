.class public Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
.super Landroid/widget/FrameLayout;
.source "IgAnimatingMapItem.java"


# static fields
.field public static final a:Lcom/instagram/android/b/b;

.field public static f:I


# instance fields
.field protected b:Landroid/view/animation/AnimationSet;

.field public c:Lcom/instagram/android/maps/ui/d;

.field public d:Lcom/instagram/android/maps/ui/f;

.field public e:Lcom/instagram/android/maps/ui/e;

.field private g:I

.field private h:I

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Lcom/instagram/ui/a/a;

.field private m:Lcom/instagram/android/maps/ui/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/android/b/b;

    invoke-direct {v0}, Lcom/instagram/android/b/b;-><init>()V

    sput-object v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a:Lcom/instagram/android/b/b;

    const/4 v0, 0x0

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    invoke-direct {p0, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    invoke-direct {p0, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->IgAnimatingMapItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->IgAnimatingMapItem_scale:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 10

    const-wide/16 v7, 0x12c

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/instagram/android/b/a;

    iget v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->g:I

    iget v2, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->g:I

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/b/a;-><init>(II)V

    invoke-virtual {v0, v7, v8}, Lcom/instagram/android/b/a;->setDuration(J)V

    invoke-virtual {v0, v5, v6}, Lcom/instagram/android/b/a;->setStartOffset(J)V

    invoke-virtual {v0, v4}, Lcom/instagram/android/b/a;->setFillBefore(Z)V

    invoke-virtual {v0, v4}, Lcom/instagram/android/b/a;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_2f
    new-instance v0, Lcom/instagram/ui/a/a;

    iget v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->i:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/a/a;-><init>(FFF)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/ui/a/a;->setDuration(J)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v5, v6}, Lcom/instagram/ui/a/a;->setStartOffset(J)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v4}, Lcom/instagram/ui/a/a;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v4}, Lcom/instagram/ui/a/a;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/instagram/android/maps/ui/a;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/a;-><init>(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Landroid/view/animation/AnimationSet;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final a(II)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getLeft()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/a/a;->a(F)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->maps_translate_animation_back_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/a/a;->b(F)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b()V

    return-void
.end method

.method protected a(Landroid/view/animation/AnimationSet;)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->reset()V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    sget-object v1, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a:Lcom/instagram/android/b/b;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "draw %s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return v0

    :cond_b
    const-string v1, "drawChild %s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getBottom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_a
.end method

.method protected onAnimationEnd()V
    .registers 2

    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->m:Lcom/instagram/android/maps/ui/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->m:Lcom/instagram/android/maps/ui/d;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/d;->a()V

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->c:Lcom/instagram/android/maps/ui/d;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->c:Lcom/instagram/android/maps/ui/d;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/d;->a()V

    :cond_1c
    const-string v0, "ANIMATING_STOPPING"

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    return-void
.end method

.method protected onAnimationStart()V
    .registers 2

    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->d:Lcom/instagram/android/maps/ui/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->d:Lcom/instagram/android/maps/ui/f;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/f;->a()V

    :cond_f
    const-string v0, "ANIMATING"

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationStart()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const-string v0, "onLayout %s %s %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    if-gtz v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->m:Lcom/instagram/android/maps/ui/d;

    return-void
.end method

.method public setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->d:Lcom/instagram/android/maps/ui/f;

    return-void
.end method

.method public setOriginalSize(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->g:I

    return-void
.end method

.method public setReverseAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->c:Lcom/instagram/android/maps/ui/d;

    return-void
.end method

.method public setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->e:Lcom/instagram/android/maps/ui/e;

    return-void
.end method

.method public setStartX(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->h:I

    return-void
.end method

.method public setStartY(F)V
    .registers 2

    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->i:F

    return-void
.end method
