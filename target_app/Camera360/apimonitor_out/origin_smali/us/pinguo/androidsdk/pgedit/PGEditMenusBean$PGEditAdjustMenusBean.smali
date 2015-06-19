.class public Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.source "PGEditMenusBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditAdjustMenusBean"
.end annotation


# instance fields
.field private childEffect:Ljava/lang/String;

.field private defaultRate:F

.field private max:F

.field private min:F

.field private rate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAdjustForSeekBar()I
    .registers 3

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->rate:F

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getChildEffect()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->childEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultRate()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->defaultRate:F

    return v0
.end method

.method public getMax()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->max:F

    return v0
.end method

.method public getMin()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->min:F

    return v0
.end method

.method public getParams()Ljava/lang/String;
    .registers 5

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->min:F

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->max:F

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->min:F

    sub-float/2addr v2, v3

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->rate:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->effectValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRate()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->rate:F

    return v0
.end method

.method public setDefaultRate(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->defaultRate:F

    return-void
.end method

.method public setEffect(Ljava/lang/Enum;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->effect:Ljava/lang/Enum;

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->sharpen:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne p1, v0, :cond_c

    const-string/jumbo v0, "FastSharpen"

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->childEffect:Ljava/lang/String;

    :goto_b
    return-void

    :cond_c
    const-string/jumbo v0, "AdvanceAdjust"

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->childEffect:Ljava/lang/String;

    goto :goto_b
.end method

.method public setEffectValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->effectValue:Ljava/lang/String;

    return-void
.end method

.method public setMax(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->max:F

    return-void
.end method

.method public setMin(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->min:F

    return-void
.end method

.method public setRate(F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->rate:F

    return-void
.end method
