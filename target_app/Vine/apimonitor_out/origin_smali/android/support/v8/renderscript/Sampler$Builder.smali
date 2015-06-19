.class public Landroid/support/v8/renderscript/Sampler$Builder;
.super Ljava/lang/Object;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/support/v8/renderscript/Sampler$Value;

.field mMin:Landroid/support/v8/renderscript/Sampler$Value;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapT:Landroid/support/v8/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    return-void
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Sampler;
    .registers 12

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_2d

    iget-object v9, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    check-cast v9, Landroid/support/v8/renderscript/RenderScriptThunker;

    new-instance v7, Landroid/support/v8/renderscript/SamplerThunker$Builder;

    invoke-direct {v7, v9}, Landroid/support/v8/renderscript/SamplerThunker$Builder;-><init>(Landroid/support/v8/renderscript/RenderScriptThunker;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/SamplerThunker$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/SamplerThunker$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/SamplerThunker$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/SamplerThunker$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    iget v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/SamplerThunker$Builder;->setAnisotropy(F)V

    invoke-virtual {v7}, Landroid/support/v8/renderscript/SamplerThunker$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v10

    :goto_2c
    return-object v10

    :cond_2d
    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    iget v1, v1, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    iget v2, v2, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    iget v3, v3, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    iget-object v4, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    iget v4, v4, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    iget-object v5, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    iget v5, v5, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    iget v6, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nSamplerCreate(IIIIIF)I

    move-result v8

    new-instance v10, Landroid/support/v8/renderscript/Sampler;

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v10, v8, v0}, Landroid/support/v8/renderscript/Sampler;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, v10, Landroid/support/v8/renderscript/Sampler;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, v10, Landroid/support/v8/renderscript/Sampler;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, v10, Landroid/support/v8/renderscript/Sampler;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, v10, Landroid/support/v8/renderscript/Sampler;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    iput-object v0, v10, Landroid/support/v8/renderscript/Sampler;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

    iget v0, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    iput v0, v10, Landroid/support/v8/renderscript/Sampler;->mAniso:F

    goto :goto_2c
.end method

.method public setAnisotropy(F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    iput p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mAniso:F

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V
    .registers 4

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_8

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_b

    :cond_8
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V
    .registers 4

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_13

    :cond_10
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V
    .registers 4

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_c

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_c

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_f

    :cond_c
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V
    .registers 4

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_c

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_c

    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_f

    :cond_c
    iput-object p1, p0, Landroid/support/v8/renderscript/Sampler$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
