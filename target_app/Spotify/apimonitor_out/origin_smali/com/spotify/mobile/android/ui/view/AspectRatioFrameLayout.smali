.class public Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->b:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->b:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->c:Z

    sget-object v1, Lcom/spotify/music/d;->k:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    :goto_16
    if-ge v0, v2, :cond_3d

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_42

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :pswitch_22
    iget v4, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    goto :goto_1f

    :pswitch_2b
    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->b:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->b:Z

    goto :goto_1f

    :pswitch_34
    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->c:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->c:Z

    goto :goto_1f

    :cond_3d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2b
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 9

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->getDefaultSize(II)I

    move-result v0

    if-nez v1, :cond_22

    if-nez v0, :cond_22

    const-string v0, "With both width and height set to zero, it is impossible to calculate and enforce aspect ratio."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_21
    return-void

    :cond_22
    if-nez v1, :cond_38

    int-to-float v1, v0

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_2c
    :goto_2c
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_21

    :cond_38
    if-nez v0, :cond_43

    int-to-float v0, v1

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2c

    :cond_43
    iget v2, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_59

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->c:Z

    if-nez v2, :cond_2c

    int-to-float v0, v1

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2c

    :cond_59
    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->b:Z

    if-nez v2, :cond_2c

    int-to-float v1, v0

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/AspectRatioFrameLayout;->a:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2c
.end method
