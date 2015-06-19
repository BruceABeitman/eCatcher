.class public Landroid/support/v8/renderscript/SamplerThunker$Builder;
.super Ljava/lang/Object;
.source "SamplerThunker.java"
.field  mAniso:F
.field  mMag:Landroid/support/v8/renderscript/Sampler$Value;
.field  mMin:Landroid/support/v8/renderscript/Sampler$Value;
.field  mRS:Landroid/support/v8/renderscript/RenderScriptThunker;
.field  mWrapR:Landroid/support/v8/renderscript/Sampler$Value;
.field  mWrapS:Landroid/support/v8/renderscript/Sampler$Value;
.field  mWrapT:Landroid/support/v8/renderscript/Sampler$Value;
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScriptThunker;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;
sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;
sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;
sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;
sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;
sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v0, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;
return-void
.end method
.method public create()Landroid/support/v8/renderscript/Sampler;
.registers 6
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScriptThunker;->validate()V
new-instance v0, Landroid/renderscript/Sampler$Builder;
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;
iget-object v3, v3, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-direct {v0, v3}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;
invoke-static {v3}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;
invoke-static {v3}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;
invoke-static {v3}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;
invoke-static {v3}, Landroid/support/v8/renderscript/SamplerThunker;->convertValue(Landroid/support/v8/renderscript/Sampler$Value;)Landroid/renderscript/Sampler$Value;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V
iget v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mAniso:F
invoke-virtual {v0, v3}, Landroid/renderscript/Sampler$Builder;->setAnisotropy(F)V
invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;
move-result-object v1
new-instance v2, Landroid/support/v8/renderscript/SamplerThunker;
const/4 v3, 0x0
iget-object v4, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mRS:Landroid/support/v8/renderscript/RenderScriptThunker;
invoke-direct {v2, v3, v4}, Landroid/support/v8/renderscript/SamplerThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v3, v2, Landroid/support/v8/renderscript/SamplerThunker;->mMin:Landroid/support/v8/renderscript/Sampler$Value;
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v3, v2, Landroid/support/v8/renderscript/SamplerThunker;->mMag:Landroid/support/v8/renderscript/Sampler$Value;
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v3, v2, Landroid/support/v8/renderscript/SamplerThunker;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v3, v2, Landroid/support/v8/renderscript/SamplerThunker;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;
iget-object v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;
iput-object v3, v2, Landroid/support/v8/renderscript/SamplerThunker;->mWrapR:Landroid/support/v8/renderscript/Sampler$Value;
iget v3, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mAniso:F
iput v3, v2, Landroid/support/v8/renderscript/SamplerThunker;->mAniso:F
iput-object v1, v2, Landroid/support/v8/renderscript/SamplerThunker;->mN:Landroid/renderscript/Sampler;
return-object v2
.end method
.method public setAnisotropy(F)V
.registers 4
const/4 v0, 0x0
cmpl-float v0, p1, v0
if-ltz v0, :cond_8
iput p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mAniso:F
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
iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMag:Landroid/support/v8/renderscript/Sampler$Value;
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
iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mMin:Landroid/support/v8/renderscript/Sampler$Value;
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
iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapS:Landroid/support/v8/renderscript/Sampler$Value;
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
iput-object p1, p0, Landroid/support/v8/renderscript/SamplerThunker$Builder;->mWrapT:Landroid/support/v8/renderscript/Sampler$Value;
return-void
:cond_f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Invalid value"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method