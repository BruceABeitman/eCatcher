.class public Lcom/umeng/newxp/common/f;
.super Landroid/view/animation/Animation;
.source "Rotate3D.java"


# instance fields
.field private final a:F

.field private final b:F

.field private c:F

.field private d:F

.field private e:Landroid/graphics/Camera;

.field private f:Z

.field private g:Z

.field private final h:F


# direct methods
.method public constructor <init>(FFFFZZ)V
    .registers 8

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/umeng/newxp/common/f;->h:F

    iput p1, p0, Lcom/umeng/newxp/common/f;->a:F

    iput p2, p0, Lcom/umeng/newxp/common/f;->b:F

    iput p3, p0, Lcom/umeng/newxp/common/f;->c:F

    iput p4, p0, Lcom/umeng/newxp/common/f;->d:F

    iput-boolean p5, p0, Lcom/umeng/newxp/common/f;->f:Z

    iput-boolean p6, p0, Lcom/umeng/newxp/common/f;->g:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 11

    const/high16 v7, 0x42c8

    const/4 v6, 0x0

    iget v0, p0, Lcom/umeng/newxp/common/f;->a:F

    iget v1, p0, Lcom/umeng/newxp/common/f;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/umeng/newxp/common/f;->c:F

    iget v2, p0, Lcom/umeng/newxp/common/f;->d:F

    iget-object v3, p0, Lcom/umeng/newxp/common/f;->e:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-boolean v5, p0, Lcom/umeng/newxp/common/f;->f:Z

    if-eqz v5, :cond_38

    const/high16 v5, 0x3f80

    sub-float/2addr v5, p1

    mul-float/2addr v5, v7

    invoke-virtual {v3, v6, v6, v5}, Landroid/graphics/Camera;->translate(FFF)V

    :goto_22
    iget-boolean v5, p0, Lcom/umeng/newxp/common/f;->g:Z

    if-eqz v5, :cond_3e

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    :goto_29
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_38
    mul-float v5, v7, p1

    invoke-virtual {v3, v6, v6, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_22

    :cond_3e
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_29
.end method

.method public initialize(IIII)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/common/f;->e:Landroid/graphics/Camera;

    iget-boolean v0, p0, Lcom/umeng/newxp/common/f;->f:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/umeng/newxp/common/f;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    invoke-virtual {p0}, Lcom/umeng/newxp/common/f;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/newxp/common/f;->setStartOffset(J)V

    :cond_1f
    return-void
.end method
