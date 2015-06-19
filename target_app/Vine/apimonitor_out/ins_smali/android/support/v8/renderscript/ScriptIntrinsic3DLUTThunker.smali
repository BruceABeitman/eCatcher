.class  Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;
.source "ScriptIntrinsic3DLUTThunker.java"
.field  mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
.method private constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUT;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
return-void
.end method
.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;
.registers 7
move-object v2, p0
check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/ElementThunker;
new-instance v1, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;
const/4 v3, 0x0
invoke-direct {v1, v3, p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v0}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;
move-result-object v4
invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsic3DLUT;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;
move-result-object v3
iput-object v3, v1, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
return-object v1
.end method
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
.registers 8
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
move-object v1, p2
check-cast v1, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v3
invoke-virtual {v1}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
return-void
.end method
.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
.registers 5
const/4 v3, 0x0
const/4 v1, 0x0
const/4 v2, 0x3
invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
move-result-object v0
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->getKernelID()Landroid/renderscript/Script$KernelID;
move-result-object v1
iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;
move-result-object v0
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/Script;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;
move-result-object v0
return-object v0
.end method
.method  getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
return-object v0
.end method
.method public setLUT(Landroid/support/v8/renderscript/Allocation;)V
.registers 5
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setLUT(Landroid/renderscript/Allocation;)V
return-void
.end method