.class public final Lcom/instagram/creation/video/ui/a;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:Landroid/view/animation/Interpolator;

.field private d:I

.field private e:J

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/a;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/a;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/a;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(F)F
    .registers 7

    const/high16 v4, 0x4000

    const/high16 v2, 0x3f00

    const v3, 0x3e4ccccd

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_18

    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/instagram/creation/video/ui/a;->a:Landroid/view/animation/Interpolator;

    mul-float v2, p1, v4

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    :goto_17
    return v0

    :cond_18
    const v0, 0x3f4ccccd

    iget-object v1, p0, Lcom/instagram/creation/video/ui/a;->b:Landroid/view/animation/Interpolator;

    sub-float v2, p1, v2

    mul-float/2addr v2, v4

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_17
.end method


# virtual methods
.method public final a(Lcom/instagram/creation/video/gl/c;Lcom/instagram/creation/video/a/a;Lcom/instagram/creation/video/gl/x;)Z
    .registers 16

    const/high16 v4, 0x442f

    const/high16 v11, 0x4000

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/creation/video/ui/a;->e:J

    sub-long/2addr v0, v2

    long-to-float v2, v0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    long-to-float v0, v0

    div-float v8, v0, v4

    invoke-direct {p0, v8}, Lcom/instagram/creation/video/ui/a;->a(F)F

    move-result v6

    iget v1, p0, Lcom/instagram/creation/video/ui/a;->f:F

    iget v0, p0, Lcom/instagram/creation/video/ui/a;->g:F

    iget v2, p0, Lcom/instagram/creation/video/ui/a;->d:I

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/instagram/creation/video/ui/a;->d:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_6c

    :cond_27
    iget v1, p0, Lcom/instagram/creation/video/ui/a;->f:F

    iget v2, p0, Lcom/instagram/creation/video/ui/a;->h:F

    iget-object v3, p0, Lcom/instagram/creation/video/ui/a;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    :goto_33
    iget v2, p0, Lcom/instagram/creation/video/ui/a;->j:I

    int-to-float v2, v2

    mul-float v9, v2, v6

    iget v2, p0, Lcom/instagram/creation/video/ui/a;->i:I

    int-to-float v2, v2

    mul-float v10, v2, v6

    float-to-int v5, v1

    float-to-int v4, v0

    float-to-int v3, v1

    float-to-int v2, v0

    iget v7, p0, Lcom/instagram/creation/video/ui/a;->d:I

    sparse-switch v7, :sswitch_data_ee

    move v6, v2

    move v7, v3

    move v3, v4

    move v2, v5

    :goto_4a
    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->a()F

    move-result v11

    invoke-interface {p1, v8}, Lcom/instagram/creation/video/gl/c;->a(F)V

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/creation/video/a/a;->a(Lcom/instagram/creation/video/gl/c;IIII)V

    invoke-interface {p1, v11}, Lcom/instagram/creation/video/gl/c;->a(F)V

    float-to-int v4, v10

    float-to-int v5, v9

    move-object v0, p3

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/creation/video/gl/x;->a(Lcom/instagram/creation/video/gl/c;IIII)V

    const/4 v0, 0x1

    goto :goto_11

    :cond_6c
    iget v0, p0, Lcom/instagram/creation/video/ui/a;->g:F

    iget v2, p0, Lcom/instagram/creation/video/ui/a;->h:F

    iget-object v3, p0, Lcom/instagram/creation/video/ui/a;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_33

    :sswitch_79
    sub-float v2, v1, v10

    iget v3, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-float v3, v9, v11

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v6, v0

    move v7, v1

    move v3, v0

    goto :goto_4a

    :sswitch_96
    iget v2, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v2, v6

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-float v2, v10, v11

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-float/2addr v0, v9

    iget v2, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v6, v0

    move v7, v1

    move v2, v1

    goto :goto_4a

    :sswitch_b2
    add-float v2, v1, v10

    iget v3, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-float v3, v9, v11

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v6, v0

    move v7, v1

    move v3, v0

    goto/16 :goto_4a

    :sswitch_d0
    sub-float v2, v0, v9

    iget v3, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-float v2, v10, v11

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/instagram/creation/video/ui/a;->k:F

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v6, v0

    move v7, v1

    move v2, v1

    goto/16 :goto_4a

    :sswitch_data_ee
    .sparse-switch
        0x0 -> :sswitch_79
        0x5a -> :sswitch_96
        0xb4 -> :sswitch_b2
        0x10e -> :sswitch_d0
    .end sparse-switch
.end method
