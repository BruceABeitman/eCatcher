.class public Landroid/support/v8/renderscript/Sampler;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Sampler$Builder;,
        Landroid/support/v8/renderscript/Sampler$Value;
    }
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/support/v8/renderscript/Sampler$Value;

.field mMin:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapR:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

.field mWrapT:Landroid/support/v8/renderscript/Sampler$Value;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    return-void
.end method

.method public static CLAMP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method

.method public static CLAMP_LINEAR_MIP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method

.method public static CLAMP_NEAREST(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method

.method public static MIRRORED_REPEAT_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method

.method public static MIRRORED_REPEAT_NEAREST(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method

.method public static WRAP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method

.method public static WRAP_LINEAR_MIP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method

.method public static WRAP_NEAREST(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;
    .registers 3

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    if-nez v1, :cond_23

    new-instance v0, Landroid/support/v8/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/Sampler$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMinification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setMagnification(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapS(Landroid/support/v8/renderscript/Sampler$Value;)V

    sget-object v1, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Sampler$Builder;->setWrapT(Landroid/support/v8/renderscript/Sampler$Value;)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Sampler$Builder;->create()Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    :cond_23
    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;

    return-object v1
.end method


# virtual methods
.method public getAnisotropy()F
    .registers 2

    iget v0, p0, Landroid/support/v8/renderscript/Sampler;->mAniso:F

    return v0
.end method

.method public getMagnification()Landroid/support/v8/renderscript/Sampler$Value;
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler;->mMag:Landroid/support/v8/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getMinification()Landroid/support/v8/renderscript/Sampler$Value;
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler;->mMin:Landroid/support/v8/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapS()Landroid/support/v8/renderscript/Sampler$Value;
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapT()Landroid/support/v8/renderscript/Sampler$Value;
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/Sampler;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;

    return-object v0
.end method
