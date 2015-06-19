.class  Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
.source "ScriptIntrinsicBlurThunker.java"
.field  mN:Landroid/renderscript/ScriptIntrinsicBlur;
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
return-void
.end method
.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;
.registers 7
move-object v2, p0
check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;
move-object v1, p1
check-cast v1, Landroid/support/v8/renderscript/ElementThunker;
new-instance v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;
const/4 v3, 0x0
invoke-direct {v0, v3, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
iget-object v3, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v1}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;
move-result-object v4
invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;
move-result-object v3
iput-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
return-object v0
.end method
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
.registers 5
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
if-eqz v0, :cond_e
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V
:cond_e
return-void
.end method
.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;
move-result-object v0
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->getFieldID_Input()Landroid/renderscript/Script$FieldID;
move-result-object v1
iput-object v1, v0, Landroid/support/v8/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;
return-object v0
.end method
.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
.registers 5
const/4 v3, 0x0
const/4 v1, 0x0
const/4 v2, 0x2
invoke-virtual {p0, v1, v2, v3, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
move-result-object v0
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->getKernelID()Landroid/renderscript/Script$KernelID;
move-result-object v1
iput-object v1, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlur;
move-result-object v0
return-object v0
.end method
.method bridge synthetic getNObj()Landroid/renderscript/Script;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlur;
move-result-object v0
return-object v0
.end method
.method  getNObj()Landroid/renderscript/ScriptIntrinsicBlur;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
return-object v0
.end method
.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
.registers 5
move-object v0, p1
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V
return-void
.end method
.method public setRadius(F)V
.registers 3
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V
return-void
.end method