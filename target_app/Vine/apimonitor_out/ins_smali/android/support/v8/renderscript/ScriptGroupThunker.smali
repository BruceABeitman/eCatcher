.class  Landroid/support/v8/renderscript/ScriptGroupThunker;
.super Landroid/support/v8/renderscript/ScriptGroup;
.source "ScriptGroupThunker.java"
.field  mN:Landroid/renderscript/ScriptGroup;
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V
return-void
.end method
.method public execute()V
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;
invoke-virtual {v0}, Landroid/renderscript/ScriptGroup;->execute()V
return-void
.end method
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroupThunker;->getNObj()Landroid/renderscript/ScriptGroup;
move-result-object v0
return-object v0
.end method
.method  getNObj()Landroid/renderscript/ScriptGroup;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;
return-object v0
.end method
.method public setInput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
.registers 7
move-object v0, p2
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;
iget-object v2, p1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/renderscript/ScriptGroup;->setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
return-void
.end method
.method public setOutput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
.registers 7
move-object v0, p2
check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;
iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;
iget-object v2, p1, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/renderscript/ScriptGroup;->setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
return-void
.end method