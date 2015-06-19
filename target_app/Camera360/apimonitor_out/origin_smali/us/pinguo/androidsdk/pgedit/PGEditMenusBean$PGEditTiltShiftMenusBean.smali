.class public Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.source "PGEditMenusBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditTiltShiftMenusBean"
.end annotation


# instance fields
.field private centerX:F

.field private centerY:F

.field private degree:F

.field private maxStand:F

.field private maxStep:F

.field private minStand:F

.field private minStep:F

.field private round:F

.field private stand:F

.field private step:F

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCenterX()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerY:F

    return v0
.end method

.method public getDegree()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->degree:F

    return v0
.end method

.method public getEffectValue()Ljava/lang/String;
    .registers 11

    const/high16 v9, 0x4000

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->effect:Ljava/lang/Enum;

    sget-object v6, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->roundTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v5, v6, :cond_64

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStand:F

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    sub-float v2, v5, v6

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->effectValue:Ljava/lang/String;

    const-string/jumbo v6, "\\?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerX:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->round:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->step:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\\?"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_63
    return-object v3

    :cond_64
    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->effect:Ljava/lang/Enum;

    sget-object v6, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->verticalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-eq v5, v6, :cond_70

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->effect:Ljava/lang/Enum;

    sget-object v6, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->horizontalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v5, v6, :cond_e2

    :cond_70
    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStand:F

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    sub-float v2, v5, v6

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->effectValue:Ljava/lang/String;

    const-string/jumbo v6, "\\?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerX:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\\?"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->degree:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->width:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->step:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "\\?"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    :cond_e2
    const/4 v3, 0x0

    goto :goto_63
.end method

.method public getMaxStand()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStand:F

    return v0
.end method

.method public getMaxStep()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStep:F

    return v0
.end method

.method public getMinStand()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    return v0
.end method

.method public getMinStep()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStep:F

    return v0
.end method

.method public getRound()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->round:F

    return v0
.end method

.method public getStand()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    return v0
.end method

.method public getStep()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->step:F

    return v0
.end method

.method public getTiltShiftRangeForSeekBar()I
    .registers 5

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->step:F

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStep:F

    sub-float/2addr v1, v2

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStep:F

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStep:F

    sub-float/2addr v2, v3

    div-float v0, v1, v2

    const/high16 v1, 0x42c8

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getTiltShiftStrengthForSeekBar()I
    .registers 5

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    sub-float/2addr v1, v2

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStand:F

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    sub-float/2addr v2, v3

    div-float v0, v1, v2

    const/high16 v1, 0x42c8

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getWidth()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->width:F

    return v0
.end method

.method public setCenterX(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerX:F

    return-void
.end method

.method public setCenterY(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->centerY:F

    return-void
.end method

.method public setDegree(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->degree:F

    return-void
.end method

.method public setMaxStand(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStand:F

    return-void
.end method

.method public setMaxStep(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStep:F

    return-void
.end method

.method public setMinStand(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    return-void
.end method

.method public setMinStep(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStep:F

    return-void
.end method

.method public setRound(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->round:F

    return-void
.end method

.method public setStand(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    return-void
.end method

.method public setStep(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->step:F

    return-void
.end method

.method public setTiltShiftRangeWithSeekBar(F)V
    .registers 4

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStep:F

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStep:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStep:F

    add-float/2addr v0, v1

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->step:F

    return-void
.end method

.method public setTiltShiftStrengthWithSeekBar(F)V
    .registers 4

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->maxStand:F

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->minStand:F

    add-float/2addr v0, v1

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->stand:F

    return-void
.end method

.method public setWidth(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->width:F

    return-void
.end method
