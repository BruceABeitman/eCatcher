.class  Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
.source "ScriptIntrinsicColorMatrixThunker.java"
.field  mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
.method private constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
return-void
.end method
.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;
.registers 7
move-object v2, p0
check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;
move-object v1, p1
check-cast v1, Landroid/support/v8/renderscript/ElementThunker;
new-instance v0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;
const/4 v3, 0x0
invoke-direct {v0, v3, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;
move-result-object v4
invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
move-result-object v3
iput-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
return-object v0
.end method
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
.registers 8
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
move-object v1, p2
check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v3
invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
return-void
.end method
.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
.registers 5
const/4 v3, 0x0
const/4 v1, 0x0
const/4 v2, 0x3
invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
move-result-object v0
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->getKernelID()Landroid/renderscript/Script$KernelID;
move-result-object v1
iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicColorMatrix;
move-result-object v0
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/Script;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicColorMatrix;
move-result-object v0
return-object v0
.end method
.method  getNObj()Landroid/renderscript/ScriptIntrinsicColorMatrix;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
return-object v0
.end method
.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
new-instance v1, Landroid/renderscript/Matrix3f;
invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F
move-result-object v2
invoke-direct {v1, v2}, Landroid/renderscript/Matrix3f;-><init>([F)V
invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setColorMatrix(Landroid/renderscript/Matrix3f;)V
return-void
.end method
.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
.registers 5
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
new-instance v1, Landroid/renderscript/Matrix4f;
invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix4f;->getArray()[F
move-result-object v2
invoke-direct {v1, v2}, Landroid/renderscript/Matrix4f;-><init>([F)V
invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setColorMatrix(Landroid/renderscript/Matrix4f;)V
return-void
.end method
.method public setGreyscale()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setGreyscale()V
return-void
.end method
.method public setRGBtoYUV()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setRGBtoYUV()V
return-void
.end method
.method public setYUVtoRGB()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrixThunker;->mN:Landroid/renderscript/ScriptIntrinsicColorMatrix;
invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setYUVtoRGB()V
return-void
.end method